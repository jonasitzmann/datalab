From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  9 07:32:10 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59BWAL9009021
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 9 Jun 2007 07:32:10 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 181BE163819
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  9 Jun 2007 11:32:10 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=3.8 tests=AWL,BAYES_40,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 1418C162AC5; Sat,  9 Jun 2007 11:31:53 +0000 (GMT)
Date: Sat, 09 Jun 2007 21:31:59 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070609113153.1418C162AC5@lists.samba.org>
Subject: Rev 520: merge from ronnie in http://samba.org/~tridge/ctdb
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
revno: 520
revision-id: tridge@samba.org-20070609113159-5dbmd2zzrudupla8
parent: tridge@samba.org-20070609052832-x558qiq25yeye30k
parent: sahlberg@ronnie-20070609101325-65apvsghait3cob6
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sat 2007-06-09 21:31:59 +1000
message:
  merge from ronnie
added:
  web/prerequisites.html         prerequisites.html-20070609072440-316agucpmgyar8n9-1
modified:
  server/ctdb_recoverd.c         recoverd.c-20070503213540-bvxuyd9jm1f7ig90-1
  web/documentation.html         documentation.html-20070609045837-x3vec3l27niwxtfg-1
  web/index.html                 ctdb.html-20070601052353-vgod9lfo4an4o83j-2
    ------------------------------------------------------------
    revno: 432.1.65
    merged: sahlberg@ronnie-20070609101325-65apvsghait3cob6
    parent: sahlberg@ronnie-20070609101151-cbt48hofe9qf2br1
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 20:13:25 +1000
    message:
      should be sufficient to unban nodes when we unbecome recmaster
    ------------------------------------------------------------
    revno: 432.1.64
    merged: sahlberg@ronnie-20070609101151-cbt48hofe9qf2br1
    parent: sahlberg@ronnie-20070609094928-jetgujizp5286osb
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 20:11:51 +1000
    message:
      unban all nodes when we release recmaster role or when we win an 
      election
    ------------------------------------------------------------
    revno: 432.1.63
    merged: sahlberg@ronnie-20070609094928-jetgujizp5286osb
    parent: sahlberg@ronnie-20070609094241-8ls89c059hkeoopa
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 19:49:28 +1000
    message:
      remove rht unban code from when we take recmaster role.   we can not 
      send control broadcasts yet
    ------------------------------------------------------------
    revno: 432.1.62
    merged: sahlberg@ronnie-20070609094241-8ls89c059hkeoopa
    parent: sahlberg@ronnie-20070609074524-msfy22b977z5luc1
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 19:42:41 +1000
    message:
      add code to unban when we become/unbecome recmaster
    ------------------------------------------------------------
    revno: 432.1.61
    merged: sahlberg@ronnie-20070609074524-msfy22b977z5luc1
    parent: sahlberg@ronnie-20070609072444-x81ar8lm0t39se17
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 17:45:24 +1000
    message:
      capitalize some links
    ------------------------------------------------------------
    revno: 432.1.60
    merged: sahlberg@ronnie-20070609072444-x81ar8lm0t39se17
    parent: sahlberg@ronnie-20070609071659-rff3ycim4ytcn3a2
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 17:24:44 +1000
    message:
      add a tiny prerequisites page stating that you need a cluster filesystem 
      first before you install CTDB
    ------------------------------------------------------------
    revno: 432.1.59
    merged: sahlberg@ronnie-20070609071659-rff3ycim4ytcn3a2
    parent: sahlberg@ronnie-20070609071526-mqpk7szyrcdutqab
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 17:16:59 +1000
    message:
      create a separate list of links for the manpages
    ------------------------------------------------------------
    revno: 432.1.58
    merged: sahlberg@ronnie-20070609071526-mqpk7szyrcdutqab
    parent: sahlberg@ronnie-20070609053817-yl14lhl41xsmmzmi
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 17:15:26 +1000
    message:
      replace the list of documentation links on the front page with a link to 
      the documentations page
    ------------------------------------------------------------
    revno: 432.1.57
    merged: sahlberg@ronnie-20070609053817-yl14lhl41xsmmzmi
    parent: sahlberg@ronnie-20070609051716-mfxwueq39a30tgsf
    parent: tridge@samba.org-20070609052130-7kxgjidk0a3frpdc
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 15:38:17 +1000
    message:
      merge from tridge
    ------------------------------------------------------------
    revno: 432.1.56
    merged: sahlberg@ronnie-20070609051716-mfxwueq39a30tgsf
    parent: sahlberg@ronnie-20070609035531-3czj4em17pohyjhx
    parent: tridge@samba.org-20070609051105-qttmz36qj1fsfrqh
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 15:17:16 +1000
    message:
      merge from tridge
=== added file 'web/prerequisites.html'
--- a/web/prerequisites.html	1970-01-01 00:00:00 +0000
+++ b/web/prerequisites.html	2007-06-09 07:24:44 +0000
@@ -0,0 +1,22 @@
+<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
+<HTML>
+<HEAD>
+<TITLE>Prerequisites</TITLE>
+</HEAD>
+<!--#include virtual="header.html" -->
+
+<h1>Prerequisites</h1>
+
+Before you can start using CTDB you must first install and configure a bunch of linux boxes.<br><br>
+
+After that you need to install and configure a cluster filesystem and mount that cluster filesystem on all the linux boxes that will form your cluster.<br><br>
+
+We have primarily used the GPFS filesystem for our testing but any cluster filesystem should work as long as it provides correct file locking.<br>
+
+<h1>Other cluster filesystems</h1>
+While we primarily test with GPFS, CTDB should work with almost any other cluster filesystem as well.<br><br>
+Please let us know your experiences in using other cluster filesystems.
+
+
+<!--#include virtual="footer.html" -->
+

