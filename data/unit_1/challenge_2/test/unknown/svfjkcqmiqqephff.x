From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 19:52:46 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BNqkL9020149
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 19:52:46 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 4882416384B
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 23:52:45 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=3.8 tests=AWL,BAYES_00,
	DATE_IN_PAST_06_12,FORGED_RCVD_HELO autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from smtp-vbr1.xs4all.nl (smtp-vbr1.xs4all.nl [194.109.24.21])
	by lists.samba.org (Postfix) with ESMTP id BBD98162BE2
	for <samba-cvs@samba.org>; Mon, 11 Jun 2007 23:52:08 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr1.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5BNq2xv091222
	for <samba-cvs@samba.org>; Tue, 12 Jun 2007 01:52:07 +0200 (CEST)
	(envelope-from jelmer@vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id 53CAE103824
	for <samba-cvs@samba.org>; Tue, 12 Jun 2007 01:52:02 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id nMTztAoFgvev for <samba-cvs@samba.org>;
	Tue, 12 Jun 2007 01:51:55 +0200 (CEST)
Received: from ganieda.vernstok.nl (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id 7B06E10381D
	for <samba-cvs@samba.org>; Tue, 12 Jun 2007 01:51:55 +0200 (CEST)
Received: by ganieda.vernstok.nl (Postfix, from userid 1000)
	id BE8755C4439; Mon, 11 Jun 2007 15:27:37 +0200 (CEST)
To: samba-cvs@samba.org
From: Jelmer Vernooij <jelmer@samba.org>
Message-Id: <20070611132737.BE8755C4439@ganieda.vernstok.nl>
Date: Mon, 11 Jun 2007 15:27:37 +0200 (CEST)
X-Virus-Scanned: by XS4ALL Virus Scanner
Subject: Rev 12283: add copyright info,
	test for pwd. in file:///home/jelmer/bzr.samba4/spoolss/
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

At file:///home/jelmer/bzr.samba4/spoolss/

------------------------------------------------------------
revno: 12283
revision-id: jelmer@samba.org-20070528013344-qpv94f1sgdyhcpyi
parent: svn-v3-undefined:0c0555d6-39d7-0310-84fc-f1cc0bd64818:branches%2FSAMBA_4_0:23158
committer: Jelmer Vernooij <jelmer@samba.org>
branch nick: simplefixes
timestamp: Mon 2007-05-28 03:33:44 +0200
message:
  add copyright info, test for pwd.
modified:
  testprogs/blackbox/test_smbclient.sh 20746@0c0555d6-39d7-0310-84fc-f1cc0bd64818:branches%2FSAMBA_4_0:testprogs%2Fblackbox%2Ftest_smbclient.sh
=== modified file 'testprogs/blackbox/test_smbclient.sh'
--- a/testprogs/blackbox/test_smbclient.sh	2007-04-12 10:25:01 +0000
+++ b/testprogs/blackbox/test_smbclient.sh	2007-05-28 01:33:44 +0000
@@ -1,4 +1,7 @@
 #!/bin/sh
+# Blackbox tests for smbclient
+# Copyright (C) 2006-2007 Jelmer Vernooij <jelmer@samba.org>
+# Copyright (C) 2006-2007 Andrew Bartlett <abartlet@samba.org>
 
 if [ $# -lt 5 ]; then
 cat <<EOF
@@ -96,6 +99,8 @@
 echo ls | runcmd "List directory with LANMAN1" -m LANMAN1 || failed=`expr $failed + 1`
 echo ls | runcmd "List directory with LANMAN2" -m LANMAN2 || failed=`expr $failed + 1`
 
+echo pwd | runcmd "Print current working directory" || failed=`expr $failed + 1`
+
 echo ls | testit "Test login with --machine-pass without kerberos" $VALGRIND bin/smbclient $CONFIGURATION //$SERVER/tmp --machine-pass -k no || failed=`expr $failed + 1`
 
 echo ls | testit "Test login with --machine-pass and kerberos" $VALGRIND bin/smbclient $CONFIGURATION //$SERVER/tmp --machine-pass -k yes || failed=`expr $failed + 1`

         

o wygtH