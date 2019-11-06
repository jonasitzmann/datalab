From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 30 07:49:44 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5UBniL9006464
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 07:49:44 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E59051638F8
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 11:49:39 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=3.8 tests=AWL,BAYES_20,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 413EF162AC0
	for <samba-technical@samba.org>; Sat, 30 Jun 2007 11:49:10 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	for samba-technical@samba.org
	id 1I4bRt-0002CT-BV; Sat, 30 Jun 2007 13:49:09 +0200
Received: by intern.SerNet.DE
	id 1I4bRs-000879-TU; Sat, 30 Jun 2007 13:49:08 +0200
Received: by intern.SerNet.DE
	id 1I4bRs-000873-NY; Sat, 30 Jun 2007 13:49:08 +0200
Date: Sat, 30 Jun 2007 13:49:14 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: samba-technical@samba.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GRPZ8SYKNexpdSJ7"
Content-Disposition: inline
User-Agent: Mutt/1.5.13 (2006-08-11)
Message-Id: <E1I4bRs-000879-TU@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Subject: talloc_stack.c?
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Volker.Lendecke@SerNet.DE
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org


--GRPZ8SYKNexpdSJ7
Content-Type: multipart/mixed; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

During my hunt for global variables I've come across all
these sid_string_static and friends. There's lots of them,
and all of them are problematic in that every call
overwrites a previous one. On the other hand, they are just
way too handy in DEBUG statements to not have them. You
don't want to explicitly pass a TALLOC_CTX that you have to
explictly free just for this reason.

alloca or something like that does not work either, this is
not portable and would deallocate the too early.

tmp_talloc_ctx() would allocate too late, for example in
smbd we free it after each smb request. By then heaps of
memory might have piled up.

Individual temporary talloc contexts are the right thing,
but in some routines you just don't want to clutter the
code by having to pass them down for each call.

Attached find something in between tmp_talloc_ctx() and
explicit temporary contexts. You can get a new stack frame
with talloc_stackframe(). Freeing that one frees all
stackframes that were allocated deeper down. So if some
error path forgets to free the current stackframe, the next
enclosing free will take care of it.

In the routines like sid_string_static (well, not static
anymore) you get the current top of stack with talloc_tos().

So, the more routines use this correctly, the more exact our
memory cleanup will be.

Comments?

Volker

P.S: Does someone have an idea how we can do this without
the explicit stack? See the code comment.

--Qxx1br4bt0+wmkIi
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="talloc_stack.diff"
Content-Transfer-Encoding: quoted-printable

Index: Makefile.in
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- Makefile.in	(Revision 23664)
+++ Makefile.in	(Arbeitskopie)
@@ -272,7 +272,7 @@
=20
 LIB_WITHOUT_PROTO_OBJ =3D $(LIBREPLACE_OBJ) $(SOCKET_WRAPPER_OBJ) $(TALLOC=
_OBJ) \
 	lib/messages.o librpc/gen_ndr/ndr_messaging.o lib/messages_local.o \
-	lib/messages_ctdbd.o lib/packet.o lib/ctdbd_conn.o
+	lib/messages_ctdbd.o lib/packet.o lib/ctdbd_conn.o lib/talloc_stack.o
=20
 LIB_WITH_PROTO_OBJ =3D $(VERSION_OBJ) lib/charcnv.o lib/debug.o lib/fault.=
o \
 	  lib/interface.o lib/md4.o \
