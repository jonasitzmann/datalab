From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 11:52:27 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64FqRL9012516
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 11:52:27 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0E133163890
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  4 Jul 2007 15:52:21 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from lisa.goe.net (lisa.JS.Jura.Uni-Goettingen.de [134.76.166.209])
	by lists.samba.org (Postfix) with ESMTP id 3D260162AEF
	for <samba-technical@lists.samba.org>;
	Wed,  4 Jul 2007 15:51:54 +0000 (GMT)
Received: from lisa.goe.net (localhost [127.0.0.1])
	by lisa.goe.net (8.13.8/8.13.8) with ESMTP id l64FprXt000793
	for <samba-technical@lists.samba.org>; Wed, 4 Jul 2007 17:51:53 +0200
Received: (from uucp@localhost)
	by lisa.goe.net (8.13.8/8.13.8/Submit) with UUCP id l64Fprsl000792
	for samba-technical@lists.samba.org; Wed, 4 Jul 2007 17:51:53 +0200
Received: from lmuelle by gab.m4r.de with local (Exim 4.63)
	(envelope-from <lmuelle@m5r.de>)
	id 1I676v-0005Ob-Cg; Wed, 04 Jul 2007 17:49:45 +0200
Date: Wed, 4 Jul 2007 17:49:45 +0200
From: Lars =?iso-8859-1?Q?M=FCller?= <lars@samba.org>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
Message-ID: <20070704154945.GA20717@gab.suse.de>
References: <468A4CBA.10500@cynapses.org> <468A5DFC.6020405@samba.org>
	<468A70DC.1050203@cynapses.org>
	<20070704141545.GA20307@gab.suse.de> <468BB7C7.4060309@samba.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
In-Reply-To: <468BB7C7.4060309@samba.org>
X-PGP-Key-Fingerprint: CC82 2E67 6A26 4560 79CD  5E9D D0FD F9C8 49BD BCBD
X-PGP-Key-ID: 0x49BDBCBD
User-Agent: Mutt/1.5.13 (2006-08-11)
Cc: samba-technical@lists.samba.org
Subject: Re: [Patch] Make the days before the password expiry warning
	appears configurable
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


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 04, 2007 at 10:07:51AM -0500, Gerald Carter wrote:
[ 8< ]
> Why did you merge this already when I had said I
> would review it tomorrow?

Sorry Jerry.  The intention was to save you time.

As mentioned Andreas and I discussed the code face to face today.

No intention to stop you from a review.  If there is any problem feel
free to revert the check in.

Lars

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGi8GZ0P35yEm9vL0RApIxAJ4ozCjR9dBpka3nmyWUVZ8gx28YyQCbBd1i
AilqyVTAuxScu2ASf/NcBJg=
=l4OI
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--

           

od+:n;m-tLtyfo