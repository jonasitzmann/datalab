From perl6-all-return-81958-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 06:52:35 2007
Return-Path: <perl6-all-return-81958-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EAqYL9020386
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 06:52:34 -0400
Received: (qmail 18702 invoked by uid 514); 14 Jun 2007 10:52:32 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 18697 invoked from network); 14 Jun 2007 10:52:32 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Message-ID: <46711DC1.5020809@casella.verplant.org>
Date: Thu, 14 Jun 2007 11:51:45 +0100
From: Moritz Lenz <moritz@casella.verplant.org>
User-Agent: Icedove 1.5.0.10 (X11/20070329)
MIME-Version: 1.0
To: perl6-language@perl.org
References: <20070613205525.7ECA0CB9B8@x12.develooper.com> <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com> <467073C4.6020708@conway.org> <20070614082341.GU31918@earth.overmeer.net>
In-Reply-To: <20070614082341.GU31918@earth.overmeer.net>
X-Enigmail-Version: 0.94.3.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig357BF7567AC8817857D616F8"
X-SA-Exim-Connect-IP: 80.193.211.68
X-SA-Exim-Mail-From: moritz@casella.verplant.org
X-Spam-Checker-Version: SpamAssassin 3.1.7-deb (2006-10-05) on 
	casella.verplant.org
X-Spam-Level: 
Subject: POD <-> Code entanglement (was: Re: [svn:perl6-synopsis] r14421 -
 doc/trunk/design/syn)
X-SA-Exim-Version: 4.2.1 (built Tue, 09 Jan 2007 17:23:22 +0000)
X-SA-Exim-Scanned: Yes (on casella.faui2k3.de)
X-Old-Spam-Status: No, score=-3.5 required=5.0 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7-deb
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=1.4 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,RCVD_IN_CBL,SPF_PASS

--------------enig357BF7567AC8817857D616F8
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable


Mark Overmeer wrote:
> We had a private discussion about this already three years ago: I
> fully disagree!  If the code and the documentation are not entangled,
> why do you want to put them in the same file?  Why do you put them in
> the same distribution even?
>=20
> No, the documentation is all about the code. The docs present everythin=
g
> what the user should know about the code.  The docs are the user's view=

> of the implementation, and the code is the computer's view on the same.=


I agree.
And while writing a class in Perl 6 the other day I noticed that copied
& pasted the signature of method to the pod:

=3Dbegin pod

=3Dhead3 C<method from_string(Str $s);>

initialize the Sudoku from a string C<$s>, with a 0 denoting an empty cel=
l
and a number between 1 and 9 a clue.

Note that there is currently no way to use this function for sizes bigger=

than 9x9 overall length.

=3Dend pod

method from_string(Str $s){
	# implementation of that method here
}

Since method signatures are very expressive in Perl 6, there should be a
way of accessing them in the POD without copy & paste. If you don't
think that's necessary: try it out for yourself. Write a class and
document it properly. I'm sure you'll end up doing the same as I did.

ATM I don't know that should be implemented, but perhaps somebody else
can think of a good way.

--=20
Moritz Lenz
http://moritz.faui2k3.org/ |  http://perl-6.de/


--------------enig357BF7567AC8817857D616F8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGcR3FAAkekJBI0yIRAlnrAKDNDGRGlugM+c8+AF0DBTuHv/KIrgCgj91H
Igx5bscHA+dqR1aHqReDAgo=
=NipG
-----END PGP SIGNATURE-----

--------------enig357BF7567AC8817857D616F8--

          

FKdwe1c>