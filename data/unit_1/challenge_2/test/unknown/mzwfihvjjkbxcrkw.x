From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun  3 08:11:30 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53CBThB015371
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 08:11:29 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D8D36162ACE
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  3 Jun 2007 12:11:22 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id E63C5162ACE; Sun,  3 Jun 2007 12:11:01 +0000 (GMT)
Date: Sun, 03 Jun 2007 22:11:49 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070603121101.E63C5162ACE@lists.samba.org>
Subject: Rev 450: handle NETWORKING var not existing in
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
revno: 450
revision-id: tridge@samba.org-20070603121148-m0aa9lmi03v67ys8
parent: tridge@samba.org-20070603120707-py0wul4gatwvkcer
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sun 2007-06-03 22:11:48 +1000
message:
  handle NETWORKING var not existing
modified:
  config/ctdb.init               ctdb.init-20070527204758-biuh7znabuwan3zn-6
=== modified file 'config/ctdb.init'
--- a/config/ctdb.init	2007-06-03 12:07:07 +0000
+++ b/config/ctdb.init	2007-06-03 12:11:48 +0000
@@ -39,7 +39,7 @@
 loadconfig ctdb
 
 # check networking is up (for redhat)
-[ ${NETWORKING} = "no" ] && exit 0
+[ "${NETWORKING}" = "no" ] && exit 0
 
 CTDB_OPTIONS=""
 

                

LrYd3.>Xc�a