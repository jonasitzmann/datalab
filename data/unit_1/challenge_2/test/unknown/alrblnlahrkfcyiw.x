From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 20 23:13:53 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L3DrL9017937
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 23:13:53 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 77B60163824
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 03:13:51 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from localhost.localdomain (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 978FA162AD8
	for <samba-technical@samba.org>; Thu, 21 Jun 2007 03:13:28 +0000 (GMT)
From: Andrew Bartlett <abartlet@samba.org>
To: Multiple recipients of list SAMBA-TECHNICAL <samba-technical@samba.org>
In-Reply-To: <1182391679.2972.14.camel@localhost.localdomain>
References: <1182212093.3538.15.camel@naomi>
	<1182345477.8067.3.camel@localhost.localdomain>
	<1182391679.2972.14.camel@localhost.localdomain>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="=-wXidjaR8tYa+bbXvqZ1T"
Date: Thu, 21 Jun 2007 13:13:25 +1000
Message-Id: <1182395606.2972.21.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.6.3 (2.6.3-2.fc5) 
Subject: MMC Write support (was Re: [SAMBA4] Faster schema loading)
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


--=-wXidjaR8tYa+bbXvqZ1T
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu, 2007-06-21 at 12:07 +1000, Andrew Bartlett wrote:

> I've got MMC as far as recognising (and editing the description of) the
> Samba4 Domain, but I can't see the user's container.=20

I should make it clear, with this patch, we now have MMC write support.
I'm having trouble browsing, but if you search for a user, you can now
edit anything regarding that user.=20

I've also tried the group policy editor, but I think that needs the
SYSVOL share I don't have set up at this moment.=20

Andrew Bartlett

--=20
Andrew Bartlett                                http://samba.org/~abartlet/
Authentication Developer, Samba Team           http://samba.org
Samba Developer, Red Hat Inc.                  http://redhat.com

--=-wXidjaR8tYa+bbXvqZ1T
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQBGeezUz4A8Wyi0NrsRAgLYAKCGcMr08pMe9vTNBAcwHWtKeVpZdwCfVOku
VDvQSSY0bsFSvL9osgepO1A=
=adW8
-----END PGP SIGNATURE-----

--=-wXidjaR8tYa+bbXvqZ1T--

                 

E j< 
e2aon