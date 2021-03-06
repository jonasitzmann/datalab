From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 25 10:48:58 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PEmvL9029979
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 10:48:57 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id DC7A1163867
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 14:48:54 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from localhost6.localdomain6 (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 90317162AC8
	for <samba-technical@lists.samba.org>;
	Mon, 25 Jun 2007 14:48:23 +0000 (GMT)
From: Kai Blin <kai@samba.org>
To: samba-technical@lists.samba.org
Date: Mon, 25 Jun 2007 16:46:59 +0200
User-Agent: KMail/1.9.6
References: <467EF15A.4080701@samba.org> <467FCAE7.3050306@samba.org>
	<1182780800.2895.22.camel@localhost.localdomain>
In-Reply-To: <1182780800.2895.22.camel@localhost.localdomain>
Organization: Samba Team
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1973352.vN9ccRlFCg";
	protocol="application/pgp-signature"; micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <200706251647.04074.kai@samba.org>
Subject: Re: Short HOWTO on using git for Samba development
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

--nextPart1973352.vN9ccRlFCg
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Monday 25 June 2007 16:13:20 simo wrote:

> > If we were to swap to git, the full svn import would be < 160M
> > so the pull be only be slightly longer.
>
> The only problem I see with git/bzr as the main tree is that it seem to
> introduce a gatekeeper to the "official" tree forcing all people to send
> around patches instead of just committing.
> This work flow model is ok if a few people work on a very isolated part
> of a tree, or on some experimental features, but if you need to
> collaborate it may make things more annoying.

Shouldn't a centralized git repos fix this with people using git-push? That=
=20
would still give you the benefits of easy branching and merging that git=20
provides while keeping a centralized repository for collaboration.

I've never used git-push for collaborative development, but for syncing=20
development on two boxes, it was working just fine.

Cheers,
Kai

=2D-=20
Kai Blin
WorldForge developer  http://www.worldforge.org/
Wine developer        http://wiki.winehq.org/KaiBlin
Samba team member     http://www.samba.org/samba/team/
=2D-
Will code for cotton.

--nextPart1973352.vN9ccRlFCg
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQBGf9VjEKXX/bF2FpQRAv5sAJ9LXwwPMrIyj1Oa8d9b3ifckro3XACfUJsC
l+ihypcAuaiNSYXSMjb756Q=
=6WPl
-----END PGP SIGNATURE-----

--nextPart1973352.vN9ccRlFCg--

              

 3 fyp  Ib