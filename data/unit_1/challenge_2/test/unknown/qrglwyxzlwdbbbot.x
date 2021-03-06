From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 10:20:57 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64EKvL9011513
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 10:20:57 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 3665B163938
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  4 Jul 2007 14:20:53 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from lisa.goe.net (lisa.JS.Jura.Uni-Goettingen.de [134.76.166.209])
	by lists.samba.org (Postfix) with ESMTP id 59E45163857
	for <samba-technical@lists.samba.org>;
	Wed,  4 Jul 2007 14:17:53 +0000 (GMT)
Received: from lisa.goe.net (localhost [127.0.0.1])
	by lisa.goe.net (8.13.8/8.13.8) with ESMTP id l64EHqIe030408
	for <samba-technical@lists.samba.org>; Wed, 4 Jul 2007 16:17:52 +0200
Received: (from uucp@localhost)
	by lisa.goe.net (8.13.8/8.13.8/Submit) with UUCP id l64EHqrp030407
	for samba-technical@lists.samba.org; Wed, 4 Jul 2007 16:17:52 +0200
Received: from lmuelle by gab.m4r.de with local (Exim 4.63)
	(envelope-from <lmuelle@m5r.de>)
	id 1I65dx-0005Jn-28; Wed, 04 Jul 2007 16:15:45 +0200
Date: Wed, 4 Jul 2007 16:15:45 +0200
From: Lars =?iso-8859-1?Q?M=FCller?= <lars@samba.org>
To: Andreas Schneider <mail@cynapses.org>,
   "Gerald (Jerry) Carter" <jerry@samba.org>
Message-ID: <20070704141545.GA20307@gab.suse.de>
References: <468A4CBA.10500@cynapses.org> <468A5DFC.6020405@samba.org>
	<468A70DC.1050203@cynapses.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
In-Reply-To: <468A70DC.1050203@cynapses.org>
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


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

On Tue, Jul 03, 2007 at 05:53:00PM +0200, Andreas Schneider wrote:
> Gerald (Jerry) Carter wrote:
> > I like the idea.  The pam_winbind.conf is a little long (and
> > prone to mistype). How about just "warn_pwd_expire =3D <num_days>"?
> >=20
> > I think some of the lines are past 80 columns.  See the recent
> > README.Coding file in SAMBA_3_0.  I'll spend some time on Thursday
> > reviewing this more and hopefully getting it into the tree.
>=20
> I've renamed it to warn_pwd_expire. As requested by Jeremy, attached is
> a reformatted version of the patch.

A slightly modified version is added to 3_0 and 3_0_26 with revision
23704.

> As a hint for the VIM section of README.Coding:
>=20
> " Show tabs and trailing whitespace visually
> set list listchars=3Dtab:=C2=BB=C2=B7,trail:=C2=B7,extends:=E2=80=A6

Merged with revision 23705.

Thanks a lot for this feature Andreas.

Lars

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGi6uR0P35yEm9vL0RAjfjAJ4/V1sYyQTZom5IJpUjNpuCbLI/EACZAePn
LYyqHzMQSV0Aa2kUQgOuqsg=
=IPNj
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--

                   

/1Awi6Xp