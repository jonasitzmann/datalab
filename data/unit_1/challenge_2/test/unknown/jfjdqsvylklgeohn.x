From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  1 09:45:24 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51DjNhB010455
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 1 Jun 2007 09:45:23 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 5C9A5163B07
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  1 Jun 2007 13:45:18 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 7B94416396E; Fri,  1 Jun 2007 13:44:03 +0000 (GMT)
Date: Fri, 01 Jun 2007 23:33:02 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070601134403.7B94416396E@lists.samba.org>
Subject: Rev 423: don't strictly need netcat in http://samba.org/~tridge/ctdb
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
revno: 423
revision-id: tridge@samba.org-20070601133301-rtnxemka2ry7cw4e
parent: tridge@samba.org-20070601132533-3e40gmudry3wy2i6
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Fri 2007-06-01 23:33:01 +1000
message:
  don't strictly need netcat
modified:
  packaging/RPM/ctdb.spec        ctdb.spec-20070527204758-biuh7znabuwan3zn-3
=== modified file 'packaging/RPM/ctdb.spec'
--- a/packaging/RPM/ctdb.spec	2007-06-01 13:25:33 +0000
+++ b/packaging/RPM/ctdb.spec	2007-06-01 13:33:01 +0000
@@ -13,7 +13,7 @@
 
 Source: ctdb-%{version}.tar.bz2
 
-Prereq: /sbin/chkconfig /bin/mktemp /usr/bin/killall /usr/bin/nc
+Prereq: /sbin/chkconfig /bin/mktemp /usr/bin/killall
 Prereq: fileutils sed /etc/init.d
 
 Provides: ctdb = %{version}

            

rtf+" r