From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun 14 08:29:52 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ECTqL9021403
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 08:29:52 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 288441639EF
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 12:29:51 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=AWL,BAYES_00,
	DATE_IN_PAST_12_24,FORGED_RCVD_HELO,RCVD_IN_DSBL autolearn=no 
	version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from smtp-vbr10.xs4all.nl (smtp-vbr10.xs4all.nl [194.109.24.30])
	by lists.samba.org (Postfix) with ESMTP id A59E8162AC0
	for <samba-cvs@samba.org>; Thu, 14 Jun 2007 12:29:10 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr10.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5ECT9XE002704
	for <samba-cvs@samba.org>; Thu, 14 Jun 2007 14:29:10 +0200 (CEST)
	(envelope-from jelmer@vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id 4BA3D10381D
	for <samba-cvs@samba.org>; Thu, 14 Jun 2007 14:29:09 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id fK6AFgqGRm1o for <samba-cvs@samba.org>;
	Thu, 14 Jun 2007 14:28:58 +0200 (CEST)
Received: from ganieda.vernstok.nl (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id A97A4103821
	for <samba-cvs@samba.org>; Thu, 14 Jun 2007 14:28:43 +0200 (CEST)
Received: by ganieda.vernstok.nl (Postfix, from userid 1000)
	id C422D5C4CF8; Wed, 13 Jun 2007 22:54:16 +0200 (CEST)
To: samba-cvs@samba.org
From: Jelmer Vernooij <jelmer@samba.org>
Message-Id: <20070613205416.C422D5C4CF8@ganieda.vernstok.nl>
Date: Wed, 13 Jun 2007 22:54:16 +0200 (CEST)
X-Virus-Scanned: by XS4ALL Virus Scanner
Subject: Rev 11192: Start working on global registry backend tests. in
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
revno: 11192
revision-id: jelmer@samba.org-20070613205358-bw2nnemz6ringkd0
parent: jelmer@samba.org-20070613001344-qkqechdlu867mozv
committer: Jelmer Vernooij <jelmer@samba.org>
branch nick: 4.0-regwrite
timestamp: Wed 2007-06-13 22:53:58 +0200
message:
  Start working on global registry backend tests.
added:
  source/lib/registry/tests/registry.c registry.c-20070613193046-9w6vxztx0uea8a0p-1
modified:
  source/lib/registry/hive.c     hive.c-20070602140117-9a3wth1mhbrq7ej1-1
  source/lib/registry/hive.h     hive.h-20070423140448-w1nvzs8d2qxvyswz-1
  source/lib/registry/interface.c svn-v2:20@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flib%2fregistry%2fcommon%2freg_interface.c
  source/lib/registry/local.c    local.c-20070602140117-9a3wth1mhbrq7ej1-2
  source/lib/registry/registry.h svn-v2:10026@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flib%2fregistry%2fregistry.h
  source/torture/local/config.mk svn-v2:12008@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2ftorture%2flocal%2fconfig.mk
=== added file 'source/lib/registry/tests/registry.c'
--- a/source/lib/registry/tests/registry.c	1970-01-01 00:00:00 +0000
+++ b/source/lib/registry/tests/registry.c	2007-06-13 20:53:58 +0000
@@ -0,0 +1,75 @@
+/* 
+   Unix SMB/CIFS implementation.
+
+   local testing of registry library - registry backend
+
+   Copyright (C) Jelmer Vernooij 2005-2007
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
+#include "lib/registry/registry.h"
+#include "lib/cmdline/popt_common.h"
+#include "torture/torture.h"
+#include "librpc/gen_ndr/winreg.h"
+#include "system/filesys.h"
+
+static bool test_get_predefined(struct torture_context *tctx,
+								const void *_data)
+{
+	const struct registry_context *rctx = _data;
+	struct registry_key *root;
+	WERROR error;
+
+	error = reg_get_predefined_key(rctx, HKEY_CLASSES_ROOT, &root);
+	torture_assert_werr_ok(tctx, error, 
+						   "getting predefined key failed");
+	return true;
+}
+
+static bool setup_local_registry(struct torture_context *tctx, 
+								 void **data)
+{
+	struct registry_context *rctx;
+	WERROR error;
+
+	error = reg_open_local(tctx, &rctx, NULL, NULL);
+	if (!W_ERROR_IS_OK(error)) {
+		return false;
+	}
+
+	/* FIXME */
+	return true;
+}
+
+static void tcase_add_tests(struct torture_tcase *tcase)
+{
+	torture_tcase_add_simple_test(tcase, "get_predefined_key",
+									test_get_predefined);
+}
+
+struct torture_suite *torture_registry_registry(TALLOC_CTX *mem_ctx) 
+{
+	struct torture_tcase *tcase;
+	struct torture_suite *suite = torture_suite_create(mem_ctx, 
+													   "REGISTRY");
+	
+	tcase = torture_suite_add_tcase(suite, "local");
+	torture_tcase_set_fixture(tcase, setup_local_registry, NULL);
+	tcase_add_tests(tcase);
+
+	return suite;
+}

=== modified file 'source/lib/registry/hive.c'
--- a/source/lib/registry/hive.c	2007-06-12 23:46:37 +0000
+++ b/source/lib/registry/hive.c	2007-06-13 20:53:58 +0000
@@ -78,3 +78,11 @@
 {
 	return key->ops->del_key(key, name);
 }
+
+_PUBLIC_ WERROR hive_get_key_by_name(TALLOC_CTX *mem_ctx,
+							   const struct hive_key *key, const char *name, 
+							   struct hive_key **subkey)
+{
+	return key->ops->get_key_by_name(mem_ctx, key, name, 
+									 subkey);
+}

=== modified file 'source/lib/registry/hive.h'
--- a/source/lib/registry/hive.h	2007-06-12 23:46:37 +0000
+++ b/source/lib/registry/hive.h	2007-06-13 20:53:58 +0000
@@ -150,6 +150,9 @@
 						 const char *name, const char *classname, struct security_descriptor *desc,
 						 struct hive_key **key);
 _PUBLIC_ WERROR hive_key_del(const struct hive_key *key, const char *name);
