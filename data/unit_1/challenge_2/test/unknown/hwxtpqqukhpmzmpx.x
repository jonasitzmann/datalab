From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jul  3 03:36:42 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l637afL9025304
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 03:36:41 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 2C185162BC1
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 07:36:37 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 3F575162ACA
	for <samba-technical@lists.samba.org>;
	Tue,  3 Jul 2007 07:36:17 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1I5cvl-0004un-Je; Tue, 03 Jul 2007 09:36:13 +0200
Received: by intern.SerNet.DE
	id 1I5cvl-0004DR-EU; Tue, 03 Jul 2007 09:36:13 +0200
Received: by intern.SerNet.DE
	id 1I5cvl-0004DK-5w; Tue, 03 Jul 2007 09:36:13 +0200
Date: Tue, 3 Jul 2007 09:35:00 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: tridgell@au1.ibm.com
References: <4688BA96.9020804@linux.vnet.ibm.com>
	<18056.54611.789988.181953@samba.org>
	<E1I5KjB-0001NJ-Ho@intern.SerNet.DE>
	<18057.29820.535642.180222@samba.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
In-Reply-To: <18057.29820.535642.180222@samba.org>
User-Agent: Mutt/1.5.13 (2006-08-11)
Message-Id: <E1I5cvl-0004DR-EU@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@lists.samba.org,
   Dmitry Shatrov <dhsatrov@linux.vnet.ibm.com>
Subject: Re: Samba3 memory usage, iconv
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


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 03, 2007 at 07:56:12AM +1000, Andrew Tridgell wrote:
> partial SMB packet from a client would block all other clients of that
> process.

lib/packet.c should get around that one without
lib/events.c.

Volker

--3MwIy2ne0vdjdPXF
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGifwjpZr5CauZH5wRAlqtAJwNSKQaHsuWuo7bYsA2OHx+s2ViZgCgrEd8
zxKGI9kvYluFwHQv9kZvQGk=
=nWZl
-----END PGP SIGNATURE-----

--3MwIy2ne0vdjdPXF--

              

4d3kM3  b.o