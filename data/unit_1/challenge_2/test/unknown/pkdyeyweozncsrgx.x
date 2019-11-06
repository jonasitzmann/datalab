From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jul  1 10:39:31 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61EdVL9001848
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 10:39:31 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 14C0C2DF3E; Sun,  1 Jul 2007 14:39:45 +0000 (UTC)
Old-Return-Path: <frx@firenze.linux.it>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.3 required=4.0 tests=AWL,BAYES_00,LDOSUBSCRIBER 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from smtpi1.ngi.it (smtpi1.ngi.it [88.149.128.20])
	by murphy.debian.org (Postfix) with ESMTP id 6257A2DE6E
	for <debian-legal@lists.debian.org>; Sun,  1 Jul 2007 14:39:37 +0000 (UTC)
Received: from neverland (88-149-179-128.static.ngi.it [88.149.179.128])
	by smtpi1.ngi.it (8.13.8/8.13.8) with ESMTP id l61EdFBm008993
	for <debian-legal@lists.debian.org>; Sun, 1 Jul 2007 16:39:15 +0200
Received: from frx by neverland with local (Exim 4.50)
	id 1I50a2-0005vA-Dd
	for debian-legal@lists.debian.org; Sun, 01 Jul 2007 16:39:14 +0200
Date: Sun, 1 Jul 2007 16:38:56 +0200
From: Francesco Poli <frx@firenze.linux.it>
To: debian-legal@lists.debian.org
Subject: Re: LGPL v3 compatibilty
Message-Id: <20070701163856.0e296842.frx@firenze.linux.it>
In-Reply-To: <gfhkl4-f04.ln1@argenau.downhill.at.eu.org>
References: <gfhkl4-f04.ln1@argenau.downhill.at.eu.org>
X-Mailer: Sylpheed version 1.0.4 (GTK+ 1.2.10; i386-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg="PGP-SHA1";
 boundary="Signature=_Sun__1_Jul_2007_16_38_56_+0200_xFl_XA8Krz5LV5k4"
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <PWih4.A.kyF.wy7hGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36814
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sun,  1 Jul 2007 14:39:45 +0000 (UTC)

--Signature=_Sun__1_Jul_2007_16_38_56_+0200_xFl_XA8Krz5LV5k4
Content-Type: text/plain; charset=US-ASCII
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, 1 Jul 2007 13:58:08 +0200 Andreas Metzler wrote:

[...]
> LGPLv3 libraries
> could not be used in GPLv2-only programs.

I'm afraid that this incompatibility is still true.

AFAIUI, when you redistribute a GPLv2-only program in compiled form, the
GPLv2 insists that the libraries the program links with (excluding
system libraries...) are available under GPLv2.

But an LGPLv3-only or LGPLv3-or-later library is available under GPLv3,
not under GPLv2.


All this, assuming that the FSF's legal theory of linking is correct:
this theory has never been tested in court, AFAIK, hence we do not know
if it would hold.  However, we have to assume that it's correct, to be
on the safe side.


Disclaimers: IANAL, TINLA, IANADD.


--=20
 http://frx.netsons.org/doc/nanodocs/testing_workstation_install.html
 Need to read a Debian testing installation walk-through?
..................................................... Francesco Poli .
 GnuPG key fpr =3D=3D C979 F34B 27CE 5CD8 DC12  31B5 78F4 279B DD6D FCF4

--Signature=_Sun__1_Jul_2007_16_38_56_+0200_xFl_XA8Krz5LV5k4
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.1 (GNU/Linux)

iD8DBQFGh7yJePQnm91t/PQRAipBAJsHoz53wDbOPhE8zgsu22ixtKS4EwCeN9nB
yZ6psAVXnaVGX2wXDYFjP1Q=
=of7m
-----END PGP SIGNATURE-----

--Signature=_Sun__1_Jul_2007_16_38_56_+0200_xFl_XA8Krz5LV5k4--


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

     

Wo-lLool: