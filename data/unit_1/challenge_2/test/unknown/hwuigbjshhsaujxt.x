From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 09:31:46 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54DVjhB028398
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 09:31:45 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 24C25163A46
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 13:31:40 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=BAYES_00,UNPARSEABLE_RELAY 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id E419C1639C9;
	Mon,  4 Jun 2007 13:31:14 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1HvCeQ-0003JU-GS; Mon, 04 Jun 2007 15:31:14 +0200
Received: by intern.SerNet.DE
	id 1HvCeQ-00010m-1c; Mon, 04 Jun 2007 15:31:14 +0200
Received: by intern.SerNet.DE
	id 1HvCeP-00010h-Hd; Mon, 04 Jun 2007 15:31:13 +0200
Received: by dhcp211.sernet.de (Postfix, from userid 8362)
	id 4ACED1C3C58; Mon,  4 Jun 2007 15:31:13 +0200 (CEST)
Date: Mon, 4 Jun 2007 15:31:13 +0200
From: Karolin Seeger <ks@sernet.de>
To: jerry@samba.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wtjvnLv0o8UUzur2"
Content-Disposition: inline
Priority: normal
User-Agent: Mutt/1.5.6i
Message-Id: <E1HvCeQ-00010m-1c@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@lists.samba.org
Subject: Rewritten IDmap backend
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
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


--wtjvnLv0o8UUzur2
Content-Type: multipart/mixed; boundary="tVmo9FyGdCe4F4YN"
Content-Disposition: inline


--tVmo9FyGdCe4F4YN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jerry, hi list,

as described in bug report #4624, winbindd segfaults with the old
idmap_rid config:

-----8<------------------snip--------------8<--------------
idmap uid=3D10000-20000
idmap gid=3D10000-20000
idmap backend =3D rid:"W2K3AD=3D10000-12000"
----->8------------------snap-------------->8--------------

What about marking the old parameters deprecated?
Do you think this is a good idea?

Attached proposed patches to=20
a) mark the old parameters deprecated and=20
b) update the documentation.

Cheers,
Karolin

--=20
SerNet GmbH, Bahnhofsallee 1b, 37081 G=C3=B6ttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG G=C3=B6ttingen, HRB 2816, GF: Dr. Johannes Loxen
http://www.SerNet.DE, mailto: Info @ SerNet.DE


--tVmo9FyGdCe4F4YN
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="mark_old_parms_as_deprecated.patch"
Content-Transfer-Encoding: quoted-printable

Index: param/loadparm.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- param/loadparm.c	(revision 23334)
+++ param/loadparm.c	(working copy)
@@ -166,10 +166,10 @@
 	char *szUtmpDir;
 	char *szWtmpDir;
 	BOOL bUtmp;
-	char *szIdmapUID;
-	char *szIdmapGID;
+	char *szIdmapUID; /* deprecated */
+	char *szIdmapGID; /* deprecated */
 	BOOL bPassdbExpandExplicit;
-	int AlgorithmicRidBase;
+	int AlgorithmicRidBase; /* deprecated */
 	char *szTemplateHomedir;
 	char *szTemplateShell;
 	char *szWinbindSeparator;
@@ -868,7 +868,7 @@
 	{"smb passwd file", P_STRING, P_GLOBAL, &Globals.szSMBPasswdFile, NULL, N=
ULL, FLAG_ADVANCED},=20
 	{"private dir", P_STRING, P_GLOBAL, &Globals.szPrivateDir, NULL, NULL, FL=
AG_ADVANCED},=20
 	{"passdb backend", P_STRING, P_GLOBAL, &Globals.szPassdbBackend, NULL, NU=
LL, FLAG_ADVANCED | FLAG_WIZARD},=20
-	{"algorithmic rid base", P_INTEGER, P_GLOBAL, &Globals.AlgorithmicRidBase=
, NULL, NULL, FLAG_ADVANCED},=20
+	{"algorithmic rid base", P_INTEGER, P_GLOBAL, &Globals.AlgorithmicRidBase=
, NULL, NULL, FLAG_ADVANCED, FLAG_DEPRECATED},=20
 	{"root directory", P_STRING, P_GLOBAL, &Globals.szRootdir, NULL, NULL, FL=
AG_ADVANCED},=20
 	{"root dir", P_STRING, P_GLOBAL, &Globals.szRootdir, NULL, NULL, FLAG_HID=
E},=20
 	{"root", P_STRING, P_GLOBAL, &Globals.szRootdir, NULL, NULL, FLAG_HIDE},=
