From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 16 14:01:02 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GI11L9018059
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 14:01:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 103A2162BE0
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 18:01:00 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 3E49E162AD7; Sat, 16 Jun 2007 18:00:26 +0000 (GMT)
Date: Sun, 17 Jun 2007 03:49:14 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070616180026.3E49E162AD7@lists.samba.org>
Subject: Rev 594: add a rpm release number in
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
revno: 594
revision-id: tridge@samba.org-20070616174913-9n5iz5j8gakbyoj7
parent: tridge@samba.org-20070616174439-c1fqcwt8v32vu47e
committer: Andrew Tridgell <tridge@samba.org>
branch nick: s3-ctdb-tridge
timestamp: Sun 2007-06-17 03:49:13 +1000
message:
  add a rpm release number
modified:
  packaging/RHEL4-CTDB/samba.spec samba.spec-20070530192107-og9sp62ho5xuaaer-4
=== modified file 'packaging/RHEL4-CTDB/samba.spec'
--- a/packaging/RHEL4-CTDB/samba.spec	2007-05-30 19:21:19 +0000
+++ b/packaging/RHEL4-CTDB/samba.spec	2007-06-16 17:49:13 +0000
@@ -6,7 +6,7 @@
 Packager: Samba Team <samba@samba.org>
 Name:         samba
 Version:      3.0.25
-Release:      ctdb
+Release:      ctdb-1
 Epoch:        0
 License: GNU GPL version 2
 Group: System Environment/Daemons

            

/
�Bsec