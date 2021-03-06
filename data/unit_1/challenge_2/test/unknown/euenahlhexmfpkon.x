From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Mon Jul  2 17:16:53 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62LGqL9019099
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 17:16:52 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 53E772E47A; Mon,  2 Jul 2007 21:17:11 +0000 (UTC)
Old-Return-Path: <frx@firenze.linux.it>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.3 required=4.0 tests=AWL,BAYES_00,LDOSUBSCRIBER 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from smtpi2.ngi.it (smtpi2.ngi.it [88.149.128.21])
	by murphy.debian.org (Postfix) with ESMTP id B7FD42DDF9
	for <debian-legal@lists.debian.org>; Mon,  2 Jul 2007 21:17:03 +0000 (UTC)
Received: from neverland (88-149-179-128.static.ngi.it [88.149.179.128])
	by smtpi2.ngi.it (8.13.8/8.13.8) with ESMTP id l62LGYtn021799
	for <debian-legal@lists.debian.org>; Mon, 2 Jul 2007 23:16:34 +0200
Received: from frx by neverland with local (Exim 4.50)
	id 1I5TG4-0003u4-R3
	for debian-legal@lists.debian.org; Mon, 02 Jul 2007 23:16:33 +0200
Date: Mon, 2 Jul 2007 23:16:24 +0200
From: Francesco Poli <frx@firenze.linux.it>
To: debian-legal@lists.debian.org
Subject: Re: Final text of GPL v3
Message-Id: <20070702231624.56957fd5.frx@firenze.linux.it>
In-Reply-To: <20070701224149.GB23436@dario.dodds.net>
References: <20070630004759.47295a6f.frx@firenze.linux.it>
	<20070630010521.61eed939.frx@firenze.linux.it>
	<20070630232056.GK4404@dario.dodds.net>
	<20070701122208.76dd4e13.frx@firenze.linux.it>
	<20070701224149.GB23436@dario.dodds.net>
