From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun  3 23:34:10 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l543Y9hB022759
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 23:34:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A4616163837
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 03:34:03 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 42F53162AD3; Mon,  4 Jun 2007 03:33:30 +0000 (GMT)
Date: Mon, 04 Jun 2007 13:34:28 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070604033330.42F53162AD3@lists.samba.org>
Subject: Rev 451: merged from ronnie in http://samba.org/~tridge/ctdb
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
revno: 451
revision-id: tridge@samba.org-20070604033427-lmkyet1lja4tn7oz
parent: tridge@samba.org-20070603121148-m0aa9lmi03v67ys8
parent: sahlberg@ronnie-20070604032607-vw1k1pwe21lrhh1z
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Mon 2007-06-04 13:34:27 +1000
message:
  merged from ronnie
modified:
  common/ctdb_recover.c          ctdb_recover.c-20070503002147-admmfgt1oj6gexfo-1
  include/ctdb.h                 ctdb.h-20061117234101-o3qt14umlg9en8z0-11
  include/ctdb_private.h         ctdb_private.h-20061117234101-o3qt14umlg9en8z0-13
  tools/ctdb_control.c           ctdb_control.c-20070426122705-9ehj1l5lu2gn9kuj-1
    ------------------------------------------------------------
    revno: 432.1.15
    merged: sahlberg@ronnie-20070604032607-vw1k1pwe21lrhh1z
    parent: sahlberg@ronnie-20070604014836-izop6kwcq59tt8uh
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Mon 2007-06-04 13:26:07 +1000
    message:
      add the ip address to the nodemap structure we pull from a server and 
      display the physical address of a node when we do a ctdb status
    ------------------------------------------------------------
    revno: 432.1.14
    merged: sahlberg@ronnie-20070604014836-izop6kwcq59tt8uh
    parent: sahlberg@ronnie-20070603113045-6ayhg8s3iinomj3n
    parent: tridge@samba.org-20070603121148-m0aa9lmi03v67ys8
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Mon 2007-06-04 11:48:36 +1000
    message:
      merge from tridge
    ------------------------------------------------------------
    revno: 432.1.13
    merged: sahlberg@ronnie-20070603113045-6ayhg8s3iinomj3n
    parent: sahlberg@ronnie-20070603095051-58zzq6mxi86c40zq
    parent: tridge@samba.org-20070603105424-u3l4oixhczc2triy
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sun 2007-06-03 21:30:45 +1000
    message:
      merge from tridge
=== modified file 'common/ctdb_recover.c'
--- a/common/ctdb_recover.c	2007-06-03 00:29:14 +0000
+++ b/common/ctdb_recover.c	2007-06-04 03:26:07 +0000
@@ -162,6 +162,7 @@
 	node_map = (struct ctdb_node_map *)outdata->dptr;
 	node_map->num = num_nodes;
 	for (i=0; i<num_nodes; i++) {
+		inet_aton(ctdb->nodes[i]->address.address, &node_map->nodes[i].sin.sin_addr);
 		node_map->nodes[i].vnn   = ctdb->nodes[i]->vnn;
 		node_map->nodes[i].flags = ctdb->nodes[i]->flags;
 	}

=== modified file 'include/ctdb.h'
--- a/include/ctdb.h	2007-06-02 03:31:36 +0000
+++ b/include/ctdb.h	2007-06-04 03:26:07 +0000
@@ -243,17 +243,8 @@
 	TALLOC_CTX *mem_ctx, struct ctdb_dbid_map **dbmap);
 
 
-/* table that contains a list of all nodes a ctdb knows about and their 
-   status
- */
-struct ctdb_node_and_flags {
-	uint32_t vnn;
-	uint32_t flags;
-};
-struct ctdb_node_map {
-	uint32_t num;
-	struct ctdb_node_and_flags nodes[1];
-};
+struct ctdb_node_map;
+
 int ctdb_ctrl_getnodemap(struct ctdb_context *ctdb, 
 		    struct timeval timeout, uint32_t destnode, 
 		    TALLOC_CTX *mem_ctx, struct ctdb_node_map **nodemap);

=== modified file 'include/ctdb_private.h'
--- a/include/ctdb_private.h	2007-06-02 03:31:36 +0000
+++ b/include/ctdb_private.h	2007-06-04 03:26:07 +0000
@@ -869,6 +869,21 @@
 	uint32_t dmaster;
 };
 
+/* table that contains a list of all nodes a ctdb knows about and their 
+   status
+ */
+struct ctdb_node_and_flags {
+	uint32_t vnn;
+	uint32_t flags;
+	struct sockaddr_in sin;
+
+};
+
+struct ctdb_node_map {
+	uint32_t num;
+	struct ctdb_node_and_flags nodes[1];
+};
+
 int32_t ctdb_control_traverse_start(struct ctdb_context *ctdb, TDB_DATA indata, 
 				    TDB_DATA *outdata, uint32_t srcnode);
 int32_t ctdb_control_traverse_all(struct ctdb_context *ctdb, TDB_DATA data, TDB_DATA *outdata);

=== modified file 'tools/ctdb_control.c'
--- a/tools/ctdb_control.c	2007-06-03 09:50:51 +0000
+++ b/tools/ctdb_control.c	2007-06-04 03:26:07 +0000
@@ -292,7 +292,8 @@
 	if(options.machinereadable){
 		printf(":Node:Status:\n");
 		for(i=0;i<nodemap->num;i++){
-			printf(":%d:%d:\n", nodemap->nodes[i].vnn,
+			printf(":%d:%s:%d:\n", nodemap->nodes[i].vnn,
+				inet_ntoa(nodemap->nodes[i].sin.sin_addr),
 				!!nodemap->nodes[i].flags&NODE_FLAGS_CONNECTED);
 		}
 		return 0;
@@ -300,7 +301,8 @@
 
 	printf("Number of nodes:%d\n", nodemap->num);
 	for(i=0;i<nodemap->num;i++){
-		printf("vnn:%d %s%s\n", nodemap->nodes[i].vnn,
+		printf("vnn:%d %16s %s%s\n", nodemap->nodes[i].vnn,
+			inet_ntoa(nodemap->nodes[i].sin.sin_addr),
 			nodemap->nodes[i].flags&NODE_FLAGS_CONNECTED?
 				"CONNECTED":"UNAVAILABLE",
 			nodemap->nodes[i].vnn == myvnn?" (THIS NODE)":"");

                 

s=ioa