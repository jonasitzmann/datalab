From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 02:50:19 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l646oJL9006887
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 02:50:19 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AB07D163838
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  4 Jul 2007 06:50:14 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id B4B7E162C38; Wed,  4 Jul 2007 06:49:58 +0000 (GMT)
Date: Wed, 04 Jul 2007 16:22:09 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070704064958.B4B7E162C38@lists.samba.org>
Subject: Rev 555: more careful checking of lengths in
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
revno: 555
revision-id: tridge@samba.org-20070704062209-pw3hnhxw7ambmvcf
parent: tridge@samba.org-20070704045133-umv584idgrsbj03e
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Wed 2007-07-04 16:22:09 +1000
message:
  more careful checking of lengths
modified:
  takeover/system.c              system.c-20070525071636-a5n1ihghjtppy08r-3
=== modified file 'takeover/system.c'
--- a/takeover/system.c	2007-07-04 03:53:22 +0000
+++ b/takeover/system.c	2007-07-04 06:22:09 +0000
@@ -484,7 +484,7 @@
 		event_loop_once(ev);
 
 		ret = recv(s, pkt, RCVPKTSIZE, MSG_TRUNC);
-		if (ret<40) {
+		if (ret < sizeof(*eth)+sizeof(*ip)) {
 			continue;
 		}
 
@@ -496,7 +496,7 @@
 		}
 	
 		/* IP */
-		ip = (struct iphdr *)&pkt[14];
+		ip = (struct iphdr *)(eth+1);
 		/* We only want IPv4 packets */
 		if (ip->version != 4) {
 			continue;
@@ -519,8 +519,15 @@
 			continue;
 		}
 
+		/* make sure its not a short packet */
+		if (offsetof(struct tcphdr, ack_seq) + 4 + 
+		    (ip->ihl*4) + sizeof(*eth) > ret) {
+			continue;
+		}
+
 		/* TCP */
-		tcp = (struct tcphdr *)&pkt[14+ip->ihl*4];
+		tcp = (struct tcphdr *)((ip->ihl*4) + (char *)ip);
+		
 		/* We only want replies from the port we tickled */
 		if (tcp->source != dst->sin_port) {
 			continue;



mf2c/>r	>/