From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 10:24:52 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54EOohB028997
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 10:24:50 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C8B23163880
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 14:24:44 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=BAYES_00,UNPARSEABLE_RELAY 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id B2334162ABE;
	Mon,  4 Jun 2007 14:24:10 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1HvDTe-0007oF-7l; Mon, 04 Jun 2007 16:24:10 +0200
Received: by intern.SerNet.DE
	id 1HvDTd-0005gE-MH; Mon, 04 Jun 2007 16:24:09 +0200
Received: by intern.SerNet.DE
	id 1HvDTd-0005gA-3R; Mon, 04 Jun 2007 16:24:09 +0200
Received: by dhcp211.sernet.de (Postfix, from userid 8362)
	id CF6111C3C58; Mon,  4 Jun 2007 16:24:08 +0200 (CEST)
Date: Mon, 4 Jun 2007 16:24:08 +0200
From: Karolin Seeger <ks@sernet.de>
To: simo <idra@samba.org>
References: <E1HvCeQ-00010m-1c@intern.SerNet.DE>
	<1180964652.24923.254.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="y0Ed1hDcWxc3B7cn"
Content-Disposition: inline
In-Reply-To: <1180964652.24923.254.camel@localhost.localdomain>
Priority: normal
User-Agent: Mutt/1.5.6i
Message-Id: <E1HvDTd-0005gE-MH@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: jerry@samba.org, samba-technical@lists.samba.org
Subject: Re: Rewritten IDmap backend
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


--y0Ed1hDcWxc3B7cn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 04, 2007 at 09:44:12AM -0400, simo wrote:
> idmap uid/idmap gid are still valid parameters and are not tied to the
> rid backend.
> We still consider using them ok, and are used primarily for backward
> compatibility with existing sm.conf files (modulo the, always marked as
> experimental, multi-domain rid backend support).
=20
Ok, then the segfault should be fixed to ensure backward compatibilty
(see bug report for details).

I could provide a backtrace tomorrow, but it is very easy to reproduce,
too.

Cheers,=20
Karolin

--=20
SerNet GmbH, Bahnhofsallee 1b, 37081 G=C3=B6ttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG G=C3=B6ttingen, HRB 2816, GF: Dr. Johannes Loxen
http://www.SerNet.DE, mailto: Info @ SerNet.DE


--y0Ed1hDcWxc3B7cn
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.5 (GNU/Linux)

iD8DBQFGZCCIKGi9fisXk1ERAnvHAJsFyiv4qcNPx3xUetyTsApmJwKI1QCgqGxn
GnEldF1Vd5RFPyR9bXH5s3o=
=J4KS
-----END PGP SIGNATURE-----

--y0Ed1hDcWxc3B7cn--

             

 nmu