From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun  5 22:46:02 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l562k1hB016538
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 22:46:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AEF86162BC6
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 02:45:55 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 9F4A1162AC2; Wed,  6 Jun 2007 02:45:13 +0000 (GMT)
Date: Wed, 06 Jun 2007 12:08:43 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070606024513.9F4A1162AC2@lists.samba.org>
Subject: Rev 478: - added monitoring of rpc ports for nfs,
	and of Samba ports and directories in http://samba.org/~tridge/ctdb
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
revno: 478
revision-id: tridge@samba.org-20070606020842-dbjg17e73v52anv2
parent: tridge@samba.org-20070606012706-wlzgtpwgr0hfrifu
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Wed 2007-06-06 12:08:42 +1000
message:
  - added monitoring of rpc ports for nfs, and of Samba ports and directories
  - added monitoring of the ethernet link state
  
  When monitoring detects an error, the node loses its public IP address
modified:
  common/ctdb_tunables.c         ctdb_tunables.c-20070604095258-4m34d7cm1qa7yos9-1
  config/events.d/10.interface   10.interface-20070604050809-s21zslfirn07zjt8-1
  config/events.d/50.samba       samba-20070601105340-vlcvnp6euoj3zdwy-3
  config/events.d/59.nfslock     nfslock-20070601105340-vlcvnp6euoj3zdwy-2
  config/events.d/60.nfs         nfs-20070601141008-hy3h4qgbk1jd2jci-1
  config/functions               functions-20070601105405-gajwirydr5a9zd6x-1
=== modified file 'common/ctdb_tunables.c'
--- a/common/ctdb_tunables.c	2007-06-06 00:25:46 +0000
+++ b/common/ctdb_tunables.c	2007-06-06 02:08:42 +0000
@@ -36,7 +36,7 @@
 	{ "RecoverInterval",   1,  offsetof(struct ctdb_tunable, recover_interval) },
 	{ "ElectionTimeout",   3,  offsetof(struct ctdb_tunable, election_timeout) },
 	{ "TakeoverTimeout",   5,  offsetof(struct ctdb_tunable, takeover_timeout) },
