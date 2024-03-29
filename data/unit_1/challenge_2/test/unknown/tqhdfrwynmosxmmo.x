From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 09:04:53 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64D4qL9010794
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 09:04:53 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 372DC1638B2
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  4 Jul 2007 13:04:48 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mxout005.mail.hostpoint.ch (mxout005.mail.hostpoint.ch
	[217.26.49.184])
	by lists.samba.org (Postfix) with ESMTP id 75C8C162AC2
	for <samba-technical@lists.samba.org>;
	Wed,  4 Jul 2007 13:03:58 +0000 (GMT)
Received: from [10.0.2.20] (helo=asmtp002.mail.hostpoint.ch)
	by mxout005.mail.hostpoint.ch with esmtp (Exim 4.63 (FreeBSD))
	(envelope-from <dev-zero@gentoo.org>)
	id 1I64WS-000HfS-4t; Wed, 04 Jul 2007 15:03:57 +0200
Received: from [80.238.235.157] (helo=[192.168.0.5])
	by asmtp002.mail.hostpoint.ch with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.63 (FreeBSD)) (envelope-from <dev-zero@gentoo.org>)
	id 1I64WR-0007iE-Uc; Wed, 04 Jul 2007 15:03:56 +0200
X-Authenticated-Sender-Id: tm@dev-zero.ch
Message-ID: <468B9AB7.1030608@gentoo.org>
Date: Wed, 04 Jul 2007 15:03:51 +0200
From: =?ISO-8859-15?Q?Tiziano_M=FCller?= <dev-zero@gentoo.org>
Organization: Gentoo
User-Agent: Thunderbird 2.0.0.4 (X11/20070618)
MIME-Version: 1.0
To: "Gerald (Jerry) Carter" <jerry@samba.org>
References: <468B61C4.4070901@gentoo.org> <468B8881.3000202@samba.org>
In-Reply-To: <468B8881.3000202@samba.org>
X-Enigmail-Version: 0.95.1
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="------------enig0021E5B664E2BC6F57E98DB5"
Cc: samba-technical@lists.samba.org
Subject: Re: Install additional header-files to allow separate plugin builds
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: dev-zero@gentoo.org
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

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig0021E5B664E2BC6F57E98DB5
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable

Gerald (Jerry) Carter schrieb:
> Tiziano M=FCller wrote:
>> Hi everyone
>=20
>> I just wondered recently why all available plugins (samba-vscan, pdbsq=
l)
>> need the complete samba source tree to build. So I started to experime=
nt
>> and with the tree below, it's possible to successfully build the
>> mentioned plugins/backends (but didn't test them yet :-)
>=20
>> Now, are there any plans to install the relevant header-files in the
>> future? Even if the API is still unstable?
>=20
> It's not a good idea to install all these headers.  We need to
> clean up  the code to allow a small set of public headers
> that people can build against.
I know that it's a bad idea. The problem is only that at the moment
samba-vscan is integrated into the samba-package here on Gentoo (don't
worry, the user has to enable it separately). And we got another request
for pdbsql. The only possibility for us to separate the packages is to
install those headers.

Is there somebody working on it or some concrete plans when the cleanup
will happen?
At the moment, samba-vscan and pdbsql are broken anyway for samba-3.0.25
due to api-changes, so, no hurry :-)

Thanks for your time,
Tiziano



--------------enig0021E5B664E2BC6F57E98DB5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.4 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGi5q6GwVqY66cHjARAohMAJ96B/8UPF9moXGOlJvFIjEQpkHMrgCeOjoL
vlu4bP5VW2J6wcQeKg6ZKOw=
=A3f1
-----END PGP SIGNATURE-----

--------------enig0021E5B664E2BC6F57E98DB5--

                   

".�e.orriQ10-.