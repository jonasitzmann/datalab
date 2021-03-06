From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu May 31 23:55:24 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l513tOhB004491
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 31 May 2007 23:55:24 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 1E1E9162BDD
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  1 Jun 2007 03:55:19 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 010C6162AE4; Fri,  1 Jun 2007 03:54:33 +0000 (GMT)
Date: Fri, 01 Jun 2007 13:50:19 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070601035434.010C6162AE4@lists.samba.org>
Subject: Rev 411: added CTDB_WAIT_DIRECTORIES support in
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
revno: 411
revision-id: tridge@samba.org-20070601035018-iqs91hrut48yk8jg
parent: tridge@samba.org-20070601032911-4o9qwds8gfregd3p
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Fri 2007-06-01 13:50:18 +1000
message:
  added CTDB_WAIT_DIRECTORIES support
modified:
  packaging/RHEL/setup/ctdb.sysconfig ctdb.sysconfig-20070527204758-biuh7znabuwan3zn-7
  tools/events                   events-20070529030121-04fjh63cxfh8v1pj-1
=== modified file 'packaging/RHEL/setup/ctdb.sysconfig'
--- a/packaging/RHEL/setup/ctdb.sysconfig	2007-05-31 01:09:45 +0000
+++ b/packaging/RHEL/setup/ctdb.sysconfig	2007-06-01 03:50:18 +0000
@@ -47,6 +47,11 @@
 # the default is not to wait for any local services
 # CTDB_WAIT_TCP_PORTS="445 139"
 
+# use this to specify any local directories to wait on before starting
+# ctdb. You should list any critical Samba or NFS shared directories 
+# the default is not to wait for any local directories
+# CTDB_WAIT_DIRECTORIES="/some/directory"
+
 # the shared directory where you want to put statd information on
 # which clients to notify on a NFS restart
 # there is no default

=== modified file 'tools/events'
--- a/tools/events	2007-06-01 03:26:14 +0000
+++ b/tools/events	2007-06-01 03:50:18 +0000
@@ -8,10 +8,10 @@
 
 case $cmd in 
      startup)
-	# wait for local services to come up
+	# wait for local services to come up.
 	[ -z "$CTDB_WAIT_TCP_PORTS" ] || {
 	  all_ok=0
-	  echo "Waiting for tcp services on $CTDB_WAIT_TCP_PORTS to come up"
+	  echo "Waiting for local tcp ports $CTDB_WAIT_TCP_PORTS"
 	  while [ $all_ok -eq 0 ]; do
 	  	  all_ok=1
 	  	  for p in $CTDB_WAIT_TCP_PORTS; do
@@ -23,7 +23,24 @@
 			exit 1
 		  }
           done
-	  echo "Local tcp services on $CTDB_WAIT_TCP_PORTS are up"
+	  echo "Local tcp services are up"
+	}
+	# wait for local directories to becomes available (could be slow to mount)
+	[ -z "$CTDB_WAIT_DIRECTORIES" ] || {
+	  all_ok=0
+	  echo "Waiting for local directories $CTDB_WAIT_DIRECTORIES"
+	  while [ $all_ok -eq 0 ]; do
+	  	  all_ok=1
+	  	  for d in $CTDB_WAIT_DIRECTORIES; do
+	  	      [ -d $d ] || all_ok=0
+		  done
+		  [ $all_ok -eq 1 ] || sleep 1
+		  /usr/bin/ctdb status > /dev/null 2>&1 || {
+	  		echo "ctdb daemon has died. Exiting event startup"
+			exit 1
+		  }
+          done
+	  echo "Local directories are available"
 	}
 	exit 0;	
 	;;

 

D.tDr�r JA 3o