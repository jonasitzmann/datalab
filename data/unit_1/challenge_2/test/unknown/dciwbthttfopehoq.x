From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun 10 19:52:40 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ANqdL9007634
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 10 Jun 2007 19:52:39 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 2C7711638DD
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 10 Jun 2007 23:52:39 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=3.8 tests=AWL,BAYES_50,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id E14F9162C1A; Sun, 10 Jun 2007 23:52:06 +0000 (GMT)
Date: Mon, 11 Jun 2007 09:43:23 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070610235206.E14F9162C1A@lists.samba.org>
Subject: Rev 528: merge from ronnie in http://samba.org/~tridge/ctdb
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
revno: 528
revision-id: tridge@samba.org-20070610234323-6s6a8kxjx9ki9nwk
parent: tridge@samba.org-20070610072854-ztge8lpr11iz7o5n
parent: sahlberg@ronnie-20070610224251-wie16wf7b72zt27n
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Mon 2007-06-11 09:43:23 +1000
message:
  merge from ronnie
modified:
  config/events.d/10.interface   10.interface-20070604050809-s21zslfirn07zjt8-1
  doc/ctdb.1                     ctdb.1-20070609004027-2618fsab2br6vqha-1
  doc/ctdb.1.html                ctdb.1.html-20070609004024-w2r7qblwi5s3iw4a-1
    ------------------------------------------------------------
    revno: 432.1.75
    merged: sahlberg@ronnie-20070610224251-wie16wf7b72zt27n
    parent: sahlberg@ronnie-20070610223801-jjjt47y9h1weee6t
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Mon 2007-06-11 08:42:51 +1000
    message:
      when public interface is not set,  print this to the logfile before 
      exiting the script
    ------------------------------------------------------------
    revno: 432.1.74
    merged: sahlberg@ronnie-20070610223801-jjjt47y9h1weee6t
    parent: sahlberg@ronnie-20070610073152-dibldl71c7oiwyr1
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Mon 2007-06-11 08:38:01 +1000
    message:
      minor man page update
    ------------------------------------------------------------
    revno: 432.1.73
    merged: sahlberg@ronnie-20070610073152-dibldl71c7oiwyr1
    parent: sahlberg@ronnie-20070610044642-wktx698wu5ljb57q
    parent: tridge@samba.org-20070610072854-ztge8lpr11iz7o5n
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sun 2007-06-10 17:31:52 +1000
    message:
      merge from tridge
=== modified file 'config/events.d/10.interface'
--- a/config/events.d/10.interface	2007-06-09 11:46:42 +0000
+++ b/config/events.d/10.interface	2007-06-10 23:43:23 +0000
@@ -8,11 +8,17 @@
 . /etc/ctdb/functions
 loadconfig ctdb
 
-[ -z "$CTDB_PUBLIC_INTERFACE" ] && exit 0
-
 cmd="$1"
 shift
 
+[ -z "$CTDB_PUBLIC_INTERFACE" ] && {
+    [ "$cmd" = "startup" ] && {
+	echo "Event script $0 : CTDB_PUBLIC_INTERFACE not set. Nothing to do."
+    }
+    exit 0
+}
+
+
 case $cmd in 
      #############################
      # called when ctdbd starts up

=== modified file 'doc/ctdb.1'
--- a/doc/ctdb.1	2007-06-10 04:46:42 +0000
+++ b/doc/ctdb.1	2007-06-10 22:38:01 +0000
@@ -1,11 +1,11 @@
 .\"     Title: ctdb
 .\"    Author: 
 .\" Generator: DocBook XSL Stylesheets v1.71.0 <http://docbook.sf.net/>
-.\"      Date: 06/10/2007
+.\"      Date: 06/11/2007
 .\"    Manual: 
 .\"    Source: 
 .\"
-.TH "CTDB" "1" "06/10/2007" "" ""
+.TH "CTDB" "1" "06/11/2007" "" ""
 .\" disable hyphenation
 .nh
 .\" disable justification (adjust text to left margin only)
@@ -19,7 +19,7 @@
 \fBctdb\fR [\-n\ <node>] [\-Y] [\-t\ <timeout>] [\-?\ \-\-help] [\-\-usage] [\-d\ \-\-debug=<INTEGER>] [\-\-socket=<filename>]
 .SH "DESCRIPTION"
 .PP
-ctdb is the utility to view and manage a ctdb cluster.
+ctdb is a utility to view and manage a ctdb cluster.
 .SH "OPTIONS"
 .PP
 \-n <node>

=== modified file 'doc/ctdb.1.html'
--- a/doc/ctdb.1.html	2007-06-10 04:46:42 +0000
+++ b/doc/ctdb.1.html	2007-06-10 22:38:01 +0000
@@ -1,5 +1,5 @@
 <html><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><title>ctdb</title><meta name="generator" content="DocBook XSL Stylesheets V1.71.0"></head><body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="refentry" lang="en"><a name="ctdb.1"></a><div class="titlepage"></div><div class="refnamediv"><h2>Name</h2><p>ctdb &#8212; clustered tdb database management utility</p></div><div class="refsynopsisdiv"><h2>Synopsis</h2><div class="cmdsynopsis"><p><code class="command">ctdb [ OPTIONS ] COMMAND ...</code> </p></div><div class="cmdsynopsis"><p><code class="command">ctdb</code>  [-n &lt;node&gt;] [-Y] [-t &lt;timeout&gt;] [-? --help] [--usage] [-d --debug=&lt;INTEGER&gt;] [--socket=&lt;filename&gt;]</p></div></div><div class="refsect1" lang="en"><a name="id2478591"></a><h2>DESCRIPTION</h2><p>
-      ctdb is the utility to view and manage a ctdb cluster.
+      ctdb is a utility to view and manage a ctdb cluster.
     </p></div><div class="refsect1" lang="en"><a name="id2478600"></a><h2>OPTIONS</h2><div class="variablelist"><dl><dt><span class="term">-n &lt;node&gt;</span></dt><dd><p>
             This specifies on which node to execute the command. Default is
             to run the command on the deamon running on the local host.

   

_x9d7ci