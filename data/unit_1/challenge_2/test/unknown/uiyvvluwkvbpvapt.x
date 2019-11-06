From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  9 08:04:34 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59C4XL9009269
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 9 Jun 2007 08:04:34 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C116D163901
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  9 Jun 2007 12:04:33 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 1AF6C162C38; Sat,  9 Jun 2007 12:00:39 +0000 (GMT)
Date: Sat, 09 Jun 2007 21:57:47 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070609120039.1AF6C162C38@lists.samba.org>
Subject: Rev 523: ignore arp on loopback in http://samba.org/~tridge/ctdb
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
revno: 523
revision-id: tridge@samba.org-20070609115747-u1bcpt53aa1sff1j
parent: tridge@samba.org-20070609114706-yyeee2n33bdie2jb
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sat 2007-06-09 21:57:47 +1000
message:
  ignore arp on loopback
modified:
  takeover/system.c              system.c-20070525071636-a5n1ihghjtppy08r-3
=== modified file 'takeover/system.c'
--- a/takeover/system.c	2007-06-06 03:45:12 +0000
+++ b/takeover/system.c	2007-06-09 11:57:47 +0000
@@ -66,9 +66,16 @@
 		DEBUG(0,(__location__ " ioctl failed\n"));
 		return -1;
 	}
+	if (ARPHRD_LOOPBACK == if_hwaddr.ifr_hwaddr.sa_family) {
+		DEBUG(3,("Ignoring loopback arp request\n"));
+		close(s);
+		return 0;
+	}
 	if (if_hwaddr.ifr_hwaddr.sa_family != AF_LOCAL) {
 		close(s);
-		DEBUG(0,(__location__ " not an ethernet address\n"));
+		errno = EINVAL;
+		DEBUG(0,(__location__ " not an ethernet address family (0x%x)\n",
+			 if_hwaddr.ifr_hwaddr.sa_family));
 		return -1;
 	}
 

        

daegqCpcrtgtk
