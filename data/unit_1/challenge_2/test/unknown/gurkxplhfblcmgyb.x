From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 12 00:43:38 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C4hcL9022359
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 00:43:38 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 51B2F1638BE
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 04:43:37 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL,BAYES_50,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 5266C162AEB; Tue, 12 Jun 2007 04:43:18 +0000 (GMT)
Date: Tue, 12 Jun 2007 14:43:27 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070612044318.5266C162AEB@lists.samba.org>
Subject: Rev 541: move all the headers into header.html in
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
revno: 541
revision-id: tridge@samba.org-20070612044326-k41jsy7qyyzt3ecj
parent: tridge@samba.org-20070612034401-y253hbv65b3yp7ee
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Tue 2007-06-12 14:43:26 +1000
message:
  move all the headers into header.html
modified:
  web/building.html              building_samba_ctdb.-20070608010834-qdxmpjp0ee51yctk-1
  web/configuring.html           configuring_ctdb.htm-20070608021649-cipqdfao7xedp6ji-1
  web/download.html              getting_the_code.htm-20070608005948-wn5ag3uowh6dbnwr-1
  web/ftp.html                   ftp.html-20070609033412-pwzhwyuj4qnifmmm-1
  web/header.html                header.html-20070608035834-k7u3xijgdxt4e0pw-2
  web/index.html                 ctdb.html-20070601052353-vgod9lfo4an4o83j-2
  web/nfs.html                   nfs.html-20070608234340-a8i1dxro7a7i6jz6-1
  web/prerequisites.html         prerequisites.html-20070609072440-316agucpmgyar8n9-1
  web/samba.html                 samba.html-20070608233143-cblz5ezz3qu11089-1
  web/testing.html               starting_and_testing-20070608025718-naa5fgl4tuhgdl8r-1
=== modified file 'web/building.html'
--- a/web/building.html	2007-06-12 03:04:52 +0000
+++ b/web/building.html	2007-06-12 04:43:26 +0000
@@ -1,5 +1,3 @@
-<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
-<HTML>
 <!--#set var="TITLE" value="Building CTDB" -->
 <!--#include virtual="header.html" -->
 

=== modified file 'web/configuring.html'
--- a/web/configuring.html	2007-06-12 03:04:52 +0000
+++ b/web/configuring.html	2007-06-12 04:43:26 +0000
@@ -1,5 +1,3 @@
-<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
-<HTML>
 <!--#set var="TITLE" value="Configuring CTDB" -->
 <!--#include virtual="header.html" -->
 

=== modified file 'web/download.html'
--- a/web/download.html	2007-06-12 03:04:52 +0000
+++ b/web/download.html	2007-06-12 04:43:26 +0000
@@ -1,5 +1,3 @@
-<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
-<HTML>
 <!--#set var="TITLE" value="Downloading CTDB" -->
 <!--#include virtual="header.html" -->
 

=== modified file 'web/ftp.html'
--- a/web/ftp.html	2007-06-12 03:04:52 +0000
+++ b/web/ftp.html	2007-06-12 04:43:26 +0000
@@ -1,5 +1,3 @@
-<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
-<HTML>
 <!--#set var="TITLE" value="CTDB and ftp" -->
 <!--#include virtual="header.html" -->
 

=== modified file 'web/header.html'
--- a/web/header.html	2007-06-12 03:22:39 +0000
+++ b/web/header.html	2007-06-12 04:43:26 +0000
@@ -1,3 +1,5 @@
+<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
+<HTML>
 <HEAD>
 <TITLE><!--#echo var="TITLE" --></TITLE>
 <meta http-equiv="Content-Type" content="text/html;charset=utf-8" >

=== modified file 'web/index.html'
--- a/web/index.html	2007-06-12 03:04:52 +0000
+++ b/web/index.html	2007-06-12 04:43:26 +0000
@@ -1,5 +1,3 @@
-<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
-<HTML>
 <!--#set var="TITLE" value="CTDB" -->
 <!--#include virtual="header.html" -->
 

=== modified file 'web/nfs.html'
--- a/web/nfs.html	2007-06-12 03:04:52 +0000
+++ b/web/nfs.html	2007-06-12 04:43:26 +0000
@@ -1,5 +1,3 @@
-<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
-<HTML>
 <!--#set var="TITLE" value="CTDB and NFS" -->
 <!--#include virtual="header.html" -->
 

=== modified file 'web/prerequisites.html'
--- a/web/prerequisites.html	2007-06-12 03:04:52 +0000
+++ b/web/prerequisites.html	2007-06-12 04:43:26 +0000
@@ -1,5 +1,3 @@
-<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
-<HTML>
 <!--#set var="TITLE" value="CTDB prerequisites" -->
 <!--#include virtual="header.html" -->
 

=== modified file 'web/samba.html'
--- a/web/samba.html	2007-06-12 03:04:52 +0000
+++ b/web/samba.html	2007-06-12 04:43:26 +0000
@@ -1,5 +1,3 @@
-<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
-<HTML>
 <!--#set var="TITLE" value="CTDB and Samba" -->
 <!--#include virtual="header.html" -->
 

=== modified file 'web/testing.html'
--- a/web/testing.html	2007-06-12 03:04:52 +0000
+++ b/web/testing.html	2007-06-12 04:43:26 +0000
@@ -1,5 +1,3 @@
-<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
-<HTML>
 <!--#set var="TITLE" value="CTDB Testing" -->
 <!--#include virtual="header.html" -->
 




ox+K A=ar+
h a