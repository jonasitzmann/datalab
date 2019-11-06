From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun  5 22:46:05 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l562k5hB016545
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 22:46:05 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 7A22D1638F0
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 02:45:59 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id B49D5162AD0; Wed,  6 Jun 2007 02:45:13 +0000 (GMT)
Date: Wed, 06 Jun 2007 11:12:46 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070606024513.B49D5162AD0@lists.samba.org>
Subject: Rev 475: send the right sort of message on monitoring failure in
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
revno: 475
revision-id: tridge@samba.org-20070606011245-opmhuwt69ou5uxtm
parent: tridge@samba.org-20070606011214-c23wxzjj2harql7u
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Wed 2007-06-06 11:12:45 +1000
message:
  send the right sort of message on monitoring failure
modified:
  common/ctdb_monitor.c          ctdb_monitor.c-20070518100625-8jf4ft1mjzmb22ck-1
=== modified file 'common/ctdb_monitor.c'
--- a/common/ctdb_monitor.c	2007-06-06 00:25:46 +0000
+++ b/common/ctdb_monitor.c	2007-06-06 01:12:45 +0000
@@ -122,7 +122,7 @@
 	data.dsize = sizeof(c);
 
 	/* tell the recmaster that something has changed */
-	ctdb_send_message(ctdb, ctdb->recovery_master, CTDB_SRVID_NODE_FLAGS_CHANGED, data);
+	ctdb_daemon_send_message(ctdb, ctdb->recovery_master, CTDB_SRVID_NODE_FLAGS_CHANGED, data);
 }
 
 

             

KnzO1Bs