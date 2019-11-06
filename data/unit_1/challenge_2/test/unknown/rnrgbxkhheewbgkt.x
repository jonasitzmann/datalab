From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 09:35:54 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BDZsL9014505
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 09:35:54 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0E011163ACA
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 13:35:54 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 2E3CB163856; Mon, 11 Jun 2007 13:31:19 +0000 (GMT)
Date: Mon, 11 Jun 2007 23:03:23 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070611133119.2E3CB163856@lists.samba.org>
Subject: Rev 535: make sure we start the freeze process quickly on all nodes
	when we are going to do recovery - this prevents
	serialisation of freeze,
	which can take a long time in http://samba.org/~tridge/ctdb
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
revno: 535
revision-id: tridge@samba.org-20070611130323-4jb1shtg78r4wsed
parent: tridge@samba.org-20070611122723-0n15ehpi0fa9na90
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Mon 2007-06-11 23:03:23 +1000
message:
  make sure we start the freeze process quickly on all nodes when we are going to do recovery - this prevents serialisation of freeze, which can take a long time
modified:
  server/ctdb_recoverd.c         recoverd.c-20070503213540-bvxuyd9jm1f7ig90-1
=== modified file 'server/ctdb_recoverd.c'
--- a/server/ctdb_recoverd.c	2007-06-11 11:37:09 +0000
+++ b/server/ctdb_recoverd.c	2007-06-11 13:03:23 +0000
@@ -125,6 +125,11 @@
 {
 	int j, ret;
 
+	/* start the freeze process immediately on all nodes */
+	ctdb_control(ctdb, CTDB_BROADCAST_CONNECTED, 0, 
+		     CTDB_CONTROL_FREEZE, CTDB_CTRL_FLAG_NOREPLY, tdb_null, 
+		     NULL, NULL, NULL, NULL, NULL);
+
 	/* set recovery mode to active on all nodes */
 	for (j=0; j<nodemap->num; j++) {
 		/* dont change it for nodes that are unavailable */

       

h4s=