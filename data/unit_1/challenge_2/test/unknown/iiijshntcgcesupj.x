From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun  7 08:37:31 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57CbVhB002154
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 08:37:31 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 15CE7162C20
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  7 Jun 2007 12:37:25 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 861D4162C33; Thu,  7 Jun 2007 12:36:49 +0000 (GMT)
Date: Thu, 07 Jun 2007 22:35:14 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070607123649.861D4162C33@lists.samba.org>
Subject: Rev 503: update configure.ac for new code layout in
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
revno: 503
revision-id: tridge@samba.org-20070607123514-p2puwxlfwv1m2bm7
parent: tridge@samba.org-20070607123029-thfs1pso26c1u2m5
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Thu 2007-06-07 22:35:14 +1000
message:
  update configure.ac for new code layout
modified:
  configure.ac                   configure.ac-20061117234101-o3qt14umlg9en8z0-10
=== modified file 'configure.ac'
--- a/configure.ac	2007-06-02 08:57:21 +0000
+++ b/configure.ac	2007-06-07 12:35:14 +0000
@@ -12,7 +12,7 @@
 AC_DEFUN([SMB_EXT_LIB], [echo -n ""])
 AC_DEFUN([SMB_ENABLE], [echo -n ""])
 AC_INIT(ctdb.h)
-AC_CONFIG_SRCDIR([common/ctdb.c])
+AC_CONFIG_SRCDIR([server/ctdbd.c])
 
 AC_LIBREPLACE_ALL_CHECKS
 

                 

pu1c> iGaqeU"Sm/