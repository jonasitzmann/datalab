From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 12 16:34:06 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CKY4L9031545
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 16:34:05 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 4EC4E162BC4
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 20:34:03 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id D27F2162ACA
	for <samba-technical@lists.samba.org>;
	Tue, 12 Jun 2007 20:33:26 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	for samba-technical@lists.samba.org
	id 1HyD3N-0001vO-Tv; Tue, 12 Jun 2007 22:33:25 +0200
Received: by intern.SerNet.DE
	id 1HyD3N-0003pH-Ku; Tue, 12 Jun 2007 22:33:25 +0200
Received: by intern.SerNet.DE
	id 1HyD3N-0003pD-FJ; Tue, 12 Jun 2007 22:33:25 +0200
Date: Tue, 12 Jun 2007 22:37:18 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: samba-technical@lists.samba.org
References: <20070612195941.F170A162ACD@lists.samba.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
In-Reply-To: <20070612195941.F170A162ACD@lists.samba.org>
User-Agent: Mutt/1.5.13 (2006-08-11)
Message-Id: <E1HyD3N-0003pH-Ku@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Subject: Re: svn commit: samba r23450 - in branches: SAMBA_3_0/source/smbd
	SAMBA_3_0_25/source/smbd SAMBA_3_0_26/source/smbd
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


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 12, 2007 at 07:59:41PM +0000, jra@samba.org wrote:
> max_params_return is complete fiction when getting a changenotify
> request. Ignore it. Should fix bug #4689 but more tests and
> valgrinding will follow.

Thanks for taking care of this!

To be honest, I probably did not test the case when not even
a single file name would fit into the max_param_count.

Volker

--ZGiS0Q5IWpPtfppv
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGbwP+pZr5CauZH5wRArJgAJ4hTQVzUyn53XXKar1j+gDcUKDHmQCgsmQF
E3ctoiyOod64LwcLJwnTPdc=
=5xIU
-----END PGP SIGNATURE-----

--ZGiS0Q5IWpPtfppv--

     

�iv=Izi11" B n