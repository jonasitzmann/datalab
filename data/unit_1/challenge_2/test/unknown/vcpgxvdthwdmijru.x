From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 19:53:05 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BNr5L9020170
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 19:53:05 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 9742316390F
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 23:53:04 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=3.8 tests=AWL,BAYES_00,
	DATE_IN_PAST_06_12,FORGED_RCVD_HELO autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from smtp-vbr2.xs4all.nl (smtp-vbr2.xs4all.nl [194.109.24.22])
	by lists.samba.org (Postfix) with ESMTP id 30F32162C1D
	for <samba-cvs@samba.org>; Mon, 11 Jun 2007 23:52:27 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr2.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5BNqQAF091102
	for <samba-cvs@samba.org>; Tue, 12 Jun 2007 01:52:27 +0200 (CEST)
	(envelope-from jelmer@vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id 7BE3B10381E
	for <samba-cvs@samba.org>; Tue, 12 Jun 2007 01:52:26 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id 3wuaCMhoTV+t for <samba-cvs@samba.org>;
	Tue, 12 Jun 2007 01:52:09 +0200 (CEST)
Received: from ganieda.vernstok.nl (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id C94C3103820
	for <samba-cvs@samba.org>; Tue, 12 Jun 2007 01:51:55 +0200 (CEST)
Received: by ganieda.vernstok.nl (Postfix, from userid 1000)
	id C68145C459B; Mon, 11 Jun 2007 15:27:41 +0200 (CEST)
To: samba-cvs@samba.org
From: Jelmer Vernooij <jelmer@samba.org>
Message-Id: <20070611132741.C68145C459B@ganieda.vernstok.nl>
Date: Mon, 11 Jun 2007 15:27:41 +0200 (CEST)
X-Virus-Scanned: by XS4ALL Virus Scanner
Subject: Rev 12284: Add trivial ReplyOpenPrinter implementation and test. in
	file:///home/jelmer/bzr.samba4/spoolss/
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
revno: 12284
revision-id: jelmer@samba.org-20070528194403-hw2nim09zkr7rqiq
parent: jelmer@samba.org-20070528013344-qpv94f1sgdyhcpyi
committer: Jelmer Vernooij <jelmer@samba.org>
branch nick: spoolss
timestamp: Mon 2007-05-28 21:44:03 +0200
message:
  Add trivial ReplyOpenPrinter implementation and test.
added:
  source/torture/rpc/spoolss_notify.c spoolss_notify.c-20070528185809-3u228nfpbktzz5c2-1
modified:
  source/rpc_server/spoolss/dcesrv_spoolss.c 1185@0c0555d6-39d7-0310-84fc-f1cc0bd64818:branches%2FSAMBA_4_0:source%2Frpc_server%2Fspoolss%2Fdcesrv_spoolss.c
  source/selftest/test_rpc.sh    22575@0c0555d6-39d7-0310-84fc-f1cc0bd64818:branches%2FSAMBA_4_0:source%2Fselftest%2Ftest_rpc.sh
  source/torture/config.mk       860@0c0555d6-39d7-0310-84fc-f1cc0bd64818:branches%2FSAMBA_4_0:source%2Ftorture%2Fconfig.mk
  source/torture/rpc/rpc.c       14379@0c0555d6-39d7-0310-84fc-f1cc0bd64818:branches%2FSAMBA_4_0:source%2Ftorture%2Frpc%2Frpc.c
  source/torture/rpc/spoolss.c   6@0c0555d6-39d7-0310-84fc-f1cc0bd64818:branches%2FSAMBA_4_0:source%2Ftorture%2Frpc%2Fspoolss.c
=== added file 'source/torture/rpc/spoolss_notify.c'
--- a/source/torture/rpc/spoolss_notify.c	1970-01-01 00:00:00 +0000
+++ b/source/torture/rpc/spoolss_notify.c	2007-05-28 19:44:03 +0000
@@ -0,0 +1,69 @@
+/* 
+   Unix SMB/CIFS implementation.
+   test suite for spoolss rpc notify operations
+
+   Copyright (C) Jelmer Vernooij 2007
+   
+   This program is free software; you can redistribute it and/or modify
+   it under the terms of the GNU General Public License as published by
+   the Free Software Foundation; either version 2 of the License, or
+   (at your option) any later version.
+   
+   This program is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+   GNU General Public License for more details.
+   
+   You should have received a copy of the GNU General Public License
+   along with this program; if not, write to the Free Software
+   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+*/
+
+#include "includes.h"
+#include "torture/torture.h"
+#include "torture/ui.h"
+#include "torture/rpc/rpc.h"
+#include "librpc/gen_ndr/ndr_spoolss_c.h"
+
+/** Test that makes sure that calling ReplyOpenPrinter()
+ * on Samba 4 will cause an irpc broadcast call.
+ */
+static bool test_ReplyOpenPrinter(struct torture_context *tctx, 
+								  struct dcerpc_pipe *pipe)
+{
+	struct spoolss_ReplyOpenPrinter r;
+	struct policy_handle h;
+
+	r.in.server_name = "earth";
+	r.in.printer_local = 2;
+	r.in.type = REG_DWORD;
+	r.in.unknown1 = 0;
+	r.in.unknown2 = 0;
+	r.out.handle = &h;
+
+	/* FIXME: Listen for IRPC calls */
+	
+	torture_assert_ntstatus_ok(tctx, 
+			dcerpc_spoolss_ReplyOpenPrinter(pipe, tctx, &r),
+			"spoolss_ReplyOpenPrinter call failed");
+
+	torture_assert_werr_ok(tctx, r.out.result, "error return code");
+
+	/* FIXME: Make sure that an irpc call was done */
+
+	return true;
+}
+
+struct torture_suite *torture_rpc_spoolss_notify(void)
+{
+	struct torture_suite *suite = torture_suite_create(
+							talloc_autofree_context(), "SPOOLSS-NOTIFY");
+	
+	struct torture_tcase *tcase = torture_suite_add_rpc_iface_tcase(suite, 
+											"notify", &dcerpc_table_spoolss);
+
+	torture_rpc_tcase_add_test(tcase, "test_replyopenprinter", 
+							   test_ReplyOpenPrinter);
+	
+	return suite;
+}

=== modified file 'source/rpc_server/spoolss/dcesrv_spoolss.c'
--- a/source/rpc_server/spoolss/dcesrv_spoolss.c	2007-01-17 14:49:36 +0000
+++ b/source/rpc_server/spoolss/dcesrv_spoolss.c	2007-05-28 19:44:03 +0000
@@ -29,6 +29,10 @@
 #include "lib/socket/socket.h"
 #include "smbd/service_stream.h"
 
+enum spoolss_handle {
+	SPOOLSS_NOTIFY
+};
+
 #define SPOOLSS_BUFFER_UNION(fn,info,level) \
 	((info)?ndr_size_##fn(info, level, 0):0)
 
@@ -1037,7 +1041,16 @@
 static WERROR dcesrv_spoolss_ReplyOpenPrinter(struct dcesrv_call_state *dce_call, TALLOC_CTX *mem_ctx,
 		       struct spoolss_ReplyOpenPrinter *r)
 {
-	DCESRV_FAULT(DCERPC_FAULT_OP_RNG_ERROR);
+	struct dcesrv_handle *handle;
+
+	handle = dcesrv_handle_new(dce_call->context, SPOOLSS_NOTIFY);
+	W_ERROR_HAVE_NO_MEMORY(handle);
+
+	*r->out.handle = handle->wire_handle;
+
+	/* TODO: Sent received information by irpc */
+
+	return WERR_OK;
 }
 
 

=== modified file 'source/selftest/test_rpc.sh'
--- a/source/selftest/test_rpc.sh	2007-04-29 20:37:59 +0000
+++ b/source/selftest/test_rpc.sh	2007-05-28 19:44:03 +0000
@@ -2,7 +2,7 @@
 
 # add tests to this list as they start passing, so we test
 # that they stay passing
-ncacn_np_tests="RPC-SPOOLSS RPC-SRVSVC RPC-UNIXINFO RPC-SCHANNEL RPC-JOIN RPC-LSA RPC-ECHO RPC-DSSETUP RPC-ALTERCONTEXT RPC-MULTIBIND RPC-NETLOGON RPC-MGMT RPC-HANDLES RPC-WINREG RPC-WKSSVC RPC-SVCCTL RPC-EPMAPPER RPC-INITSHUTDOWN RPC-EVENTLOG RPC-ATSVC RPC-SAMSYNC"
+ncacn_np_tests="RPC-SPOOLSS RPC-SPOOLSS-NOTIFY RPC-SRVSVC RPC-UNIXINFO RPC-SCHANNEL RPC-JOIN RPC-LSA RPC-ECHO RPC-DSSETUP RPC-ALTERCONTEXT RPC-MULTIBIND RPC-NETLOGON RPC-MGMT RPC-HANDLES RPC-WINREG RPC-WKSSVC RPC-SVCCTL RPC-EPMAPPER RPC-INITSHUTDOWN RPC-EVENTLOG RPC-ATSVC RPC-SAMSYNC"
 ncalrpc_tests="RPC-MGMT RPC-UNIXINFO RPC-SCHANNEL RPC-JOIN RPC-LSA RPC-ECHO RPC-DSSETUP RPC-ALTERCONTEXT RPC-MULTIBIND RPC-NETLOGON RPC-WINREG RPC-WKSSVC RPC-SVCCTL RPC-EPMAPPER RPC-EVENTLOG RPC-ATSVC RPC-INITSHUTDOWN"
 ncacn_ip_tcp_tests="RPC-UNIXINFO RPC-SCHANNEL RPC-JOIN RPC-LSA RPC-ECHO RPC-DSSETUP RPC-ALTERCONTEXT RPC-MULTIBIND RPC-NETLOGON RPC-MGMT RPC-HANDLES RPC-WINREG RPC-WKSSVC RPC-SVCCTL RPC-EPMAPPER RPC-ATSVC RPC-EVENTLOG RPC-DSSYNC"
 slow_ncacn_np_tests="RPC-SAMLOGON RPC-SAMR RPC-SAMR-USERS RPC-SAMR-PASSWORDS RPC-COUNTCALLS"

=== modified file 'source/torture/config.mk'
--- a/source/torture/config.mk	2007-04-20 11:28:25 +0000
+++ b/source/torture/config.mk	2007-05-28 19:44:03 +0000
@@ -128,6 +128,7 @@
 		rpc/drsuapi_cracknames.o \
 		rpc/dssync.o \
 		rpc/spoolss.o \
+		rpc/spoolss_notify.o \
 		rpc/unixinfo.o \
 		rpc/samr.o \
 		rpc/wkssvc.o \

=== modified file 'source/torture/rpc/rpc.c'
--- a/source/torture/rpc/rpc.c	2007-05-23 07:44:51 +0000
+++ b/source/torture/rpc/rpc.c	2007-05-28 19:44:03 +0000
@@ -176,6 +176,7 @@
 	torture_suite_add_suite(suite, torture_rpc_wkssvc());
 	torture_suite_add_suite(suite, torture_rpc_handles());
 	torture_suite_add_simple_test(suite, "SPOOLSS", torture_rpc_spoolss);
+	torture_suite_add_suite(suite, torture_rpc_spoolss_notify());
 	torture_suite_add_simple_test(suite, "SAMR", torture_rpc_samr);
 	torture_suite_add_simple_test(suite, "SAMR-USERS", torture_rpc_samr_users);
 	torture_suite_add_simple_test(suite, "SAMR-PASSWORDS", torture_rpc_samr_passwords);

=== modified file 'source/torture/rpc/spoolss.c'
--- a/source/torture/rpc/spoolss.c	2006-08-24 10:38:06 +0000
+++ b/source/torture/rpc/spoolss.c	2007-05-28 19:44:03 +0000
@@ -2074,8 +2074,8 @@
 
 BOOL torture_rpc_spoolss(struct torture_context *torture)
 {
-        NTSTATUS status;
-        struct dcerpc_pipe *p;
+	NTSTATUS status;
+	struct dcerpc_pipe *p;
 	TALLOC_CTX *mem_ctx;
 	BOOL ret = True;
 	struct test_spoolss_context *ctx;

      

wo>es/sit/  Li