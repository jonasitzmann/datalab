From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 10:21:01 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54EL1hB028964
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 10:21:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 57BAD163916
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 14:20:55 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id E0005162C1E; Mon,  4 Jun 2007 14:20:18 +0000 (GMT)
Date: Mon, 04 Jun 2007 23:54:47 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070604142018.E0005162C1E@lists.samba.org>
Subject: Rev 464: explain event types in http://samba.org/~tridge/ctdb
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
revno: 464
revision-id: tridge@samba.org-20070604135446-vk2w3jilvbo4nlnk
parent: tridge@samba.org-20070604135422-rwce57vf3ps6ipn8
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Mon 2007-06-04 23:54:46 +1000
message:
  explain event types
modified:
  config/events                  events-20070529030121-04fjh63cxfh8v1pj-1
=== modified file 'config/events'
--- a/config/events	2007-06-04 10:05:31 +0000
+++ b/config/events	2007-06-04 13:54:46 +0000
@@ -5,7 +5,9 @@
 # This script is called with one of the following sets of arguments
 #     startup    : called when ctdb starts
 #     shutdown   : called when ctdb shuts down
-#     takeip 
+#     takeip     : called when an IP address is taken over
+#     releaseip  : called when an IP address is released
+#     recovered  : called when ctdb has finished a recovery event
 
 . /etc/ctdb/functions
 loadconfig ctdb

               

YtDG
thtfrmak
 