=20
@@ -1269,13 +1269,13 @@
=20
 	{"passdb expand explicit", P_BOOL, P_GLOBAL, &Globals.bPassdbExpandExplic=
it, NULL, NULL, FLAG_ADVANCED},
 	{"idmap domains", P_LIST, P_GLOBAL, &Globals.szIdmapDomains, NULL, NULL, =
FLAG_ADVANCED},=20
-	{"idmap backend", P_LIST, P_GLOBAL, &Globals.szIdmapBackend, NULL, NULL, =
FLAG_ADVANCED },=20
+	{"idmap backend", P_LIST, P_GLOBAL, &Globals.szIdmapBackend, NULL, NULL, =
FLAG_ADVANCED, FLAG_DEPRECATED},=20
 	{"idmap alloc backend", P_STRING, P_GLOBAL, &Globals.szIdmapAllocBackend,=
 NULL, NULL, FLAG_ADVANCED},=20
 	{"idmap cache time", P_INTEGER, P_GLOBAL, &Globals.iIdmapCacheTime, NULL,=
 NULL, FLAG_ADVANCED},=20
 	{"idmap negative cache time", P_INTEGER, P_GLOBAL, &Globals.iIdmapNegativ=
eCacheTime, NULL, NULL, FLAG_ADVANCED},=20
-	{"idmap uid", P_STRING, P_GLOBAL, &Globals.szIdmapUID, handle_idmap_uid, =
NULL, FLAG_ADVANCED },=20
+	{"idmap uid", P_STRING, P_GLOBAL, &Globals.szIdmapUID, handle_idmap_uid, =
NULL, FLAG_ADVANCED, FLAG_DEPRECATED},=20
 	{"winbind uid", P_STRING, P_GLOBAL, &Globals.szIdmapUID, handle_idmap_uid=
, NULL, FLAG_HIDE },=20
-	{"idmap gid", P_STRING, P_GLOBAL, &Globals.szIdmapGID, handle_idmap_gid, =
NULL, FLAG_ADVANCED },=20
+	{"idmap gid", P_STRING, P_GLOBAL, &Globals.szIdmapGID, handle_idmap_gid, =
NULL, FLAG_ADVANCED, FLAG_DEPRECATED},=20
 	{"winbind gid", P_STRING, P_GLOBAL, &Globals.szIdmapGID, handle_idmap_gid=
, NULL, FLAG_HIDE },=20
 	{"template homedir", P_STRING, P_GLOBAL, &Globals.szTemplateHomedir, NULL=
, NULL, FLAG_ADVANCED},=20
 	{"template shell", P_STRING, P_GLOBAL, &Globals.szTemplateShell, NULL, NU=
LL, FLAG_ADVANCED},=20

--tVmo9FyGdCe4F4YN
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="mark_deprecated_doku.patch"
Content-Transfer-Encoding: quoted-printable

Index: smbdotconf/winbind/idmapuid.xml
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- smbdotconf/winbind/idmapuid.xml	(revision 1118)
+++ smbdotconf/winbind/idmapuid.xml	(working copy)
@@ -9,11 +9,16 @@
 	The idmap uid parameter specifies the range of user ids that are=20
 	allocated for use in mapping UNIX users to NT user SIDs. This=20
 	range of ids should have no existing local
-	or NIS users within it as strange conflicts can occur otherwise.</para>
+	or NIS users within it as strange conflicts can occur otherwise.
+	</para>
=20
-	<para>See also the <smbconfoption name=3D"idmap backend"/>, <smbconfoptio=
n=20
-	name=3D"idmap domains"/>, and <smbconfoption name=3D"idmap config"/> opti=
ons.
-	</para>
+	<para>
+        This is parameter has been marked deprecated in Samba 3.0.25. The =
same
+        behavior is now implemented by the
+        <parameter moreinfo=3D"none">idmap config DOMAIN:range</parameter>=
 option.