+_PUBLIC_ WERROR hive_get_key_by_name(TALLOC_CTX *mem_ctx,
+							   const struct hive_key *key, const char *name, 
+							   struct hive_key **subkey);
 
 
 /* Individual backends */

=== modified file 'source/lib/registry/interface.c'
--- a/source/lib/registry/interface.c	2007-06-12 16:54:40 +0000
+++ b/source/lib/registry/interface.c	2007-06-13 20:53:58 +0000
@@ -63,7 +63,8 @@
 {
 	int i;
 	for (i = 0; reg_predefined_keys[i].name; i++) {
-		if (reg_predefined_keys[i].handle == hkey) return reg_predefined_keys[i].name;
+		if (reg_predefined_keys[i].handle == hkey) 
+			return reg_predefined_keys[i].name;
 	}
 
 	return NULL;
@@ -84,7 +85,7 @@
 }
 
 /** Get predefined key by id. */
-_PUBLIC_ WERROR reg_get_predefined_key(struct registry_context *ctx, 
+_PUBLIC_ WERROR reg_get_predefined_key(const struct registry_context *ctx, 
 									   uint32_t hkey, struct registry_key **key)
 {
 	return ctx->ops->get_predefined_key(ctx, hkey, key);

=== modified file 'source/lib/registry/local.c'
--- a/source/lib/registry/local.c	2007-06-12 20:08:26 +0000
+++ b/source/lib/registry/local.c	2007-06-13 20:53:58 +0000
@@ -37,12 +37,15 @@
 		struct hive_key *key;
 		struct mountpoint *prev, *next;
 	} *mountpoints;
+
+	struct auth_session_info *session_info; 
+	struct cli_credentials *credentials;
 };
 
 struct local_key {
 	struct registry_key global;
 	struct reg_key_path path;
-	struct hive_key hive;
+	struct hive_key *hive_key;
 };
 
 WERROR reg_mount_hive(struct registry_context *ctx, struct reg_key_path *path, 
@@ -57,13 +60,27 @@
 	char *orig = strdup(path),
 		 *curbegin = orig, 
 		 *curend = strchr(path, '\\');
-	struct registry_key *curkey = parent;
+	struct local_key *local_parent = talloc_get_type(parent, struct local_key),
+					 *local_key;
+	struct hive_key *curkey = local_parent->hive_key;
 	WERROR error;
-
-	while (curbegin && *curbegin) {
+	const char **elements = NULL;
+	int el;
+
+	elements = talloc_array(mem_ctx, const char *, 
+						str_list_length(local_parent->path.elements) + 1);
+	for (el = 0; local_parent->path.elements[el]; el++) {
+		elements[el] = local_parent->path.elements[el];
+	}
+	elements[el] = NULL;
+
+	while (curbegin != NULL && *curbegin) {
 		if (curend != NULL)
 			*curend = '\0';
-		error = reg_open_key(mem_ctx, curkey, curbegin, &curkey);
+		elements = talloc_realloc(mem_ctx, elements, const char *, el+2);
+		elements[el] = talloc_strdup(elements, curbegin);
+		el++;
+		error = hive_get_key_by_name(mem_ctx, curkey, curbegin, &curkey);
 		if (!W_ERROR_IS_OK(error)) {
 			SAFE_FREE(orig);
 			return error;
@@ -75,14 +92,48 @@
 	}
 	SAFE_FREE(orig);
 
-	*result = curkey;
-		
-	return WERR_OK;
-}
+	local_key->global.context = talloc_reference(local_key, 
+												 local_parent->global.context);
+	local_key->hive_key = curkey;
+	local_key->path.predefined_key = local_parent->path.predefined_key;
+	local_key->path.elements = talloc_steal(local_key, elements);
+
+	*result = (struct registry_key *)local_key;
+	
+	return WERR_OK;
+}
+
+WERROR local_get_predefined_key (struct registry_context *ctx, 
+	  uint32_t key_id, struct registry_key **key) 
+{	
+	struct registry_local *rctx = talloc_get_type(ctx, struct registry_local);
+	struct local_key *local_key;
+	struct mountpoint *mp;
+
+	for (mp = rctx->mountpoints; mp != NULL; mp = mp->next) {
+		if (mp->path.predefined_key == key_id && 
+			mp->path.elements == NULL)
+			break;
+	}
+
+	if (mp == NULL)
+		return WERR_NOT_FOUND;
+
+	local_key = talloc(ctx, struct local_key);
+	local_key->hive_key = mp->key;
+	local_key->global.context = ctx;
+	local_key->path = mp->path;
+	
+	*key = (struct registry_key *)local_key;
+
+	return WERR_OK;
+}
+
 
 const static struct registry_operations local_ops = {
 	.name = "local",
-	.open_key = local_open_key
+	.open_key = local_open_key,
+	.get_predefined_key = local_get_predefined_key,
 };
 
 WERROR reg_open_local(TALLOC_CTX *mem_ctx, struct registry_context **ctx, 
@@ -94,6 +145,8 @@
 	W_ERROR_HAVE_NO_MEMORY(ret);
 
 	ret->registry.ops = &local_ops;
+	ret->session_info = session_info;
+	ret->credentials = credentials;
 
 	*ctx = (struct registry_context *)ret;
 	

=== modified file 'source/lib/registry/registry.h'
--- a/source/lib/registry/registry.h	2007-06-10 22:26:52 +0000
+++ b/source/lib/registry/registry.h	2007-06-13 20:53:58 +0000
@@ -94,7 +94,7 @@
 
 	WERROR (*flush_key) (struct registry_key *key);
 
-	WERROR (*get_predefined_key) (struct registry_context *ctx, 
+	WERROR (*get_predefined_key) (const struct registry_context *ctx, 
 							  uint32_t key_id,
 							  struct registry_key **key);
 
@@ -198,7 +198,7 @@
 _PUBLIC_ WERROR reg_get_predefined_key_by_name(struct registry_context *ctx, 
 											   const char *name, 
 											   struct registry_key **key);
-_PUBLIC_ WERROR reg_get_predefined_key(struct registry_context *ctx, 
+_PUBLIC_ WERROR reg_get_predefined_key(const struct registry_context *ctx, 
 									   uint32_t hkey, 
 									   struct registry_key **key);
 

=== modified file 'source/torture/local/config.mk'
--- a/source/torture/local/config.mk	2007-06-12 16:54:40 +0000
+++ b/source/torture/local/config.mk	2007-06-13 20:53:58 +0000
@@ -24,6 +24,7 @@
 		irpc.o \
 		../../lib/registry/tests/generic.o \
 		../../lib/registry/tests/hive.o \
+		../../lib/registry/tests/registry.o \
 		resolve.o \
 		../../lib/util/tests/strlist.o \
 		../../lib/util/tests/file.o \

     

elsB
MFsZ usu