From bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jun 24 16:43:55 2007
Return-Path: <bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5OKhsL9017013
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 24 Jun 2007 16:43:55 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 4B7B42DF22; Sun, 24 Jun 2007 20:43:13 +0000 (UTC)
Old-Return-Path: <jak@jak-linux.org>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,FORGED_RCVD_HELO,
	IMPRONONCABLE_1,LDOSUBSCRIBER autolearn=no version=3.1.4
X-Original-To: debian-desktop@lists.debian.org
Received: from debian.local (F359b.f.strato-dslnet.de [195.4.53.155])
	by murphy.debian.org (Postfix) with ESMTP id 7219B2DDFF
	for <debian-desktop@lists.debian.org>; Sun, 24 Jun 2007 20:43:05 +0000 (UTC)
Received: from localhost ([127.0.0.1] ident=jak)
	by debian.local with esmtp (Exim 4.63)
	(envelope-from <jak@jak-linux.org>)
	id 1I2YvV-00053x-6q; Sun, 24 Jun 2007 22:43:17 +0200
Message-ID: <467ED764.6040904@jak-linux.org>
Date: Sun, 24 Jun 2007 22:43:16 +0200
From: Julian Andres Klode <jak@jak-linux.org>
User-Agent: IceDove 1.5.0.12 (X11/20070607)
MIME-Version: 1.0
To: sebi@glatzor.de
Cc: debian-desktop@lists.debian.org
Subject: Re: GNOME App Install
References: <1182701712.4373.30.camel@sebi-laptop>
In-Reply-To: <1182701712.4373.30.camel@sebi-laptop>
X-Enigmail-Version: 0.94.2.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig71921B077644DD339C1EBD96"
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <dfX19B.A.G5C.hdtfGB@murphy>
Resent-From: debian-desktop@lists.debian.org
X-Mailing-List: <debian-desktop@lists.debian.org> archive/latest/1766
X-Loop: debian-desktop@lists.debian.org
List-Id: <debian-desktop.lists.debian.org>
List-Post: <mailto:debian-desktop@lists.debian.org>
List-Help: <mailto:debian-desktop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-desktop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-desktop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-desktop-request@lists.debian.org
Resent-Date: Sun, 24 Jun 2007 20:43:13 +0000 (UTC)

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig71921B077644DD339C1EBD96
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable

> But there are still some open question that are worth a discussion. On
> of the main concepts of g-a-i is to make enabling additional and third
> party repositories as easy as possible. But do we want this in Debian?
I think we should do this.

> The application data will be separated into three packages:
> app-install-data-debian-main, app-install-data-debian-contrib and
> app-install-data-non-free.

the number of .desktop files in contrib and non-free is too low

> 1. The Ubuntu way: Shipping the data for all applications of main,
> contrib and non-free by default, excluding the icons, using filters to
> select the level of freedom and defaulting to only show applications of=

> main. The filters could be the following:
>=20
> all applications (main, contrib, non-free), only Free Debian
> applications (main), only installed applications
>=20
> (we don't need to promote third party applications and we do not suppor=
t
> non-free applications)

This seems to be the right way.

> Finally there is still one open dependency: sexy-python. Since the ITP
> holder does not respond to mails it would be nice if anybody else could=

> upload it.
I have a package at jak-linux.org, see
	http://jak-linux.org/.tmp/sexy-python_0.1.9-1.dsc
--=20
Julian Andres Klode

IRC Nickname:   juliank (Debian/OFTC + Freenode)
Fellow of FSFE: https://www.fsfe.org/en/fellows/jak (No. 1049)
Debian Wiki:    http://wiki.debian.org/JulianAndresKlode
Ubuntu Wiki:    http://wiki.ubuntu.com/JulianAndresKlode
In Launchpad:   https://launchpad.net/~juliank
Packages Overv: http://qa.debian.org/developer.php?login=3Djak@jak-linux.=
org
Languages:      German, English, [bit French]


--------------enig71921B077644DD339C1EBD96
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGftdkrCpf/gCCPsIRAp/wAJ0cNUTujTSAtLhI6lKpVvJggsfT/gCfellb
3dWOIGSw3qA1X6HS4eaacVw=
=712N
-----END PGP SIGNATURE-----

--------------enig71921B077644DD339C1EBD96--


-- 
To UNSUBSCRIBE, email to debian-desktop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

                  

emzK
Ph0 c 3i
r0