-	{ "MonitorInterval",  60,  offsetof(struct ctdb_tunable, monitor_interval) },
+	{ "MonitorInterval",  15,  offsetof(struct ctdb_tunable, monitor_interval) },
 };
 
 /*

=== modified file 'config/events.d/10.interface'
--- a/config/events.d/10.interface	2007-06-04 05:09:03 +0000
+++ b/config/events.d/10.interface	2007-06-06 02:08:42 +0000
@@ -6,6 +6,9 @@
 # public interface
 
 . /etc/ctdb/functions
+loadconfig ctdb
+
+[ -z "$CTDB_PUBLIC_INTERFACE" ] && exit 0
 
 cmd="$1"
 shift
@@ -73,6 +76,15 @@
      shutdown)
 	;;
 
+     monitor)
+	[ -x /usr/sbin/ethtool ] && {
+	    /usr/sbin/ethtool $CTDB_PUBLIC_INTERFACE | grep 'Link detected: yes' > /dev/null || {
+		echo "`date` ERROR: No link on network interface $CTDB_PUBLIC_INTERFACE"
+		exit 1
+	    }
+	}
+	;;
+
 esac
 
 exit 0

=== modified file 'config/events.d/50.samba'
--- a/config/events.d/50.samba	2007-06-05 07:43:19 +0000
+++ b/config/events.d/50.samba	2007-06-06 02:08:42 +0000
@@ -50,6 +50,15 @@
 	service smb stop
 	service winbind stop
 	;;
+
+     monitor)
+	smb_dirs=`testparm -st 2> /dev/null | egrep '^\s*path = '  | cut -d= -f2`
+	ctdb_check_directories "Samba" $smb_dirs	
+
+	smb_ports=`testparm -stv 2> /dev/null | egrep '\s*smb ports =' | cut -d= -f2`
+	ctdb_check_tcp_ports "Samba" $smb_ports
+	;;
+
 esac
 
 # ignore unknown commands

=== modified file 'config/events.d/59.nfslock'
--- a/config/events.d/59.nfslock	2007-06-05 08:16:45 +0000
+++ b/config/events.d/59.nfslock	2007-06-06 02:08:42 +0000
@@ -51,6 +51,14 @@
 
 	/bin/rm -f /etc/ctdb/state/statd/restart
 	;;
+
+      monitor)
+	# check that lockd responds to rpc requests
+	ctdb_check_rpc "statd" 100024 1
+	ctdb_check_rpc "lockd" 100021 1
+	ctdb_check_directories "statd" $STATD_SHARED_DIRECTORY
+	;;
+
 esac
 
 exit 0

=== modified file 'config/events.d/60.nfs'
--- a/config/events.d/60.nfs	2007-06-05 05:18:37 +0000
+++ b/config/events.d/60.nfs	2007-06-06 02:08:42 +0000
@@ -9,6 +9,8 @@
 cmd="$1"
 shift
 
+PATH=/usr/bin:/bin:/usr/sbin:/sbin:$PATH
+
 case $cmd in 
      startup)
 	mkdir -p /etc/ctdb/state/nfs
@@ -45,6 +47,16 @@
 	/bin/rm -f /etc/ctdb/state/nfs/restart
 	;;
 
+      monitor)
+	# check that NFS responds to rpc requests
+	ctdb_check_rpc "NFS" 100003 3
+	ctdb_check_rpc "mount" 100005 1
+
+	# and that its directories are available
+	nfs_dirs=`grep -v '^#' < /etc/exports | cut -d' ' -f1`
+	ctdb_check_directories "nfs" $nfs_dirs
+	;;
+
 esac
 
 exit 0

=== modified file 'config/functions'
--- a/config/functions	2007-06-03 12:07:07 +0000
+++ b/config/functions	2007-06-06 02:08:42 +0000
@@ -28,7 +28,7 @@
 
 ######################################################
 # wait for a set of tcp ports
-# usage: ctdb_wait_tcp_ports SERICE_NAME <ports...>
+# usage: ctdb_wait_tcp_ports SERVICE_NAME <ports...>
 ######################################################
 ctdb_wait_tcp_ports() {
   service_name="$1"
@@ -59,9 +59,10 @@
 }
 
 
+
 ######################################################
 # wait for a set of directories
-# usage: ctdb_wait_directories SERICE_NAME <directories...>
+# usage: ctdb_wait_directories SERVICE_NAME <directories...>
 ######################################################
 ctdb_wait_directories() {
   service_name="$1"
@@ -84,3 +85,58 @@
   echo "`/bin/date` Local directories for $service_name are available"
 }
 
+
+######################################################
+# check that a rpc server is registered with portmap
+# and responding to requests
+# usage: ctdb_check_rpc SERVICE_NAME PROGNUM VERSION
+######################################################
+ctdb_check_rpc() {
+    service_name="$1"
+    prognum="$2"
+    version="$3"
+    rpcinfo -u localhost $prognum $version > /dev/null || {
+	    echo "`date` ERROR: $service_name not responding to rpc requests"
+	    exit 1
+    }
+}
+
+######################################################
+# check a set of directories is available
+# usage: ctdb_check_directories SERVICE_NAME <directories...>
+######################################################
+ctdb_check_directories() {
+  service_name="$1"
+  shift
+  wait_dirs="$*"
+  [ -z "$wait_dirs" ] && return;
+  for d in $wait_dirs; do
+      [ -d $d ] || {
+	  echo "`date` ERROR: $service_name directory $d not available"
+	  exit 1
+      }
+  done
+}
+
+######################################################
+# check a set of tcp ports
+# usage: ctdb_check_tcp_ports SERVICE_NAME <ports...>
+######################################################
+ctdb_check_tcp_ports() {
+  service_name="$1"
+  shift
+  wait_ports="$*"
+  [ -z "$wait_ports" ] && return;
+  for p in $wait_ports; do
+      all_ok=1
+      if [ -x /usr/bin/netcat ]; then
+          /usr/bin/netcat -z 127.0.0.1 $p || all_ok=0
+      elif [ -x /usr/bin/nc ]; then
+          /usr/bin/nc -z 127.0.0.1 $p || all_ok=0
+      fi
+      [ $all_ok -eq 1 ] || {
+	  echo "`date` ERROR: $service_name tcp port $p is not responding"
+	  exit 1
+      }
+  done
+}

                 

d=B1nyob.ab