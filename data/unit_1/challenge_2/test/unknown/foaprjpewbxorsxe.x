From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  8 04:58:48 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l588wmhB013217
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 04:58:48 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 247D0162C46
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  8 Jun 2007 08:58:42 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from localhost.localdomain (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0FC8E162AD8;
	Fri,  8 Jun 2007 08:57:59 +0000 (GMT)
From: Andrew Bartlett <abartlet@samba.org>
To: Jeremy Allison <jra@samba.org>
In-Reply-To: <20070608043125.GC3690@jeremy2.wintest.samba.local>
References: <DA041B37-7FC6-4390-A3E6-FD881A126592@samba.org>
	<20070608043125.GC3690@jeremy2.wintest.samba.local>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="=-oliJncJ5o9qS+CG7Ez2k"
Date: Fri, 08 Jun 2007 18:57:58 +1000
Message-Id: <1181293078.18882.154.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.6.3 (2.6.3-2.fc5) 
Cc: samba-technical@lists.samba.org
Subject: Re: [PATCH 1/4] Make sure groups[0] is the effective gid on FreeBSD.
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


--=-oliJncJ5o9qS+CG7Ez2k
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu, 2007-06-07 at 21:31 -0700, Jeremy Allison wrote:
> On Thu, Jun 07, 2007 at 08:35:29PM -0700, James Peach wrote:
> > On BSD systems, the first gid passed to setgroups(2) should be the =20
> > effective
> > gid. Make sure we grow the groups list when switching credentials to =20
> > guarantee
> > this (as far as possible).
>=20
> Sorry, I hate this and won't accept it.
>=20
> I want to see the *BSD brokenness split out as
> far as possible as a sepeate set of #ifdefs
> from the working code so I can see *exactly*
> what you're doing here.

I have to agree - not even having read the patch, but from my memory of
this area in the past.  We have 'fixed FreeBSD' and broken Linux on this
before. Let's keep the madness restricted.=20

Andrew Bartlett

--=20
Andrew Bartlett                                http://samba.org/~abartlet/
Authentication Developer, Samba Team           http://samba.org
Samba Developer, Red Hat Inc.                  http://redhat.com

--=-oliJncJ5o9qS+CG7Ez2k
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQBGaRoWz4A8Wyi0NrsRAp7dAKCyrcJXuBjE51rfb8ePVe8FJ+4HbwCfZvdA
ABSKMyPMtAmSosgKVaf0pUU=
=v5xi
-----END PGP SIGNATURE-----

--=-oliJncJ5o9qS+CG7Ez2k--

   

fl>Lgs9sN.p