=== modified file 'server/ctdb_recoverd.c'
--- a/server/ctdb_recoverd.c	2007-06-07 12:06:19 +0000
+++ b/server/ctdb_recoverd.c	2007-06-09 10:13:25 +0000
@@ -888,6 +888,30 @@
 	return 0;
 }
 
+/*
+  this function will unban all nodes in the cluster
+*/
+static void unban_all_nodes(struct ctdb_context *ctdb)
+{
+	int ret, i;
+	struct ctdb_node_map *nodemap;
+	TALLOC_CTX *tmp_ctx = talloc_new(ctdb);
+	
+	ret = ctdb_ctrl_getnodemap(ctdb, CONTROL_TIMEOUT(), CTDB_CURRENT_NODE, tmp_ctx, &nodemap);
+	if (ret != 0) {
+		DEBUG(0,(__location__ " failed to get nodemap to unban all nodes\n"));
+		return;
+	}
+
+	for (i=0;i<nodemap->num;i++) {
+		if ( (!(nodemap->nodes[i].flags & NODE_FLAGS_DISCONNECTED))
+		  && (nodemap->nodes[i].flags & NODE_FLAGS_BANNED) ) {
+			ctdb_ctrl_modflags(ctdb, CONTROL_TIMEOUT(), nodemap->nodes[i].vnn, 0, NODE_FLAGS_BANNED);
+		}
+	}
+
+	talloc_free(tmp_ctx);
+}
 
 /*
   handler for recovery master elections
@@ -912,6 +936,7 @@
 			DEBUG(0, (__location__ " failed to initiate recmaster election"));
 		}
 		talloc_free(mem_ctx);
+		/*unban_all_nodes(ctdb);*/
 		return;
 	}
 
@@ -920,6 +945,7 @@
 	    ctdb->recovery_lock_fd != -1) {
 		close(ctdb->recovery_lock_fd);
 		ctdb->recovery_lock_fd = -1;
+		unban_all_nodes(ctdb);
 	}
 
 	/* ok, let that guy become recmaster then */

=== modified file 'web/documentation.html'
--- a/web/documentation.html	2007-06-09 05:11:05 +0000
+++ b/web/documentation.html	2007-06-09 07:45:24 +0000
@@ -11,15 +11,20 @@
 get you started
 
 <ul>
-<li><a href="http://ctdb.samba.org/~tridge/ctdb/doc/ctdb.1.html">ctdb manual page</a>
-<li><a href="download.html">downloading CTDB</a>
-<li><a href="building.html">building CTDB</a>
-<li><a href="configuring.html">configuring CTDB</a>
-<li><a href="configuring.html">testing CTDB</a>
+<li><a href="prerequisites.html">Prerequisites</a>
+<li><a href="download.html">Downloading CTDB</a>
+<li><a href="building.html">Building CTDB</a>
+<li><a href="configuring.html">Configuring CTDB</a>
+<li><a href="configuring.html">Testing CTDB</a>
 <li><a href="samba.html">Setting up Samba with CTDB</a>
 <li><a href="ftp.html">Setting up FTP with CTDB</a>
 <li><a href="nfs.html">Setting up NFS with CTDB</a>
 <li><a href="http://wiki.samba.org/index.php/CTDB_Setup">CTDB Wiki</a>
 </ul>
 
+Man pages:
+<ul>
+<li><a href="http://ctdb.samba.org/~tridge/ctdb/doc/ctdb.1.html">ctdb manual page</a>
+</ul>
+
 <!--#include virtual="footer.html" -->

=== modified file 'web/index.html'
--- a/web/index.html	2007-06-09 05:11:05 +0000
+++ b/web/index.html	2007-06-09 07:15:26 +0000
@@ -61,17 +61,8 @@
 
 <h2>Documentation</h2>
 
-<ul>
-<li><a href="download.html">Getting the code</a><br>
-<li><a href="building.html">Building Samba and CTDB</a><br>
-<li><a href="configuring.html">Configuring CTDB</a><br>
-<li><a href="testing.html">Starting and testing CTDB</a><br>
-<li><a href="samba.html">Setting up clustered Samba</a><br>
-<li><a href="nfs.html">Setting up clustered NFS</a><br>
-<li><a href="ftp.html">Setting up clustered FTP</a><br>
-</ul>
+<a href="./documentation.html">CTDB documentation</a><br><br>
 
-<br>
 Additional documentation on how to install and configure CTDB is available in the
 <a href="http://wiki.samba.org/index.php/CTDB_Setup">CTDB
   Wiki</a>. Please read all of the documentation carefully.
@@ -127,7 +118,7 @@
 <h2>Discussion and bug reports</h2>
 
 For discussions please use
-the <ahref="https://lists.samba.org/mailman/listinfo/samba-technical">samba-technical</a>
+the <a href="https://lists.samba.org/mailman/listinfo/samba-technical">samba-technical</a>
 mailing list. To submit a bug report, please use
 the <a href="http://bugzilla.samba.org/">Samba bugzilla</a> bug
 tracking system.

         

 ththoe dUsye5J