Index: lib/talloc_stack.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- lib/talloc_stack.c	(Revision 0)
+++ lib/talloc_stack.c	(Revision 0)
@@ -0,0 +1,96 @@
+/*=20
+   Unix SMB/CIFS implementation.
+   Implement a stack of talloc contexts
+   Copyright (C) Volker Lendecke 2007
+  =20
+   This program is free software; you can redistribute it and/or modify
+   it under the terms of the GNU General Public License as published by
+   the Free Software Foundation; either version 2 of the License, or
+   (at your option) any later version.
+  =20
+   This program is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+   GNU General Public License for more details.
+  =20
+   You should have received a copy of the GNU General Public License
+   along with this program; if not, write to the Free Software
+   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+*/
+
+/*
+ * Implement a stack of talloc frames. We can't rely on a linked list with
+ * talloc destructors because in a hierarchy of talloc destructors the par=
ent
+ * destructor is called before its children destructors.
+ */
+
+#include "includes.h"
+
+static int talloc_stacksize;
+static TALLOC_CTX **talloc_stack;
+
+static int talloc_pop(int *ptr)
+{
+	int tos =3D *ptr;
+	int i;
+
+	for (i=3Dtalloc_stacksize-1; i>=3Dtos; i--) {
+		talloc_free(talloc_stack[i]);
+	}
+
+	talloc_stacksize =3D tos;
+	return 0;
+}
+
+/*
+ * Create a new talloc stack frame.
+ *
+ * When free'd, it frees all stack frames that were created after this one=
 and
+ * not explicitly freed.
+ */
+
+TALLOC_CTX *talloc_stackframe(void)
+{
+	TALLOC_CTX **tmp, *top;
+	int *cleanup;
+
+	if (!(tmp =3D TALLOC_REALLOC_ARRAY(NULL, talloc_stack, TALLOC_CTX *,
+					 talloc_stacksize + 1))) {
+		goto fail;
+	}
+
+	talloc_stack =3D tmp;
+
+	if (!(top =3D talloc_new(talloc_stack))) {
+		goto fail;
+	}
+
+	if (!(cleanup =3D talloc(top, int))) {
+		goto fail;
+	}
+
+	*cleanup =3D talloc_stacksize;
+	talloc_set_destructor(cleanup, talloc_pop);
+
+	talloc_stack[talloc_stacksize++] =3D top;
+
+	return top;
+
+ fail:
+	smb_panic("talloc_stackframe failed");
+	return NULL;
+}
+
+/*
+ * Get us the current top of the talloc stack.
+ */
+
+TALLOC_CTX *talloc_tos(void)
+{
+	if (talloc_stacksize =3D=3D 0) {
+		DEBUG(0, ("no talloc stackframe around, leaking memory\n"));
+		talloc_stackframe();
+	}
+
+	return talloc_stack[talloc_stacksize-1];
+}
Index: include/includes.h
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- include/includes.h	(Revision 23664)
+++ include/includes.h	(Arbeitskopie)
@@ -705,6 +705,7 @@
 #include "dbwrap.h"
 #include "packet.h"
 #include "ctdbd_conn.h"
+#include "talloc_stack.h"
=20
 /*
  * Type for wide character dirent structure.
Index: include/talloc_stack.h
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- include/talloc_stack.h	(Revision 0)
+++ include/talloc_stack.h	(Revision 0)
@@ -0,0 +1,47 @@
+/*=20
+   Unix SMB/CIFS implementation.
+   Implement a stack of talloc contexts
+   Copyright (C) Volker Lendecke 2007
+  =20
+   This program is free software; you can redistribute it and/or modify
+   it under the terms of the GNU General Public License as published by
+   the Free Software Foundation; either version 2 of the License, or
+   (at your option) any later version.
+  =20
+   This program is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+   GNU General Public License for more details.
+  =20
+   You should have received a copy of the GNU General Public License
+   along with this program; if not, write to the Free Software
+   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+*/
+
+/*
+ * Implement a stack of talloc frames. We can't rely on a linked list with
+ * talloc destructors because in a hierarchy of talloc destructors the par=
ent
+ * destructor is called before its children destructors.
+ */
+
+#ifndef _TALLOC_STACK_H
+#define _TALLOC_STACK_H
+
+#include "lib/talloc/talloc.h"
+
+/*
+ * Create a new talloc stack frame.
+ *
+ * When free'd, it frees all stack frames that were created after this one=
 and
+ * not explicitly freed.
+ */
+
+TALLOC_CTX *talloc_stackframe(void);
+
+/*
+ * Get us the current top of the talloc stack.
+ */
+
+TALLOC_CTX *talloc_tos(void);
+
+#endif

--Qxx1br4bt0+wmkIi--

--GRPZ8SYKNexpdSJ7
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGhkM6pZr5CauZH5wRAuo1AKDbeYu8pdo6E2PPjIwA5qLbKSXWbwCgq5SY
Ak9dlLiO6NSwEoQWwT5jkJE=
=MU9z
-----END PGP SIGNATURE-----

--GRPZ8SYKNexpdSJ7--

             

"s, f5G
d9/a6w