From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun  7 05:26:00 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l579PxhB000417
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 05:26:00 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A62BB16388F
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  7 Jun 2007 09:25:53 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id DD91E162AD4; Thu,  7 Jun 2007 09:25:26 +0000 (GMT)
Date: Thu, 07 Jun 2007 19:17:27 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070607092526.DD91E162AD4@lists.samba.org>
Subject: Rev 497: choose the most connected node first in
	http://samba.org/~tridge/ctdb
X-BeenThere: samba-cvs@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: samba-technical@lists.samba.org
List-Id: Samba CVS and subversion commit messages <samba-cvs.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-cvs>
List-Post: <mailto:samba-cvs@lists.samba.org>
List-Help: <mailto:samba-cvs-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=subscribe>
Sender: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

------------------------------------------------------------
revno: 497
revision-id: tridge@samba.org-20070607091727-nyesysrrvcjrbgf3
parent: tridge@samba.org-20070607083937-cr7d8z9lf4cyxckz
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Thu 2007-06-07 19:17:27 +1000
message:
  choose the most connected node first
modified:
  common/ctdb_recoverd.c         recoverd.c-20070503213540-bvxuyd9jm1f7ig90-1
=== modified file 'common/ctdb_recoverd.c'
--- a/common/ctdb_recoverd.c	2007-06-07 08:39:37 +0000
+++ b/common/ctdb_recoverd.c	2007-06-07 09:17:27 +0000
@@ -790,11 +790,67 @@
 }
 
 
+/*
+  elections are won by first checking the number of connected nodes, then
+  the priority time, then the vnn
+ */
 struct election_message {
+	uint32_t num_connected;
+	struct timeval priority_time;
 	uint32_t vnn;
-	struct timeval priority_time;
 };
 
+/*
+  form this nodes election data
+ */
+static void ctdb_election_data(struct ctdb_recoverd *rec, struct election_message *em)
+{
+	int ret, i;
+	struct ctdb_node_map *nodemap;
+	struct ctdb_context *ctdb = rec->ctdb;
+
+	ZERO_STRUCTP(em);
+
+	em->vnn = rec->ctdb->vnn;
+	em->priority_time = rec->priority_time;
+
+	ret = ctdb_ctrl_getnodemap(ctdb, CONTROL_TIMEOUT(), CTDB_CURRENT_NODE, rec, &nodemap);
+	if (ret != 0) {
+		return;
+	}
+
+	for (i=0;i<nodemap->num;i++) {
+		if (!(nodemap->nodes[i].flags & NODE_FLAGS_DISCONNECTED)) {
+			em->num_connected++;
+		}
+	}
+	talloc_free(nodemap);
+}
+
+/*
+  see if the given election data wins
+ */
+static bool ctdb_election_win(struct ctdb_recoverd *rec, struct election_message *em)
+{
+	struct election_message myem;
+	int cmp;
+
+	ctdb_election_data(rec, &myem);
+
+	/* try to use the most connected node */
+	cmp = (int)myem.num_connected - (int)em->num_connected;
+
+	/* then the longest running node */
+	if (cmp == 0) {
+		cmp = timeval_compare(&myem.priority_time, &em->priority_time);
+	}
+
+	if (cmp == 0) {
+		cmp = (int)myem.vnn - (int)em->vnn;
+	}
+
+	return cmp > 0;
+}
 
 /*
   send out an election request
@@ -809,8 +865,7 @@
 	
 	srvid = CTDB_SRVID_RECOVERY;
 
-	emsg.vnn = vnn;
-	emsg.priority_time = rec->priority_time;
+	ctdb_election_data(rec, &emsg);
 
 	election_data.dsize = sizeof(struct election_message);
 	election_data.dptr  = (unsigned char *)&emsg;
@@ -821,7 +876,7 @@
 	 */
 	ret = ctdb_ctrl_setrecmaster(ctdb, CONTROL_TIMEOUT(), vnn, vnn);
 	if (ret != 0) {
-		DEBUG(0, (__location__ " failed to send recmaster election request"));
+		DEBUG(0, (__location__ " failed to send recmaster election request\n"));
 		return -1;
 	}
 
@@ -843,16 +898,14 @@
 	int ret;
 	struct election_message *em = (struct election_message *)data.dptr;
 	TALLOC_CTX *mem_ctx;
-	int cmp;
 
 	mem_ctx = talloc_new(ctdb);
-		
+
 	/* someone called an election. check their election data
 	   and if we disagree and we would rather be the elected node, 
 	   send a new election message to all other nodes
 	 */
-	cmp = timeval_compare(&em->priority_time, &rec->priority_time);
-	if (cmp > 0 || (cmp == 0 && em->vnn > ctdb->vnn)) {
+	if (ctdb_election_win(rec, em)) {
 		ret = send_election_request(rec, mem_ctx, ctdb_get_vnn(ctdb));
 		if (ret!=0) {
 			DEBUG(0, (__location__ " failed to initiate recmaster election"));

            

e27n xe<ea/ru "