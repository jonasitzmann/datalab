From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 20:00:46 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l6500jL9018853
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 20:00:46 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AC7F3163842
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  5 Jul 2007 00:00:41 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=3.8 tests=AWL,BAYES_20,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@lists.samba.org
Delivered-To: samba-cvs@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 510)
	id 5A1B1162B00; Thu,  5 Jul 2007 00:00:32 +0000 (GMT)
To: samba-cvs@lists.samba.org
Message-Id: <20070705000032.5A1B1162B00@lists.samba.org>
Date: Thu,  5 Jul 2007 00:00:32 +0000 (GMT)
From: build@samba.org
Subject: Build status as of Thu Jul  5 00:00:01 2007
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

--- /home/build/master/cache/broken_results.txt.old	2007-07-04 00:01:45.000000000 +0000
+++ /home/build/master/cache/broken_results.txt	2007-07-05 00:00:30.000000000 +0000
@@ -1,25 +1,25 @@
-Build status as of Wed Jul  4 00:00:02 2007
+Build status as of Thu Jul  5 00:00:01 2007
 
 Build counts:
 Tree         Total  Broken Panic 
 SOC          0      0      0     
 build_farm   0      0      0     
-ccache       36     9      0     
+ccache       35     8      0     
 ctdb         0      0      0     
 distcc       2      0      0     
-ldb          35     3      0     
+ldb          34     3      0     
 libreplace   33     10     0     
-lorikeet-heimdal 31     13     0     
-pidl         19     4      0     
+lorikeet-heimdal 30     13     0     
+pidl         18     4      0     
 ppp          15     10     0     
 python       0      0      0     
-rsync        36     12     0     
+rsync        34     12     0     
 samba        0      0      0     
 samba-docs   0      0      0     
 samba-gtk    4      4      0     
-samba4       33     17     6     
-samba_3_0    36     18     0     
-smb-build    33     33     0     
-talloc       36     8      0     
-tdb          35     1      0     
+samba4       32     21     8     
+samba_3_0    35     18     0     
+smb-build    32     32     0     
+talloc       35     8      0     
+tdb          34     1      0     
 

         

vz2er