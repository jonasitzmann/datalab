From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  8 20:01:25 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5901PL9003089
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 20:01:25 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E5905163890
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  9 Jun 2007 00:01:24 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@lists.samba.org
Delivered-To: samba-cvs@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 510)
	id D9AA3162B74; Sat,  9 Jun 2007 00:01:16 +0000 (GMT)
To: samba-cvs@lists.samba.org
Message-Id: <20070609000116.D9AA3162B74@lists.samba.org>
Date: Sat,  9 Jun 2007 00:01:16 +0000 (GMT)
From: build@samba.org
Subject: Build status as of Sat Jun  9 00:00:01 2007
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

URL: http://build.samba.org/

--- /home/build/master/cache/broken_results.txt.old	2007-06-08 00:00:50.000000000 +0000
+++ /home/build/master/cache/broken_results.txt	2007-06-09 00:01:16.000000000 +0000
@@ -1,25 +1,25 @@
-Build status as of Fri Jun  8 00:00:02 2007
+Build status as of Sat Jun  9 00:00:01 2007
 
 Build counts:
 Tree         Total  Broken Panic 
 SOC          0      0      0     
 build_farm   0      0      0     
-ccache       38     9      0     
+ccache       33     8      0     
 ctdb         0      0      0     
 distcc       2      0      0     
-ldb          37     3      0     
-libreplace   35     9      0     
-lorikeet-heimdal 33     20     0     
-pidl         22     4      0     
-ppp          16     0      0     
+ldb          33     3      0     
+libreplace   32     9      0     
+lorikeet-heimdal 29     24     0     
+pidl         20     4      0     
+ppp          13     0      0     
 python       0      0      0     
-rsync        38     10     0     
+rsync        34     10     0     
 samba        0      0      0     
 samba-docs   0      0      0     
 samba-gtk    4      4      0     
-samba4       35     19     2     
-samba_3_0    38     16     0     
-smb-build    35     35     0     
-talloc       37     8      0     
-tdb          37     2      0     
+samba4       32     19     4     
+samba_3_0    35     15     0     
+smb-build    31     31     0     
+talloc       34     6      0     
+tdb          33     2      0     
 

         

4vktrlc4 fgss