From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun  7 04:36:29 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l578aThB032416
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 04:36:29 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 2ACC616389E
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  7 Jun 2007 08:36:23 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 1A7CF163824; Thu,  7 Jun 2007 08:35:46 +0000 (GMT)
Date: Thu, 07 Jun 2007 18:13:15 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070607083546.1A7CF163824@lists.samba.org>
Subject: Rev 494: validate vnn on node flags change in
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
revno: 494
revision-id: tridge@samba.org-20070607081314-uvsnbz2gwbqsc0am
parent: tridge@samba.org-20070607080738-9hj4i5vn18ur2987
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Thu 2007-06-07 18:13:14 +1000
message:
  validate vnn on node flags change
modified:
  common/ctdb_daemon.c           ctdb_daemon.c-20070409200331-3el1kqgdb9m4ib0g-1
=== modified file 'common/ctdb_daemon.c'
--- a/common/ctdb_daemon.c	2007-06-07 05:18:55 +0000
+++ b/common/ctdb_daemon.c	2007-06-07 08:13:14 +0000
@@ -44,10 +44,16 @@
 		return;
 	}
 
+	if (!ctdb_validate_vnn(ctdb, c->vnn)) {
+		DEBUG(0,("Bad vnn %u in flag_change_handler\n", c->vnn));
+		return;
+	}
+
 	/* don't get the disconnected flag from the other node */
 	ctdb->nodes[c->vnn]->flags = 
 		(ctdb->nodes[c->vnn]->flags&NODE_FLAGS_DISCONNECTED) 
 		| (c->flags & ~NODE_FLAGS_DISCONNECTED);	
+	DEBUG(2,("Node flags for node %u are now 0x%x\n", c->vnn, ctdb->nodes[c->vnn]->flags));
 }
 
 /* called when the "startup" event script has finished */

  

8s;ll u