+        Refer to the <smbconfoption name=3D"idmap config"/> section in smb=
=2Econf
+        man page for more information.
+        </para>
 </description>
=20
 <value type=3D"default"></value>
Index: smbdotconf/winbind/idmapbackend.xml
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- smbdotconf/winbind/idmapbackend.xml	(revision 1118)
+++ smbdotconf/winbind/idmapbackend.xml	(working copy)
@@ -6,9 +6,13 @@
 <description>
 	<para>
 	The idmap backend provides a plugin interface for Winbind to use
-	varying backends to store SID/uid/gid mapping tables.  This
-	option is mutually exclusive with the newer and more flexible
-	<smbconfoption name=3D"idmap domains"/> parameter.  The main difference
+	varying backends to store SID/uid/gid mapping tables. =20
+	</para>
+
+	<para>
+        This is parameter has been marked deprecated in Samba 3.0.25. The =
same
+        behavior is now implemented by the newer and more flexible
+	 <smbconfoption name=3D"idmap domains"/> parameter.  The main difference
 	between the &quot;idmap backend&quot; and the &quot;idmap domains&quot;
 	is that the former only allows on backend for all domains while the
 	latter supports configuring backends on a per domain basis.
Index: smbdotconf/winbind/idmapgid.xml
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- smbdotconf/winbind/idmapgid.xml	(revision 1118)
+++ smbdotconf/winbind/idmapgid.xml	(working copy)
@@ -11,9 +11,14 @@
 	existing local or NIS groups within it as strange conflicts can=20
 	occur otherwise.</para>
=20
-	<para>See also the <smbconfoption name=3D"idmap backend"/>, <smbconfoptio=
n=20
-	name=3D"idmap domains"/>, and <smbconfoption name=3D"idmap config"/> opti=
ons.
-	</para>
+	<para>
+        This is parameter has been marked deprecated in Samba 3.0.25. The =
same
+        behavior is now implemented by the
+        <parameter moreinfo=3D"none">idmap config DOMAIN:range</parameter>=
 option.
+        Refer to the <smbconfoption name=3D"idmap config"/> section in smb=
=2Econf=20
+	man page for more information.
+        </para>
+
 </description>
=20
 <value type=3D"default"></value>
Index: smbdotconf/security/algorithmicridbase.xml
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- smbdotconf/security/algorithmicridbase.xml	(revision 1118)
+++ smbdotconf/security/algorithmicridbase.xml	(working copy)
@@ -5,7 +5,7 @@
 		 xmlns:samba=3D"http://www.samba.org/samba/DTD/samba-doc">
 <description>
     <para>This determines how Samba will use its
-    algorithmic mapping from uids/gid to the RIDs needed to construct
+    algorithmic mapping from UIDs/GIDs to the RIDs needed to construct
     NT Security Identifiers.
     </para>
=20
@@ -20,6 +20,15 @@
     resolve the issues.  Users and groups can then be assigned 'low' RIDs
     in arbitary-rid supporting backends.
     </para>
+
+    <para>
+    This is parameter has been marked deprecated in Samba 3.0.25. The same=
=20
+    behavior is now implemented by the=20
+    <parameter moreinfo=3D"none">idmap config DOMAIN:base_rid</parameter> =
option.
+    Refer to the <smbconfoption name=3D"idmap config"/> smb.conf option and
+    the <citerefentry><refentrytitle>idmap_rid</refentrytitle>
+    <manvolnum>8</manvolnum></citerefentry> man page for more information.
+    </para>
 </description>
=20
 <value type=3D"default">1000</value>

--tVmo9FyGdCe4F4YN--

--wtjvnLv0o8UUzur2
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.5 (GNU/Linux)

iD8DBQFGZBQhKGi9fisXk1ERAnGhAKCJKCUFO0cNkhHqZdwRGFUObvOYbQCfeKmG
nl1POb5hFuvzbdT+RqHwu1U=
=JiHQ
-----END PGP SIGNATURE-----

--wtjvnLv0o8UUzur2--

                

n0aid=FpumA