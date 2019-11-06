From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 16 23:31:47 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5H3VlL9022198
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 23:31:47 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 99B46163891
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 03:31:45 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 2F30C162AD3; Sun, 17 Jun 2007 03:31:21 +0000 (GMT)
Date: Sun, 17 Jun 2007 11:57:43 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070617033121.2F30C162AD3@lists.samba.org>
Subject: Rev 544: - wait for winbind on samba start in
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
revno: 544
revision-id: tridge@samba.org-20070617015742-vstv17rrkkpahaij
parent: tridge@samba.org-20070612094454-jtmr17z42ko4x7bn
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sun 2007-06-17 11:57:42 +1000
message:
  - wait for winbind on samba start
  - use $PATH for ctdb status
modified:
  config/events.d/50.samba       samba-20070601105340-vlcvnp6euoj3zdwy-3
  config/functions               functions-20070601105405-gajwirydr5a9zd6x-1
=== modified file 'config/events.d/50.samba'
--- a/config/events.d/50.samba	2007-06-11 03:56:50 +0000
+++ b/config/events.d/50.samba	2007-06-17 01:57:42 +0000
@@ -30,6 +30,9 @@
 	# wait for the Samba tcp ports to become available
 	smb_ports=`testparm -sv 2> /dev/null | egrep '\s*smb ports =' | cut -d= -f2`
 	ctdb_wait_tcp_ports "Samba" $smb_ports
+
+	# wait for winbind to be ready
+	ctdb_wait_command "winbind" "wbinfo -p"
 	;;
 	
      takeip)

=== modified file 'config/functions'
--- a/config/functions	2007-06-06 02:08:42 +0000
+++ b/config/functions	2007-06-17 01:57:42 +0000
@@ -26,6 +26,28 @@
   fi
 }
 
+
+######################################################
+# wait for a command to return a zero exit status
+# usage: ctdb_wait_command SERVICE_NAME <command>
+######################################################
+ctdb_wait_command() {
+  service_name="$1"
+  wait_cmd="$2"
+  [ -z "$wait_cmd" ] && return;
+  all_ok=0
+  echo "`/bin/date` Waiting for service $service_name to start"
+  while [ $all_ok -eq 0 ]; do
+	  $wait_cmd > /dev/null 2>&1 && all_ok=1
+	  ctdb status > /dev/null 2>&1 || {
+  		echo "ctdb daemon has died. Exiting wait for $service_name"
+		exit 1
+	  }
+  done
+  echo "`/bin/date` Local service $service_name is up"
+}
+
+
 ######################################################
 # wait for a set of tcp ports
 # usage: ctdb_wait_tcp_ports SERVICE_NAME <ports...>
@@ -50,7 +72,7 @@
 	      fi
 	  done
 	  [ $all_ok -eq 1 ] || sleep 1
-	  /usr/bin/ctdb status > /dev/null 2>&1 || {
+	  ctdb status > /dev/null 2>&1 || {
   		echo "ctdb daemon has died. Exiting tcp wait $service_name"
 		exit 1
 	  }
@@ -77,7 +99,7 @@
   	      [ -d $d ] || all_ok=0
 	  done
 	  [ $all_ok -eq 1 ] || sleep 1
-	  /usr/bin/ctdb status > /dev/null 2>&1 || {
+	  ctdb status > /dev/null 2>&1 || {
   		echo "ctdb daemon has died. Exiting directory wait for $service_name"
 		exit 1
 	  }

       

n cdcpuH1- .tf