From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 07:36:04 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62Ba3L9013114
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 07:36:04 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id DCA8B163850
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  2 Jul 2007 11:35:59 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 11027162AD8
	for <samba-technical@lists.samba.org>;
	Mon,  2 Jul 2007 11:34:24 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1I5KAe-0003Ix-VU; Mon, 02 Jul 2007 13:34:20 +0200
Received: by intern.SerNet.DE
	id 1I5KAe-0007Td-FT; Mon, 02 Jul 2007 13:34:20 +0200
Received: by intern.SerNet.DE
	id 1I5KAe-0007TW-8B; Mon, 02 Jul 2007 13:34:20 +0200
Date: Mon, 2 Jul 2007 13:33:27 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: Dmitry Shatrov <dhsatrov@linux.vnet.ibm.com>
References: <4688BA96.9020804@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Bn2rw/3z4jIqBvZU"
Content-Disposition: inline
In-Reply-To: <4688BA96.9020804@linux.vnet.ibm.com>
User-Agent: Mutt/1.5.13 (2006-08-11)
Message-Id: <E1I5KAe-0007Td-FT@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@lists.samba.org
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


--Bn2rw/3z4jIqBvZU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 02, 2007 at 12:43:02PM +0400, Dmitry Shatrov wrote:
> Profiling smbd memory usage with valgrind --tool=3Dmassif gives=20
> interesting results.
> It turns out that quite a lot of memory (~300 Kbytes) is allocated right=
=20
> at the start of each smbd process by init_iconv() (lib/charcnv.c).

These can be completely removed with 'dos charset =3D ASCII'

Volker

--Bn2rw/3z4jIqBvZU
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGiOKGpZr5CauZH5wRAsA6AKDSLYOK8XJ3Jff2ervVnFQ+ERGMtACggSmJ
VvNJGmjIccBmtZyETtBQLNw=
=JEJs
-----END PGP SIGNATURE-----

--Bn2rw/3z4jIqBvZU--



6u/ loQrl