X-Mailer: Sylpheed version 1.0.4 (GTK+ 1.2.10; i386-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg="PGP-SHA1";
 boundary="Signature=_Mon__2_Jul_2007_23_16_24_+0200_qZ_EQZyDy40hfysn"
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <88kLLD.A.ky.XtWiGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36861
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Mon,  2 Jul 2007 21:17:11 +0000 (UTC)

--Signature=_Mon__2_Jul_2007_23_16_24_+0200_qZ_EQZyDy40hfysn
Content-Type: text/plain; charset=US-ASCII
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, 1 Jul 2007 15:41:49 -0700 Steve Langasek wrote:

> On Sun, Jul 01, 2007 at 12:22:08PM +0200, Francesco Poli wrote:
[...]
> > Clause 2c of GPLv2 is already an inconvenience and border-line with
> > respect to DFSG-freeness.  This is, at least, my humble opinion on
> > the matter.
>=20
> > "Border-line" does not mean that it *fails* the DFSG, but that it's
> > *very close* to fail.
>=20
> "Border-line" implies that it could go either direction.  This is not
> true. Regardless of how you feel about this clause, the GPLv2 is
> recognized as a free license under the DFSG.

OK, maybe I used misleading words (remember that IANAENS, I Am Not An
English Native Speaker).

What I mean is that, IMHO, clause 2c is a flaw of GPLv2.
Not a flaw which is bad enough to make the license fail to meet the
DFSG, but close to do so.

In this sense, it's "border-line": it could be or not be enough to make
the license non-free.  Upon careful analysis, it turns out to be close
to the DFSG-freeness boundary, but fortunately on the free side.

This is my own view on clause 2c.
IANADD, TINASOTODP (This Is Not A Statement Of The Official Debian
Position).


Because of this opinion I hold on GPLv2#2c, I see GPLv3#5d as something
worse.
It's the same requirement extended from interfaces that "read commands
interactively" to every kind of "interactive user interface".  Extending
a flaw is making things worse.

>=20
> > Extending this clause from interfaces that "read commands
> > interactively" to every kind of "interactive user interface" is
> > really making things worse, which is exactly what I commented.
>=20
> It is not a qualitative change.  I see no grounds for saying that it's
> worse than the existing clause.

It *is* worse: not qualitatively worse, but quantitatively worse.
Maybe it's not worse enough to become non-free, but it's worse anyway.

>=20
> > Compare with the obnoxious advertising clause of the 4-clause BSD
> > license: it's an inconvenience close to fail the DFSG, IMO.  But we
> > accept it as DFSG-free.  However, I would *not* be happy to see a
> > license that *extends* this restriction to a wider scenario.
>=20
> The 4-clause BSD is also not "close to failing the DFSG".

IMHO, it is.  IANADD, TINASOTODP.

[...]
> to call something "close to non-free"
> is just an expression of your dislike for it, masquerading as an
> objective judgement.

Well, it seems that even DFSG-freeness judgements are not always so
objective, or otherwise we would not be discussing about them all the
time on this list...

[...]
> > Clause 2c of GPLv2 is close to fail the DFSG, but passes.
> > Clause 5d of GPLv3 is worse (since it's more restrictive, being
> > extended to more cases), and hence it's even closer to fail the
> > DFSG.
>=20
> There is no qualitative difference between the two clauses.  We have
> *never* treated quantitative differences between licenses as relevant
> to freeness. Would you claim that the GPLv2's "make the source
> available for three years" requirement is ok, but a clause saying
> "make the source available for six years" is not?

I think you are talking about clause 3b of GPLv2, aren't you?

Maybe you picked the wrong example, because clause 3b *is* a non-free
restriction.  Fortunately there's another alternative option,
represented by clause 3a, which is DFSG-free, and consequently GPLv2 is
acceptable.

This is my opinion, but also the opinion of other debian-legal regulars.

[...]
> I challenge you to offer a reasonable bright line test by which we
> would say the GPLv2 clause is free and the GPLv3 clause is non-free.=20
> I believe you will fail.

Quite possibly I will fail.
That's why I pointed out clause 5d as a flaw, *without* saying that I
believed it was definitely non-free.
I said that it's "possibly a DFSG-freeness issue" and waited for other
comments (which I am already getting).

>=20
> > Whether it fails or passes is to be decided: I simply said
> > "possibly", you say it's OK.  Let's see what others think...
>=20
> Yes, let's.  Preferably others who are actually Debian developers,
> instead of non-DDs who discourage developer participation on
> debian-legal through the numerical superiority of their posts
> advancing outlandish interpretations of the DFSG that are untempered
> by such trifles as reality.

Woaah!
Feeling appreciated is always gratifying!

[...]
> > Mmmmh, if one cannot redistribute a work (because of patents or
> > whatever), I think it fails DFSG#1...
>=20
> > DFSG#1 says "The license of a Debian component may not restrict
> > DFSG#[...]",
> > so maybe one can argue that the copyright license cannot be blamed
> > for patent restrictions.
> > But DFSG#1 does not talk about "copyright license", merely about
> > "license".
>=20
> It talks about the license *of a Debian component*.  A patent license
> is not a license of a Debian component, it's a license to third-party
> "intellectual property".

Sometimes it's not third-party, but belongs to the same entity which
holds copyright on the work.

Anyway, I think I get what you mean: you see the software patent one as
an "external problem", not to be blamed to the work itself, and hence
not affecting the freeness of the work.  Just like a stupid law that
forbids the distribution of programs that lack a GUI, or something
similarly absurd...

According to this view, let's rephrase my comments on patent-related
clauses and just say "possibly an insufficient protection from patent
lawsuits".
With the understanding that the GPLv2 is even less protecting against
those issues.


Disclaimers:
IANAL, TINLA, IANADD, TINASOTODP, IANAENS.



--=20
 http://frx.netsons.org/doc/nanodocs/testing_workstation_install.html
 Need to read a Debian testing installation walk-through?
..................................................... Francesco Poli .
 GnuPG key fpr =3D=3D C979 F34B 27CE 5CD8 DC12  31B5 78F4 279B DD6D FCF4

--Signature=_Mon__2_Jul_2007_23_16_24_+0200_qZ_EQZyDy40hfysn
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.1 (GNU/Linux)

iD8DBQFGiWsuePQnm91t/PQRAg22AJ9P5rGlhDVlZSoXA6IqLJ8kVJ+JVwCfWsdG
y4CeWWVhndYUNgAahF7FluE=
=40XM
-----END PGP SIGNATURE-----

--Signature=_Mon__2_Jul_2007_23_16_24_+0200_qZ_EQZyDy40hfysn--


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

       


{.Ql:f8K"aiFDr