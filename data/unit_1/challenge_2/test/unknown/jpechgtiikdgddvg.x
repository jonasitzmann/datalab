From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 20:02:09 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5R028L9019437
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 20:02:08 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id CDA0A16381C
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 27 Jun 2007 00:02:05 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@lists.samba.org
Delivered-To: samba-cvs@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 510)
	id 7BBA4162ADF; Wed, 27 Jun 2007 00:01:40 +0000 (GMT)
To: samba-cvs@lists.samba.org
Message-Id: <20070627000140.7BBA4162ADF@lists.samba.org>
Date: Wed, 27 Jun 2007 00:01:40 +0000 (GMT)
From: build@samba.org
Subject: Build status as of Wed Jun 27 00:00:01 2007
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

--- /home/build/master/cache/broken_results.txt.old	2007-06-26 00:00:27.000000000 +0000
+++ /home/build/master/cache/broken_results.txt	2007-06-27 00:01:40.000000000 +0000
@@ -1,25 +1,25 @@
-Build status as of Tue Jun 26 00:00:02 2007
+Build status as of Wed Jun 27 00:00:01 2007
 
 Build counts:
 Tree         Total  Broken Panic 
 SOC          0      0      0     
 build_farm   0      0      0     
-ccache       33     7      0     
+ccache       34     8      0     
 ctdb         0      0      0     
 distcc       2      0      0     
-ldb          31     4      0     
-libreplace   31     11     0     
-lorikeet-heimdal 28     14     0     
+ldb          33     3      0     
+libreplace   32     10     0     
+lorikeet-heimdal 29     14     0     
 pidl         17     3      0     
 ppp          14     9      0     
 python       0      0      0     
-rsync        33     11     0     
+rsync        34     12     0     
 samba        0      0      0     
 samba-docs   0      0      0     
 samba-gtk    4      4      0     
-samba4       30     23     8     
-samba_3_0    33     16     0     
-smb-build    30     30     0     
-talloc       33     9      0     
-tdb          31     2      0     
+samba4       31     25     12    
+samba_3_0    34     32     0     
+smb-build    31     31     0     
+talloc       34     8      0     
+tdb          33     1      0     
 

                  

 -R0.s d