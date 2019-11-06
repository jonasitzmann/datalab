From sugar-bounces@lists.laptop.org  Wed Jun 20 17:51:34 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KLpYL9015316
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 17:51:34 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 5F25D58BC7CC;
	Wed, 20 Jun 2007 17:50:50 -0400 (EDT)
Received: from bayer.media.mit.edu (bayer.media.mit.edu [18.85.2.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id CB1A458BC7CC
	for <sugar@lists.laptop.org>; Wed, 20 Jun 2007 17:50:49 -0400 (EDT)
Received: from [127.0.0.1] (wireless-19-112.media.mit.edu [18.85.19.112])
	by bayer.media.mit.edu (8.12.11/8.12.11/MEDIA) with ESMTP id
	l5KLpRMn019500
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 20 Jun 2007 17:51:30 -0400 (EDT)
Message-ID: <4679A173.40708@rpi.edu>
Date: Wed, 20 Jun 2007 17:51:47 -0400
From: Noah Kantrowitz <kantrn@rpi.edu>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: "Julius B. Lucks" <julius@younglucks.com>, sugar@lists.laptop.org
References: <1932D0A3-01EB-43FD-846B-2A8CA86F166A@younglucks.com>
In-Reply-To: <1932D0A3-01EB-43FD-846B-2A8CA86F166A@younglucks.com>
X-Enigmail-Version: 0.95.0
Subject: Re: [sugar] i18n for python with gettext
X-BeenThere: sugar@lists.laptop.org
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Discussion of OLPC design,
	desktop platform and user experience" <sugar.lists.laptop.org>
List-Unsubscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=unsubscribe>
List-Archive: <http://lists.laptop.org/pipermail/sugar>
List-Post: <mailto:sugar@lists.laptop.org>
List-Help: <mailto:sugar-request@lists.laptop.org?subject=help>
List-Subscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8435633216479306703=="
Mime-version: 1.0
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============8435633216479306703==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig9F8531C52EB644D65E40964F"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig9F8531C52EB644D65E40964F

> Hi All,
>=20
> There has been some recent discussion about i18n and activities.  Using=

> the python gettext module, I set up i18n in Kuku, and put up some notes=

> at http://wiki.laptop.org/go/Python_i18n .  It looks like there is a bi=
t
> of code that needs to be in each activity, such as some logic for
> determining which language to localize to, and pulling the correct .mo
> file for it. etc.  Is it appropriate to put this code in some sugar
> module (sugar.i10n for example?) so that all activity developers have t=
o
> do is wrap strings in _(), create the .pot/.po/.mo files, and do
> something like (suggested by mncharity)
>=20
> from sugar import i10n
> i10n.install()
>=20
> ?
>=20
>=20

Something I mentioned on IRC is Babel (http://babel.edgewall.org/). It
might be a nice toolkit to use for l10n stuffs. Disclaimer: made by a
friend of mine, so I am probably biased ;-)

--Noah


--------------enig9F8531C52EB644D65E40964F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (MingW32)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGeaGAA9fEp2eRsU8RArZ0AKCJMH9fb519LpklCL3EFXUzWjAmIwCfZkXH
/LNa1W0/yCF7x0Kqoh7cC3g=
=Vc6h
-----END PGP SIGNATURE-----

--------------enig9F8531C52EB644D65E40964F--

--===============8435633216479306703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

--===============8435633216479306703==--

                   

 pUdwL8lt8aa