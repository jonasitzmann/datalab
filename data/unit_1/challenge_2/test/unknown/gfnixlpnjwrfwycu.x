From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun 10 21:21:13 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5B1LCL9008316
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 10 Jun 2007 21:21:12 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 60F0D1638CB
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 01:21:12 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from smtp-vbr9.xs4all.nl (smtp-vbr9.xs4all.nl [194.109.24.29])
	by lists.samba.org (Postfix) with ESMTP id 33657162AC7
	for <samba-cvs@samba.org>; Mon, 11 Jun 2007 01:20:31 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr9.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5B1KUMS076141
	for <samba-cvs@samba.org>; Mon, 11 Jun 2007 03:20:31 +0200 (CEST)
	(envelope-from jelmer@vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id 5999910381E
	for <samba-cvs@samba.org>; Mon, 11 Jun 2007 03:20:30 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id MdeBN92sd-yY for <samba-cvs@samba.org>;
	Mon, 11 Jun 2007 03:20:20 +0200 (CEST)
Received: from ganieda.vernstok.nl (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id 4BF7C10381D
	for <samba-cvs@samba.org>; Mon, 11 Jun 2007 03:20:20 +0200 (CEST)
Received: by ganieda.vernstok.nl (Postfix, from userid 1000)
	id DF2045C4266; Mon, 11 Jun 2007 03:20:20 +0200 (CEST)
To: samba-cvs@samba.org
From: Jelmer Vernooij <jelmer@samba.org>
Message-Id: <20070611012020.DF2045C4266@ganieda.vernstok.nl>
Date: Mon, 11 Jun 2007 03:20:20 +0200 (CEST)
X-Virus-Scanned: by XS4ALL Virus Scanner
Subject: Rev 11181: Fix compilation of some more hive backends. in
	file:///home/jelmer/bzr.samba-old/4.0-regwrite/
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

At file:///home/jelmer/bzr.samba-old/4.0-regwrite/

------------------------------------------------------------
revno: 11181
revision-id: jelmer@samba.org-20070602152504-3bij55pqljimwz31
parent: jelmer@samba.org-20070602140325-y0nwln7k17vaj14o
committer: Jelmer Vernooij <jelmer@samba.org>
branch nick: 4.0-regwrite
timestamp: Sat 2007-06-02 17:25:04 +0200
message:
  Fix compilation of some more hive backends.
modified:
  source/lib/registry/creg.c     svn-v2:4132@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flib%2fregistry%2freg_backend_w95.c
  source/lib/registry/hive.h     hive.h-20070423140448-w1nvzs8d2qxvyswz-1
  source/lib/registry/interface.c svn-v2:20@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flib%2fregistry%2fcommon%2freg_interface.c
  source/lib/registry/ldb.c      svn-v2:4132@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flib%2fregistry%2freg_backend_ldb.c
  source/lib/registry/local.c    local.c-20070602140117-9a3wth1mhbrq7ej1-2
  source/lib/registry/regf.c     svn-v2:4132@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flib%2fregistry%2freg_backend_nt4.c
  source/lib/registry/registry.h svn-v2:10026@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flib%2fregistry%2fregistry.h

Diff too large for email (1116 lines, the limit is 1000).

         

xo Doo4twgsi