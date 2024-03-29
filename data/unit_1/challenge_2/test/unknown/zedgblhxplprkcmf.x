From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 01:18:20 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l545IKhB023692
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 01:18:20 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 8384E162C2C
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 05:18:14 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 6E4E6162AE1; Mon,  4 Jun 2007 05:18:02 +0000 (GMT)
Date: Mon, 04 Jun 2007 14:16:51 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070604051802.6E4E6162AE1@lists.samba.org>
Subject: Rev 452: automatically bring up interfaces that we manage. This
	allows ctdb to work without requiring two IPs per public
	interface in http://samba.org/~tridge/ctdb
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
revno: 452
revision-id: tridge@samba.org-20070604041651-tcz0gjypen37ly9d
parent: tridge@samba.org-20070604033427-lmkyet1lja4tn7oz
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Mon 2007-06-04 14:16:51 +1000
message:
  automatically bring up interfaces that we manage. This allows ctdb to work without requiring two IPs per public interface
modified:
  config/events                  events-20070529030121-04fjh63cxfh8v1pj-1
=== modified file 'config/events'
--- a/config/events	2007-06-03 12:07:07 +0000
+++ b/config/events	2007-06-04 04:16:51 +0000
@@ -28,6 +28,10 @@
 	ip=$2
 	maskbits=$3
 
+	/sbin/ip link set $iface up || {
+		 echo "`/bin/date` Failed to bringup interface $iface"
+		 exit 1
+	}
 	/sbin/ip addr add $ip/$maskbits dev $iface || {
 		 echo "`/bin/date` Failed to add $ip/$maskbits on dev $iface"
 		 exit 1

      

eoKQ1