From bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Thu Jun 28 00:24:29 2007
Return-Path: <bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5S4OTL9004996
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 28 Jun 2007 00:24:29 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id C6F662E368; Thu, 28 Jun 2007 04:24:21 +0000 (UTC)
Old-Return-Path: <sebi@glatzor.de>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=4.0 tests=AWL,FORGED_RCVD_HELO 
	autolearn=no version=3.1.4
X-Original-To: debian-desktop@lists.debian.org
Received: from h980823.serverkompetenz.net (glatzor.de [88.198.89.204])
	by murphy.debian.org (Postfix) with ESMTP id 371FC2E20D
	for <debian-desktop@lists.debian.org>; Thu, 28 Jun 2007 04:24:17 +0000 (UTC)
Received: from [192.168.2.103] (p57AED865.dip.t-dialin.net [87.174.216.101])
	by h980823.serverkompetenz.net (Postfix) with ESMTP id 322D3A00B9
	for <debian-desktop@lists.debian.org>; Thu, 28 Jun 2007 06:27:28 +0200 (CEST)
Subject: Re: Debian Desktop Etch+1 - the long road to binoculars.
From: Sebastian Heinlein <sebi@glatzor.de>
To: debian-desktop@lists.debian.org
In-Reply-To: <5fabd6fd0706271255k35deb74dy8e1ec7e0fe050c0a@mail.gmail.com>
References: <5fabd6fd0706271255k35deb74dy8e1ec7e0fe050c0a@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-xSJ618PDvoH1NUJKPSNu"
Date: Thu, 28 Jun 2007 06:24:15 +0200
Message-Id: <1183004655.4614.22.camel@renate-laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <7ptCOC.A.SgB.1fzgGB@murphy>
Resent-From: debian-desktop@lists.debian.org
X-Mailing-List: <debian-desktop@lists.debian.org> archive/latest/1777
X-Loop: debian-desktop@lists.debian.org
List-Id: <debian-desktop.lists.debian.org>
List-Post: <mailto:debian-desktop@lists.debian.org>
List-Help: <mailto:debian-desktop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-desktop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-desktop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-desktop-request@lists.debian.org
Resent-Date: Thu, 28 Jun 2007 04:24:21 +0000 (UTC)


--=-xSJ618PDvoH1NUJKPSNu
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Am Mittwoch, den 27.06.2007, 16:55 -0300 schrieb Gustavo Franco:

> * Flash and Java support
>=20
> It would be amazing if we could add stable enough: gnash or swfdec
> (flash) and basically gcjwebplugin (java) or maybe something that will
> come out from openjdk.

Asac works on a kind of gnome-plugin-install based on gnome-app-install
for Ubuntu.

> I've already seen people watching movie trailers from Apple website
> (as I do) using Debian Desktop Etch without considering what was under
> the hood to make that possible. We picked totem mozilla (gecko) based
> browsers plugin with xine backend (packages: totem-mozilla and
> totem-xine). Avoid gstreamer usage was intentional. I would be glad to
> review such a decision, but with proof that we can support more
> formats out of the box (about:plugins is your friend).

Gstreamer improved a lot recently and it does support gnome-vfs.

> * Upgrade manager (update-manager)
>=20
> I've discussed with kov some of the stuff that can be done to make
> sure Debian Desktop Etch upgrades to Lenny will be easier than
> Sarge->Etch.

I am going to remove the Ubuntu specific parts of the latest
update-manager soon, so that we can update the Debian package.
Furthermore mvo did a great job in providing a dist-upgrade (with
terminal, gtk and qt frontend) tool that is quite flexibel and could be
extended for Debian. Perhaps it is also worth to look at his update unit
tests for Ubuntu.

Cheers,

Sebastian

--=-xSJ618PDvoH1NUJKPSNu
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Dies ist ein digital signierter Nachrichtenteil

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQBGgzfveujorJNMItURAuR+AJ4oT+Irt5RUwZutRVQ3owB/6r6AawCfWEKg
ID8itwd9RdcmkhUwJICyaE8=
=oJGu
-----END PGP SIGNATURE-----

--=-xSJ618PDvoH1NUJKPSNu--


-- 
To UNSUBSCRIBE, email to debian-desktop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

             

Ctos DV