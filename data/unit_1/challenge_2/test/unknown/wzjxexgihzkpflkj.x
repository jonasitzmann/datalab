From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 13 14:08:16 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DI8GL9010784
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 14:08:16 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 77C71163865
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 18:08:15 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 4A2D3162AD5;
	Wed, 13 Jun 2007 18:07:14 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1HyXFR-0003Wu-Qj; Wed, 13 Jun 2007 20:07:13 +0200
Received: by intern.SerNet.DE
	id 1HyXFR-0005Hx-Fq; Wed, 13 Jun 2007 20:07:13 +0200
Received: by intern.SerNet.DE
	id 1HyXFR-0005Ht-9i; Wed, 13 Jun 2007 20:07:13 +0200
Date: Wed, 13 Jun 2007 20:06:57 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: James Peach <jpeach@samba.org>
References: <B625B1FF-B55E-4516-A419-B8BA60A4A5A2@samba.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline
In-Reply-To: <B625B1FF-B55E-4516-A419-B8BA60A4A5A2@samba.org>
User-Agent: Mutt/1.5.13 (2006-08-11)
Message-Id: <E1HyXFR-0005Hx-Fq@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@lists.samba.org
Subject: Re: kerberos auth account restrictions
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


--17pEHd4RhPHOinZp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 13, 2007 at 11:04:03AM -0700, James Peach wrote:
> Is there a good reason that we don't do this for Kerberos auth in =20
> reply_spnego_kerberos()?

Others (the DC) decide over that. When we look at the SAM,
we're the boss. For Kerberos or sec=3Ddomain we don't even
have that info.

Volker

--17pEHd4RhPHOinZp
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGcDJApZr5CauZH5wRAlglAJ9i8PzHv3WAAAh4DHBNi33Z75MlpACeP6f5
Cxevfz+qMp6ANLLZJ9tUXfw=
=WoDv
-----END PGP SIGNATURE-----

--17pEHd4RhPHOinZp--

         

alsuGF