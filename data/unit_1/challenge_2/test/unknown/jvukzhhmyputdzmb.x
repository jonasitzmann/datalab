From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  9 01:22:03 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l595M3L9005551
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 9 Jun 2007 01:22:03 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 5AF83163821
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  9 Jun 2007 05:22:03 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL,BAYES_50,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 13587162BC3; Sat,  9 Jun 2007 05:21:44 +0000 (GMT)
Date: Sat, 09 Jun 2007 14:59:36 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070609052144.13587162BC3@lists.samba.org>
Subject: Rev 515: added documentation page in http://samba.org/~tridge/ctdb
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
revno: 515
revision-id: tridge@samba.org-20070609045936-lw1ssc0qbikeej6r
parent: tridge@samba.org-20070609044452-gud3ha36z19wbvf0
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sat 2007-06-09 14:59:36 +1000
message:
  added documentation page
added:
  web/documentation.html         documentation.html-20070609045837-x3vec3l27niwxtfg-1
modified:
  web/header.html                header.html-20070608035834-k7u3xijgdxt4e0pw-2
=== added file 'web/documentation.html'
--- a/web/documentation.html	1970-01-01 00:00:00 +0000
+++ b/web/documentation.html	2007-06-09 04:59:36 +0000
@@ -0,0 +1,24 @@
+<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
+<HTML>
+<HEAD>
+<TITLE>CTDB Documentation</TITLE>
+</HEAD>
+<!--#include virtual="header.html" -->
+
+<h1>CTDB Documentation</h1>
+
+Not all CTDB documentation is complete yet, but here are some bits to
+get you started
+
+<ul>
+<li><a href="http://ctdb.samba.org/~tridge/ctdb/doc/ctdb.1.html">ctdb manual page</a>
+<li><a href="building.html">building CTDB</a>
+<li><a href="configuring.html">configuring CTDB</a>
+<li><a href="configuring.html">testing CTDB</a>
+<li><a href="samba.html">Setting up Samba with CTDB</a>
+<li><a href="ftp.html">Setting up FTP with CTDB</a>
+<li><a href="nfs.html">Setting up NFS with CTDB</a>
+<li><a href="http://wiki.samba.org/index.php/CTDB_Setup">CTDB Wiki</a>
+</ul>
+
+<!--#include virtual="footer.html" -->

=== modified file 'web/header.html'
--- a/web/header.html	2007-06-08 04:37:11 +0000
+++ b/web/header.html	2007-06-09 04:59:36 +0000
@@ -5,7 +5,7 @@
     <td ALIGN="left">
 	<ul>
       <li><small><a href=".">home</a></small>
-      <li><small><a href="download.html">download</a></small>
+      <li><small><a href="documentation.html">download</a></small>
       <li><small><a href="configuring.html">configuring</a></small>
       <li><small><a href="building.html">building</a></small>
 	</ul>
@@ -15,6 +15,7 @@
     </td>
     <td align="left">
       <ul>
+      <li><small><a href="download.html">testing</a></small>
       <li><small><a href="testing.html">testing</a></small>
       <li><small><a href="http://wiki.samba.org/index.php/CTDB_Setup">wiki</a></small>
       <li><small><a href="http://bugzilla.samba.org/">bug-tracking</a></small>

               

iDewhgGC , /F6