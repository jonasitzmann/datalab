From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 05:46:30 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l569kUhB019965
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 05:46:30 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 3B6A2162C34
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 09:46:24 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 356B3162ACD; Wed,  6 Jun 2007 09:46:16 +0000 (GMT)
Date: Wed, 06 Jun 2007 19:46:25 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070606094616.356B3162ACD@lists.samba.org>
Subject: Rev 482: disable a node if testparm thinks there is a error,
	or warning,
	or an unrecognised option in http://samba.org/~tridge/ctdb
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
revno: 482
revision-id: tridge@samba.org-20070606094625-rr6b22zkbeskchvj
parent: tridge@samba.org-20070606064959-prbxq97dwqthth82
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Wed 2007-06-06 19:46:25 +1000
message:
  disable a node if testparm thinks there is a error, or warning, or an unrecognised option
modified:
  config/events.d/50.samba       samba-20070601105340-vlcvnp6euoj3zdwy-3
=== modified file 'config/events.d/50.samba'
--- a/config/events.d/50.samba	2007-06-06 02:08:42 +0000
+++ b/config/events.d/50.samba	2007-06-06 09:46:25 +0000
@@ -52,6 +52,11 @@
 	;;
 
      monitor)
+	testparm -st 2>&1 | egrep '^WARNING|^ERROR|^Unknown' && {
+	    echo "`date` ERROR: testparm shows smb.conf is not clean"
+	    exit 1
+	}
+
 	smb_dirs=`testparm -st 2> /dev/null | egrep '^\s*path = '  | cut -d= -f2`
 	ctdb_check_directories "Samba" $smb_dirs	
 

  

�e-7uvtYe 8W ec