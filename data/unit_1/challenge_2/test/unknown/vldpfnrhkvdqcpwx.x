From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 08:18:00 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56CI0hB021246
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 08:18:00 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id EE12B1639C5
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 12:17:53 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 9D077162C2A; Wed,  6 Jun 2007 12:17:33 +0000 (GMT)
Date: Wed, 06 Jun 2007 21:56:55 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070606121733.9D077162C2A@lists.samba.org>
Subject: Rev 485: get parents idea of recmode and recmaster when deciding if
	we should do a takeover run in http://samba.org/~tridge/ctdb
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
revno: 485
revision-id: tridge@samba.org-20070606115654-7fqbek6uoxforwen
parent: tridge@samba.org-20070606113436-6bo9s8zewul2xwjk
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Wed 2007-06-06 21:56:54 +1000
message:
  get parents idea of recmode and recmaster when deciding if we should do a takeover run
modified:
  common/ctdb_recoverd.c         recoverd.c-20070503213540-bvxuyd9jm1f7ig90-1
=== modified file 'common/ctdb_recoverd.c'
--- a/common/ctdb_recoverd.c	2007-06-06 11:27:09 +0000
+++ b/common/ctdb_recoverd.c	2007-06-06 11:56:54 +0000
@@ -996,8 +996,17 @@
 	}
 
 	nodemap->nodes[i].flags = c->flags;
+
+	ret = ctdb_ctrl_getrecmaster(ctdb, CONTROL_TIMEOUT(), 
+				     CTDB_CURRENT_NODE, &ctdb->recovery_master);
+
+	if (ret == 0) {
+		ret = ctdb_ctrl_getrecmode(ctdb, CONTROL_TIMEOUT(), 
+					   CTDB_CURRENT_NODE, &ctdb->recovery_mode);
+	}
 	
-	if (ctdb->recovery_master == ctdb->vnn &&
+	if (ret == 0 &&
+	    ctdb->recovery_master == ctdb->vnn &&
 	    ctdb->recovery_mode == CTDB_RECOVERY_NORMAL &&
 	    ctdb->takeover.enabled) {
 		ret = ctdb_takeover_run(ctdb, nodemap);

       

R.d"me2lq