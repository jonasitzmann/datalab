From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 25 18:06:53 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PM6rL9002149
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 18:06:53 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 6ECEE162AEB
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 22:06:50 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL,UPPERCASE_25_50 autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from localhost6.localdomain6 (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C5D40162ABE;
	Mon, 25 Jun 2007 22:05:26 +0000 (GMT)
From: Kai Blin <kai@samba.org>
Date: Tue, 26 Jun 2007 00:03:58 +0200
To: Samba technical mailing list <samba-technical@samba.org>
MIME-Version: 1.0
X-TUID: 9f19d83668cdc1ad
X-UID: 1
X-Length: 2461
Organization: Samba Team
Content-Type: multipart/signed; boundary="nextPart1444853.deDNvmOXpu";
	protocol="application/pgp-signature"; micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <200706260004.03003.kai@samba.org>
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>
Subject: [Patch]Handle git/git-svn checkouts in mkversion.sh
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

--nextPart1444853.deDNvmOXpu
Content-Type: multipart/mixed;
  boundary="Boundary-01=_PvDgG3zKy4HN+3n"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

--Boundary-01=_PvDgG3zKy4HN+3n
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi folks,

Now that Jerry set up a git repository, I've fixed mkversion.sh to give a=20
useful revision number. As the full sha-1 committish is a bit long, I've=20
settled for the first eight hex numbers of the committish.

Comments?

Kai

=2D--
 source/script/mkversion.sh |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)
=2D-=20
Kai Blin
WorldForge developer  http://www.worldforge.org/
Wine developer        http://wiki.winehq.org/KaiBlin
Samba team member     http://www.samba.org/samba/team/
=2D-
Will code for cotton.

--Boundary-01=_PvDgG3zKy4HN+3n
Content-Type: text/x-patch;
	name="efea25e2ac00c31b87f17d5d5594bbd5c301a700.diff"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="efea25e2ac00c31b87f17d5d5594bbd5c301a700.diff"

diff --git a/source/script/mkversion.sh b/source/script/mkversion.sh
index bf82941..d264d31 100755
=2D-- a/source/script/mkversion.sh
+++ b/source/script/mkversion.sh
@@ -104,6 +104,18 @@ if test x"${SAMBA_VERSION_IS_SVN_SNAPSHOT}" =3D x"yes"=
;then
 	TMP_CLEAN_TREE=3D`echo -e "${BZR_INFO}" | grep 'clean:' |sed -e 's/clean:=
 \([a-zA-Z]*\).*/\1/'`
     fi
=20
+    if test x"${HAVEVER}" !=3D x"yes";then
+	HAVEGIT=3Dno
+        GIT_INFO=3D`git show HEAD 2>/dev/null`
+	TMP_REVISION=3D`echo -e "${GIT_INFO}" | grep 'commit ' |sed -e 's/commit =
\([0-9a-f]\{8\}\)\([0-9a-f]*\)/\1/'`
+	if test -n "$TMP_REVISION";then
+	    HAVEGIT=3Dyes
+            HAVEVER=3Dyes
+	fi
+	TMP_MIRRORED_REVISION=3D`echo -e "${GIT_INFO}" | grep 'git-svn-id' |sed -=
e 's#^[ ^t]*git-svn-id: svn+ssh://svn.samba.org/data/svn/samba/branches/\(S=
AMBA_[34]_[0-9]\(_[0-9]\+\)\?@[0-9]*\).*#\1#'`
+    fi
+=09
+
     if test x"${HAVESVN}" =3D x"yes";then
 	SAMBA_VERSION_STRING=3D"${SAMBA_VERSION_STRING}-SVN-build-${TMP_REVISION}"
 	echo "#define SAMBA_VERSION_SVN_REVISION ${TMP_REVISION}" >> $OUTPUT_FILE
@@ -130,6 +142,14 @@ if test x"${SAMBA_VERSION_IS_SVN_SNAPSHOT}" =3D x"yes"=
;then
 	fi
=20
 	SAMBA_VERSION_STRING=3D"${SAMBA_VERSION_STRING}-BZR-${TMP_BZR_REVISION_ST=
R}"
+    elif test x"${HAVEGIT}" =3D x"yes";then
+	TMP_GIT_REVISION_STR=3D"${TMP_REVISION}"
+
+	if test -n "$TMP_MIRRORED_REVISION"; then
+	    TMP_GIT_REVISION_STR=3D"${TMP_GIT_REVISION_STR}-[SVN-${TMP_MIRRORED_R=
EVISION}]"
+	fi
+
+	SAMBA_VERSION_STRING=3D"${SAMBA_VERSION_STRING}-GIT-${TMP_GIT_REVISION_ST=
R}"
     else
 	SAMBA_VERSION_STRING=3D"${SAMBA_VERSION_STRING}-SVN-build-UNKNOWN"
     fi

--Boundary-01=_PvDgG3zKy4HN+3n--

--nextPart1444853.deDNvmOXpu
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQBGgDvPEKXX/bF2FpQRAlkyAKCXFquxelrRPV8PE5kIUhqLpaJslQCeLVIT
r98gbjbbfx2gx4HsqU06UD8=
=LKI+
-----END PGP SIGNATURE-----

--nextPart1444853.deDNvmOXpu--

               

ssdm5ilte
"k