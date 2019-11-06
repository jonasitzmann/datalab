From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  2 04:09:10 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52899hB020779
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 2 Jun 2007 04:09:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 2093B162ADC
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  2 Jun 2007 08:09:04 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 55C7D162ACE; Sat,  2 Jun 2007 08:08:15 +0000 (GMT)
Date: Sat, 02 Jun 2007 18:08:17 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070602080815.55C7D162ACE@lists.samba.org>
Subject: Rev 433: merge from ronnie in http://samba.org/~tridge/ctdb
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
revno: 433
revision-id: tridge@samba.org-20070602080816-xkcs5l60md7prakr
parent: tridge@samba.org-20070602033136-ojzzrsknaseuwiyq
parent: sahlberg@ronnie-20070602065058-zorzcz56e16k4btv
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sat 2007-06-02 18:08:16 +1000
message:
  merge from ronnie
modified:
  tools/ctdb.sysconfig           ctdb.sysconfig-20070527204758-biuh7znabuwan3zn-7
  tools/events.d/nfs             nfs-20070601141008-hy3h4qgbk1jd2jci-1
  tools/events.d/nfslock         nfslock-20070601105340-vlcvnp6euoj3zdwy-2
  tools/statd-callout            statdcallout-20070531010857-6sdlz455vusye5y5-1
  web/ctdb.html                  ctdb.html-20070601052353-vgod9lfo4an4o83j-2
    ------------------------------------------------------------
    revno: 432.1.3
    merged: sahlberg@ronnie-20070602065058-zorzcz56e16k4btv
    parent: sahlberg@ronnie-20070602064415-xcc5lhkgz2von0qs
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-02 16:50:58 +1000
    message:
      fix broken link to the CTDB setup page
    ------------------------------------------------------------
    revno: 432.1.2
    merged: sahlberg@ronnie-20070602064415-xcc5lhkgz2von0qs
    parent: sahlberg@ronnie-20070602063317-ymvyqz9cvymmu2mr
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-02 16:44:15 +1000
    message:
      update the evens scripts for nfs and nfslock to honour CTDB_MANAGES_NFS 
      which is set in /etc/sysconfig/nfs
    ------------------------------------------------------------
    revno: 432.1.1
    merged: sahlberg@ronnie-20070602063317-ymvyqz9cvymmu2mr
    parent: tridge@samba.org-20070602033136-ojzzrsknaseuwiyq
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-02 16:33:17 +1000
    message:
      STATD_SHARED_DIRECTORY should be define din the nfs sysconfig file and 
      not the ctdb sysconfig file since this variable has nothing at all to do 
      with ctdb
=== modified file 'tools/ctdb.sysconfig'
--- a/tools/ctdb.sysconfig	2007-06-02 01:36:42 +0000
+++ b/tools/ctdb.sysconfig	2007-06-02 06:33:17 +0000
@@ -48,11 +48,6 @@
 # the default is 0
 # DEBUGLEVEL=0
 
-# the shared directory where you want to put statd information on
-# which clients to notify on a NFS restart
-# there is no default
-# STATD_SHARED_DIRECTORY="/some/shared/directory"
-
 # any other options you might want. Run ctdbd --help for a list
 # CTDB_OPTIONS=
 

=== modified file 'tools/events.d/nfs'
--- a/tools/events.d/nfs	2007-06-01 14:10:22 +0000
+++ b/tools/events.d/nfs	2007-06-02 06:44:15 +0000
@@ -1,15 +1,23 @@
 #!/bin/sh
 # script to manage nfs in a clustered environment
 
-. /etc/sysconfig/ctdb
+. /etc/sysconfig/nfs
 . /etc/ctdb/functions
 
+[ -z $CTDB_MANAGES_NFS ] && exit 0
+[ $CTDB_MANAGES_NFS != "yes" ] && exit 0
+
 cmd="$1"
 shift
 
 case $cmd in 
      startup)
 	mkdir -p /etc/ctdb/state/nfs
+	service nfs start
+	;;
+
+     shutdown)
+	service nfs stop
 	;;
 
      releaseip)

=== modified file 'tools/events.d/nfslock'
--- a/tools/events.d/nfslock	2007-06-01 11:20:05 +0000
+++ b/tools/events.d/nfslock	2007-06-02 06:44:15 +0000
@@ -1,18 +1,23 @@
 #!/bin/sh
 # event strict to manage lockd and statd in a cluster environment
 
-. /etc/sysconfig/ctdb
+. /etc/sysconfig/nfs
 . /etc/ctdb/functions
 
+[ -z $CTDB_MANAGES_NFS ] && exit 0
+[ $CTDB_MANAGES_NFS != "yes" ] && exit 0
+
 cmd="$1"
 shift
 
 case $cmd in 
      startup)
 	/bin/mkdir -p /etc/ctdb/state/statd/ip
+	service nfslock start
 	;;
 
      shutdown)
+	service nfslock stop
 	;;
 
      takeip)

=== modified file 'tools/statd-callout'
--- a/tools/statd-callout	2007-06-01 13:25:33 +0000
+++ b/tools/statd-callout	2007-06-02 06:33:17 +0000
@@ -3,7 +3,7 @@
 # this script needs to be installed so that statd points to it with the -H 
 # command line argument. The easiest way to do that is 
 
-. /etc/sysconfig/ctdb
+. /etc/sysconfig/nfs
 
 [ -z "$STATD_SHARED_DIRECTORY" ] && exit 0
 

=== modified file 'web/ctdb.html'
--- a/web/ctdb.html	2007-06-01 07:16:19 +0000
+++ b/web/ctdb.html	2007-06-02 06:50:58 +0000
@@ -13,7 +13,7 @@
 It is the core component for samba3/4 clustering.
 
 To get started with ctdb, I would recommend you read <a
-href="http://wiki.samba.org/CTDB_Setup">the ctdb wiki</a>.
+href="http://wiki.samba.org/index.php/CTDB_Setup">the ctdb wiki</a>.
 
 <h2>Discussion and bug reports</h2>
 



eavaZiw>8Get 