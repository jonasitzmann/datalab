From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jul  1 12:24:27 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61GOPL9002714
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 12:24:26 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0630A16385D
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  1 Jul 2007 16:24:22 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id E9324162AD7;
	Sun,  1 Jul 2007 16:23:43 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1I52D9-0002go-4i; Sun, 01 Jul 2007 18:23:43 +0200
Received: by intern.SerNet.DE
	id 1I52D8-0000ni-Qe; Sun, 01 Jul 2007 18:23:42 +0200
Received: by intern.SerNet.DE
	id 1I52D8-0000nc-J5; Sun, 01 Jul 2007 18:23:42 +0200
Date: Sun, 1 Jul 2007 18:11:27 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: Michael Adam <ma@SerNet.DE>
References: <20070630235224.17FF3162BD8@lists.samba.org>
	<20070630235349.GA1418@jeremy2.wintest.samba.local>
	<E1I4mvc-0007vV-DH@intern.SerNet.DE>
	<20070701003949.GB1418@jeremy2.wintest.samba.local>
	<20070701061430.GA4174@sernet.de>
	<20070701141940.GG17581@sernet.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline
In-Reply-To: <20070701141940.GG17581@sernet.de>
User-Agent: Mutt/1.5.13 (2006-08-11)
Message-Id: <E1I52D8-0000ni-Qe@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@lists.samba.org, Jeremy Allison <jra@samba.org>
Subject: Re: svn commit: samba r23668 - in branches: SAMBA_3_0/source/lib
	SAMBA_3_0_26/source/lib
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


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jul 01, 2007 at 04:19:40PM +0200, Michael Adam wrote:
> This was exactly my reasoning, why num_ucs2 can't wrap.

It could in theory have wrapped as inside SMB_MALLOC_ARRAY
(i.e. malloc_array) length is multiplied with
sizeof(smb_ucs2_t) again. But the overflow check is done
before that, before the multiply.

Volker

--0F1p//8PRICkK4MW
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGh9IupZr5CauZH5wRArVLAJ92L7e8ziVJQCC/fTba2yjqRs5BnQCgpTE8
Eo5pFL34pO5S5TjuShDJDys=
=O+ut
-----END PGP SIGNATURE-----

--0F1p//8PRICkK4MW--

                


h5
aq-ht