From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 12:38:44 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54GchhB030311
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 12:38:43 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0FD70163ABD
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 16:38:38 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 2FB4A163820;
	Mon,  4 Jun 2007 16:38:02 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1HvFZB-0000OY-L3; Mon, 04 Jun 2007 18:38:01 +0200
Received: by intern.SerNet.DE
	id 1HvFZB-0004hA-En; Mon, 04 Jun 2007 18:38:01 +0200
Received: by intern.SerNet.DE
	id 1HvFZA-0004h7-G6; Mon, 04 Jun 2007 18:38:01 +0200
Received: from vlendec by delphin.sernet.de with local (Exim 4.51)
	id 1HvFcp-00013z-9s; Mon, 04 Jun 2007 18:41:47 +0200
Date: Mon, 4 Jun 2007 18:41:47 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: "Stefan (metze) Metzmacher" <metze@samba.org>
References: <46642560.7060101@samba.org> <20070604150707.GA5467@sernet.de>
	<E1HvE9A-0000UA-Qo@intern.SerNet.DE> <46643F0F.8020607@samba.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="U+BazGySraz5kW0T"
Content-Disposition: inline
In-Reply-To: <46643F0F.8020607@samba.org>
User-Agent: Mutt/1.5.9i
Message-Id: <E1HvFZB-0004hA-En@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: Multiple recipients of list SAMBA-TECHNICAL <samba-technical@samba.org>
Subject: Re: samba3 crash
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


--U+BazGySraz5kW0T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 04, 2007 at 06:34:23PM +0200, Stefan (metze) Metzmacher wrote:
> >> Which subtest is this? make valgrindtest just takes so long
> >> that I would like to narrow it down a bit.
>=20
> It was LOCK3 from samba3's smbtorture

Hmm. valgrinded that with Linux, no problem. I need to look
at "hape" when I get better network again.

Volker

--U+BazGySraz5kW0T
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.2 (GNU/Linux)

iD8DBQFGZEDKpZr5CauZH5wRAiKfAKDYONcrdEmQZRcEfuJ8hVEbPNTaigCgwgIw
OZVzIUsIGcQGmrRh5aA7LgU=
=t0jY
-----END PGP SIGNATURE-----

--U+BazGySraz5kW0T--

         

fNe1