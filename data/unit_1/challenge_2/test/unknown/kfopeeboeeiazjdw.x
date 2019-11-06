From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jul  1 06:23:18 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61ANHL9031903
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 06:23:18 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 2FBB82DDDE; Sun,  1 Jul 2007 10:23:29 +0000 (UTC)
Old-Return-Path: <frx@firenze.linux.it>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.3 required=4.0 tests=AWL,BAYES_00,LDOSUBSCRIBER 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from smtpi1.ngi.it (smtpi1.ngi.it [88.149.128.20])
	by murphy.debian.org (Postfix) with ESMTP id A09872DEBC
	for <debian-legal@lists.debian.org>; Sun,  1 Jul 2007 10:23:22 +0000 (UTC)
Received: from neverland (88-149-179-128.static.ngi.it [88.149.179.128])
	by smtpi1.ngi.it (8.13.8/8.13.8) with ESMTP id l61AN1S1021506
	for <debian-legal@lists.debian.org>; Sun, 1 Jul 2007 12:23:01 +0200
Received: from frx by neverland with local (Exim 4.50)
	id 1I4wa4-0002j3-Lo
	for debian-legal@lists.debian.org; Sun, 01 Jul 2007 12:23:00 +0200
Date: Sun, 1 Jul 2007 12:22:08 +0200
From: Francesco Poli <frx@firenze.linux.it>
To: debian-legal@lists.debian.org
Subject: Re: Final text of GPL v3
Message-Id: <20070701122208.76dd4e13.frx@firenze.linux.it>
In-Reply-To: <20070630232056.GK4404@dario.dodds.net>
References: <20070630004759.47295a6f.frx@firenze.linux.it>
	<20070630010521.61eed939.frx@firenze.linux.it>
	<20070630232056.GK4404@dario.dodds.net>
X-Mailer: Sylpheed version 1.0.4 (GTK+ 1.2.10; i386-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg="PGP-SHA1";
 boundary="Signature=_Sun__1_Jul_2007_12_22_08_+0200_AoR4FcblyPHvV3QK"
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <ek3-3D.A.O2F.hC4hGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36801
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sun,  1 Jul 2007 10:23:29 +0000 (UTC)

--Signature=_Sun__1_Jul_2007_12_22_08_+0200_AoR4FcblyPHvV3QK
Content-Type: text/plain; charset=US-ASCII
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, 30 Jun 2007 16:20:56 -0700 Steve Langasek wrote:

> On Sat, Jun 30, 2007 at 01:05:21AM +0200, Francesco Poli wrote:
[...]
> > [...]
> > >   5. Conveying Modified Source Versions.
> > [...]
> > >     d) If the work has interactive user interfaces, each must
> > >     display Appropriate Legal Notices; however, if the Program has
> > >     interactive interfaces that do not display Appropriate Legal
> > >     Notices, your work need not make them do so.
>=20
> > Clause 5d is definitely worse than the corresponding clause 2c in
> > GPLv2.
>=20
> No, it's different from GPLv2 2c only in that it's extended to
> "interactive user interfaces" instead of just programs that "read
> commands interactively when run".

Clause 2c of GPLv2 is already an inconvenience and border-line with
respect to DFSG-freeness.  This is, at least, my humble opinion on the
matter.
"Border-line" does not mean that it *fails* the DFSG, but that it's
*very close* to fail.

Extending this clause from interfaces that "read commands
interactively" to every kind of "interactive user interface" is really
making things worse, which is exactly what I commented.

Compare with the obnoxious advertising clause of the 4-clause BSD
license: it's an inconvenience close to fail the DFSG, IMO.  But we
accept it as DFSG-free.  However, I would *not* be happy to see a
license that *extends* this restriction to a wider scenario.
=20
[...]
> > This clause is very close to fail DFSG#3.
> > Hence, this is possibly a Freeness issue.
>=20
> It's absurd to say that this requirement is permissible in the GPLv2
> but not in the GPLv3.

I didn't say that.
It's not exaclty the same requirement and I didn't say that it's
necessarily non-free.=20

Clause 2c of GPLv2 is close to fail the DFSG, but passes.
Clause 5d of GPLv3 is worse (since it's more restrictive, being extended
to more cases), and hence it's even closer to fail the DFSG.
Whether it fails or passes is to be decided: I simply said "possibly",
you say it's OK.  Let's see what others think...

>=20
> > This clause could be not enough to protect recipients from patent
> > lawsuits, and thus make the work fail several DFSG, when there are
> > actively enforced patents infringed by the work.
>=20
> Um, no.  The DFSG does not require indemnification against third-party
> claims; an actively-enforced patent may require us to *not distribute
> the work at all*, but that's not a question of DFSG-freeness of the
> work.

Mmmmh, if one cannot redistribute a work (because of patents or
whatever), I think it fails DFSG#1...

DFSG#1 says "The license of a Debian component may not restrict [...]",
so maybe one can argue that the copyright license cannot be blamed
for patent restrictions.
But DFSG#1 does not talk about "copyright license", merely about
"license".
If there are actively enforced patents, I not only need a copyright
license in order to redistribute, but also a patent license.  If the
patent license forbids me to redistribute, I think the work fails
DFSG#1; if no patent license is available to me, I am not allowed to
redistribute, and consequently the work again fails DFSG#1.

Or, at least, this is how I used to understand it...


--=20
 http://frx.netsons.org/doc/nanodocs/testing_workstation_install.html
 Need to read a Debian testing installation walk-through?
..................................................... Francesco Poli .
 GnuPG key fpr =3D=3D C979 F34B 27CE 5CD8 DC12  31B5 78F4 279B DD6D FCF4

--Signature=_Sun__1_Jul_2007_12_22_08_+0200_AoR4FcblyPHvV3QK
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.1 (GNU/Linux)

iD8DBQFGh4BVePQnm91t/PQRAnArAJ9z9gMKeDxdiKgI7v+wsMLEq1HdGQCgn79Y
EgFL6gWMDkR3byRMNr+m08Y=
=Ed0C
-----END PGP SIGNATURE-----

--Signature=_Sun__1_Jul_2007_12_22_08_+0200_AoR4FcblyPHvV3QK--


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

                   

i<0 o A
 M2uf