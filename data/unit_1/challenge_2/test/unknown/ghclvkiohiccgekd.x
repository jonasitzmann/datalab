From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 23:50:54 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C3orL9021948
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 23:50:53 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D0E07163845
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 03:50:52 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL,BAYES_50,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 4489E162C1D; Tue, 12 Jun 2007 03:50:03 +0000 (GMT)
Date: Tue, 12 Jun 2007 13:22:40 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070612035003.4489E162C1D@lists.samba.org>
Subject: Rev 539: fixed rendering in IE in http://samba.org/~tridge/ctdb
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
revno: 539
revision-id: tridge@samba.org-20070612032239-f2siru8du4jv1ekl
parent: tridge@samba.org-20070612030452-b4flgik4vatsq2rh
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Tue 2007-06-12 13:22:39 +1000
message:
  fixed rendering in IE
modified:
  web/header.html                header.html-20070608035834-k7u3xijgdxt4e0pw-2
=== modified file 'web/header.html'
--- a/web/header.html	2007-06-12 03:04:52 +0000
+++ b/web/header.html	2007-06-12 03:22:39 +0000
@@ -3,8 +3,9 @@
 <meta http-equiv="Content-Type" content="text/html;charset=utf-8" >
 </HEAD>
 
-<BODY BGCOLOR="#ffffff" TEXT="#000000" VLINK="#292555" LINK="#292555" ALINK="#cc0033"
-<TABLE BORDER=0 WIDTH="640" ALIGN="CENTER">
+<BODY BGCOLOR="#ffffff" TEXT="#000000" VLINK="#292555" LINK="#292555"
+      ALINK="#cc0033">
+<TABLE BORDER=0 WIDTH="75%" ALIGN="CENTER">
   <tr VALIGN="middle">
     <td ALIGN="left">
 	<ul>

             

rrr7Qvc.o