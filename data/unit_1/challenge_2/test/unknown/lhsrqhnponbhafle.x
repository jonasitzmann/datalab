From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 16 19:27:57 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GNRvL9020573
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 19:27:57 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 72C19162BDA
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 23:27:55 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=3.8 tests=AWL,BAYES_00,
	DATE_IN_PAST_03_06,NO_REAL_NAME,NO_RELAYS,RCVD_IN_DSBL autolearn=no 
	version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id A16C4162AC5; Sat, 16 Jun 2007 23:27:31 +0000 (GMT)
Date: Sun, 17 Jun 2007 04:06:35 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070616232731.A16C4162AC5@lists.samba.org>
Subject: Rev 595: can't use - in rpm release number in
	http://samba.org/~tridge/3_0-ctdb
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
revno: 595
revision-id: tridge@samba.org-20070616180634-t7eoiva1rd4694p8
parent: tridge@samba.org-20070616174913-9n5iz5j8gakbyoj7
committer: Andrew Tridgell <tridge@samba.org>
branch nick: s3-ctdb-tridge
timestamp: Sun 2007-06-17 04:06:34 +1000
message:
  can't use - in rpm release number
modified:
  packaging/RHEL4-CTDB/samba.spec samba.spec-20070530192107-og9sp62ho5xuaaer-4
=== modified file 'packaging/RHEL4-CTDB/samba.spec'
--- a/packaging/RHEL4-CTDB/samba.spec	2007-06-16 17:49:13 +0000
+++ b/packaging/RHEL4-CTDB/samba.spec	2007-06-16 18:06:34 +0000
@@ -6,7 +6,7 @@
 Packager: Samba Team <samba@samba.org>
 Name:         samba
 Version:      3.0.25
-Release:      ctdb-1
+Release:      ctdb.1
 Epoch:        0
 License: GNU GPL version 2
 Group: System Environment/Daemons

         

ir$eRJ:IVe