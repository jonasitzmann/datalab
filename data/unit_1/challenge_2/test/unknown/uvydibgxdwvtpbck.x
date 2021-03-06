From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun 29 13:51:04 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5THp4L9029043
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 29 Jun 2007 13:51:04 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id A92AD2E232; Fri, 29 Jun 2007 17:51:08 +0000 (UTC)
Old-Return-Path: <frx@firenze.linux.it>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=4.0 tests=AWL,BAYES_20,LDOSUBSCRIBER,
	MURPHY_DRUGS_REL8 autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from smtpi2.ngi.it (smtpi2.ngi.it [88.149.128.21])
	by murphy.debian.org (Postfix) with ESMTP id B3C3D2E18E
	for <debian-legal@lists.debian.org>; Fri, 29 Jun 2007 17:51:00 +0000 (UTC)
Received: from neverland (88-149-179-128.static.ngi.it [88.149.179.128])
	by smtpi2.ngi.it (8.13.8/8.13.8) with ESMTP id l5THoo0V027507;
	Fri, 29 Jun 2007 19:50:50 +0200
Received: from frx by neverland with local (Exim 4.50)
	id 1I4KcL-0000ye-F1; Fri, 29 Jun 2007 19:50:49 +0200
Date: Fri, 29 Jun 2007 19:50:35 +0200
From: Francesco Poli <frx@firenze.linux.it>
To: debian-legal@lists.debian.org
Cc: pubmb01@skynet.be
Subject: Re: Copyright verification needed
Message-Id: <20070629195035.7af83152.frx@firenze.linux.it>
In-Reply-To: <1183070073.5315.14.camel@tomoyo>
References: <200706232226.09686.pubmb01@skynet.be>
	<1007a32a0706231630s1f0f2ebx36d86fba1bf742cf@mail.gmail.com>
	<1182809218.5408.13.camel@tomoyo>
	<20070626004816.74f39f9c.frx@firenze.linux.it>
	<1183070073.5315.14.camel@tomoyo>
X-Mailer: Sylpheed version 1.0.4 (GTK+ 1.2.10; i386-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg="PGP-SHA1";
 boundary="Signature=_Fri__29_Jun_2007_19_50_35_+0200_A.GtFdVIXYdfj+p/"
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <q_j46B.A.1BF.MaUhGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36763
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Fri, 29 Jun 2007 17:51:08 +0000 (UTC)

--Signature=_Fri__29_Jun_2007_19_50_35_+0200_A.GtFdVIXYdfj+p/
Content-Type: text/plain; charset=ISO-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, 29 Jun 2007 00:34:33 +0200 Josselin Mouette wrote:

> Le mardi 26 juin 2007 =E0 00:48 +0200, Francesco Poli a =E9crit :
> > On Tue, 26 Jun 2007 00:06:58 +0200 Josselin Mouette wrote:
> > > This is a bit more complicated. The QPL is DFSG-free, but only if
> > > you don't apply section #6
> >=20
> > This is equivalent to saying that software solely released under the
> > QPL does *not* comply with the DFSG.
>=20
> No. Section #6 only applies to components "that link with the original
> or modified versions of the Software". It doesn't apply to derived
> works.

I am afraid I am not following you.

Section 6c of the QPL v1.0 restricts your ability to privately
distribute components "that link with the original or modified versions
of the Software".

You cannot opt out from this restriction, unless you refrain from
developing such components.
The DFSG require that you are able to develop such components, and the
restriction is non-free.

I cannot see how you can say that "the QPL is DFSG-free [...] if you
don't apply section #6".
How can you escape from the restrictions set forth in section #6?

>=20
> > When discussing whether a license meets the DFSG, "patched" versions
> > of the license cannot help the "unpatched" original license to meet
> > the DFSG...
>=20
> I'm not talking about a hypothetical "patched" license, and you should
> consider reading what people write before replying on a mailing list.

I did read what you wrote, but I apparently misunderstood it.
Sorry about that: in the above, I'm asking you to clarify what you
meant...

>=20
> > And anyway, you there's not only clause 6c: another issue that makes
> > the QPL fail to meet the DFSG is the choice of venue.
>=20
> There is no choice of venue, only choice of law.

AFAICS, we are talking about the QPL v1.0 as adopted by Trolltech AS for
the Qt library.  Is that right?

If this is the case, the license states[1]:

| This license is governed by the Laws of Norway. Disputes shall be
| settled by Oslo City Court.

This is a choice of law *and* a choice of venue.

[1] http://packages.debian.org/changelogs/pool/main/q/qt-x11-free/current/c=
opyright



P.S.: I think we should drop Bruno from the Cc: list, as he stated he's
not interested in the ITP anymore.  Bruno, if you are still interested
in this discussion, please speak up and ask to be Cc:ed in the next
messages...


--=20
 http://frx.netsons.org/doc/nanodocs/testing_workstation_install.html
 Need to read a Debian testing installation walk-through?
..................................................... Francesco Poli .
 GnuPG key fpr =3D=3D C979 F34B 27CE 5CD8 DC12  31B5 78F4 279B DD6D FCF4

--Signature=_Fri__29_Jun_2007_19_50_35_+0200_A.GtFdVIXYdfj+p/
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.1 (GNU/Linux)

iD8DBQFGhUZ1ePQnm91t/PQRAnzoAJ9ztY93u/hxJrX+/5naNgJR2h1RZwCeIVf7
FTNvR7MSoJ9h9E6/M+vX9IY=
=gF9G
-----END PGP SIGNATURE-----

--Signature=_Fri__29_Jun_2007_19_50_35_+0200_A.GtFdVIXYdfj+p/--


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

              

hoaeDeer.:.-