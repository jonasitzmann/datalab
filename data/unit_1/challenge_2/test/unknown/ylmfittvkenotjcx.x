From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 19:53:09 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BNr9L9020176
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 19:53:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 00B89163921
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 23:53:09 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO autolearn=ham version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from smtp-vbr3.xs4all.nl (smtp-vbr3.xs4all.nl [194.109.24.23])
	by lists.samba.org (Postfix) with ESMTP id E6F69162BE2
	for <samba-cvs@samba.org>; Mon, 11 Jun 2007 23:52:33 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr3.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5BNqXFO090083
	for <samba-cvs@samba.org>; Tue, 12 Jun 2007 01:52:33 +0200 (CEST)
	(envelope-from jelmer@vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id C487410381E
	for <samba-cvs@samba.org>; Tue, 12 Jun 2007 01:52:32 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id uoTqBzBpjkXH for <samba-cvs@samba.org>;
	Tue, 12 Jun 2007 01:52:22 +0200 (CEST)
Received: from ganieda.vernstok.nl (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id 59244103822
	for <samba-cvs@samba.org>; Tue, 12 Jun 2007 01:51:56 +0200 (CEST)
Received: by ganieda.vernstok.nl (Postfix, from userid 1000)
	id 1772A5C46F3; Mon, 11 Jun 2007 15:27:44 +0200 (CEST)
To: samba-cvs@samba.org
From: Jelmer Vernooij <jelmer@samba.org>
Message-Id: <20070611132745.1772A5C46F3@ganieda.vernstok.nl>
Date: Mon, 11 Jun 2007 15:27:45 +0200 (CEST)
X-Virus-Scanned: by XS4ALL Virus Scanner
Subject: Rev 12285: Add generic tests for ReplyOpenPrinter() and
	ReplyClosePrinter(). in file:///home/jelmer/bzr.samba4/spoolss/
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
revno: 12285
revision-id: jelmer@samba.org-20070528232035-25ruz8bhjnclnzps
parent: jelmer@samba.org-20070528194403-hw2nim09zkr7rqiq
committer: Jelmer Vernooij <jelmer@samba.org>
branch nick: spoolss
timestamp: Tue 2007-05-29 01:20:35 +0200
message:
  Add generic tests for ReplyOpenPrinter() and ReplyClosePrinter().
modified:
  source/rpc_server/spoolss/dcesrv_spoolss.c 1185@0c0555d6-39d7-0310-84fc-f1cc0bd64818:branches%2FSAMBA_4_0:source%2Frpc_server%2Fspoolss%2Fdcesrv_spoolss.c
  source/torture/rpc/spoolss.c   6@0c0555d6-39d7-0310-84fc-f1cc0bd64818:branches%2FSAMBA_4_0:source%2Ftorture%2Frpc%2Fspoolss.c
=== modified file 'source/rpc_server/spoolss/dcesrv_spoolss.c'
--- a/source/rpc_server/spoolss/dcesrv_spoolss.c	2007-05-28 19:44:03 +0000
+++ b/source/rpc_server/spoolss/dcesrv_spoolss.c	2007-05-28 23:20:35 +0000
@@ -1070,7 +1070,13 @@
 static WERROR dcesrv_spoolss_ReplyClosePrinter(struct dcesrv_call_state *dce_call, TALLOC_CTX *mem_ctx,
 		       struct spoolss_ReplyClosePrinter *r)
 {
-	DCESRV_FAULT(DCERPC_FAULT_OP_RNG_ERROR);
+	struct dcesrv_handle *handle;
+	
+	DCESRV_PULL_HANDLE_WERR(handle, r->in.handle, SPOOLSS_NOTIFY);
+
+	talloc_free(handle);
+
+	return WERR_OK;
 }
 
 

=== modified file 'source/torture/rpc/spoolss.c'
--- a/source/torture/rpc/spoolss.c	2007-05-28 19:44:03 +0000
+++ b/source/torture/rpc/spoolss.c	2007-05-28 23:20:35 +0000
@@ -2072,6 +2072,41 @@
 	return ret;
 }
 
+/** Test that makes sure that calling ReplyOpenPrinter()
+ * on Samba 4 will cause an irpc broadcast call.
+ */
+static bool test_ReplyOpenPrinter(struct torture_context *tctx, 
+								  struct dcerpc_pipe *pipe)
+{
+	struct spoolss_ReplyOpenPrinter r;
+	struct spoolss_ReplyClosePrinter s;
+	struct policy_handle h;
+
+	r.in.server_name = "earth";
+	r.in.printer_local = 2;
+	r.in.type = REG_DWORD;
+	r.in.unknown1 = 0;
+	r.in.unknown2 = 0;
+	r.out.handle = &h;
+
+	torture_assert_ntstatus_ok(tctx, 
+			dcerpc_spoolss_ReplyOpenPrinter(pipe, tctx, &r),
+			"spoolss_ReplyOpenPrinter call failed");
+
+	torture_assert_werr_ok(tctx, r.out.result, "error return code");
+
+	s.in.handle = &h;
+	s.out.handle = &h;
+
+	torture_assert_ntstatus_ok(tctx,
+			dcerpc_spoolss_ReplyClosePrinter(pipe, tctx, &s),
+			"spoolss_ReplyClosePrinter call failed");
+
+	torture_assert_werr_ok(tctx, r.out.result, "error return code");
+
+	return true;
+}
+
 BOOL torture_rpc_spoolss(struct torture_context *torture)
 {
 	NTSTATUS status;
@@ -2133,6 +2168,8 @@
 
 	ret &= test_EnumPrinterDrivers_old(p, mem_ctx);
 
+	ret &= test_ReplyOpenPrinter(torture, p);
+
 	talloc_free(mem_ctx);
 
 	return ret;



iVcemp. :rDes q