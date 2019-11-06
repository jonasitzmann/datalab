From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 00:08:03 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5B481L9009589
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 00:08:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E3733163869
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 04:08:00 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 65496162AF5; Mon, 11 Jun 2007 04:07:46 +0000 (GMT)
Date: Mon, 11 Jun 2007 13:56:50 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070611040746.65496162AF5@lists.samba.org>
Subject: Rev 531: fixed testparm calls in http://samba.org/~tridge/ctdb
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
revno: 531
revision-id: tridge@samba.org-20070611035650-5le1j4hug22kkd0o
parent: tridge@samba.org-20070611025038-dxsj8c9f9bfycrkk
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Mon 2007-06-11 13:56:50 +1000
message:
  fixed testparm calls
modified:
  config/events.d/50.samba       samba-20070601105340-vlcvnp6euoj3zdwy-3
=== modified file 'config/events.d/50.samba'
--- a/config/events.d/50.samba	2007-06-06 09:46:25 +0000
+++ b/config/events.d/50.samba	2007-06-11 03:56:50 +0000
@@ -14,7 +14,7 @@
 case $cmd in 
      startup)
 	# wait for all shared directories to become available
-	smb_dirs=`testparm -st 2> /dev/null | egrep '^\s*path = '  | cut -d= -f2`
+	smb_dirs=`testparm -s 2> /dev/null | egrep '^\s*path = '  | cut -d= -f2`
 	ctdb_wait_directories "Samba" $smb_dirs	
 
 	# make sure samba is not already started
@@ -28,7 +28,7 @@
 	service winbind start
 
 	# wait for the Samba tcp ports to become available
-	smb_ports=`testparm -stv 2> /dev/null | egrep '\s*smb ports =' | cut -d= -f2`
+	smb_ports=`testparm -sv 2> /dev/null | egrep '\s*smb ports =' | cut -d= -f2`
 	ctdb_wait_tcp_ports "Samba" $smb_ports
 	;;
 	
@@ -52,15 +52,15 @@
 	;;
 
      monitor)
-	testparm -st 2>&1 | egrep '^WARNING|^ERROR|^Unknown' && {
+	testparm -s 2>&1 | egrep '^WARNING|^ERROR|^Unknown' && {
 	    echo "`date` ERROR: testparm shows smb.conf is not clean"
 	    exit 1
 	}
 
-	smb_dirs=`testparm -st 2> /dev/null | egrep '^\s*path = '  | cut -d= -f2`
+	smb_dirs=`testparm -s 2> /dev/null | egrep '^\s*path = '  | cut -d= -f2`
 	ctdb_check_directories "Samba" $smb_dirs	
 
-	smb_ports=`testparm -stv 2> /dev/null | egrep '\s*smb ports =' | cut -d= -f2`
+	smb_ports=`testparm -sv 2> /dev/null | egrep '\s*smb ports =' | cut -d= -f2`
 	ctdb_check_tcp_ports "Samba" $smb_ports
 	;;
 

              

zSc Qior_ PpehT