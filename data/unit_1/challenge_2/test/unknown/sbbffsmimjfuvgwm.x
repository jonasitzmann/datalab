From perl6-all-return-82151-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 17:15:30 2007
Return-Path: <perl6-all-return-82151-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KLFTL9014986
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 17:15:29 -0400
Received: (qmail 19566 invoked by uid 514); 20 Jun 2007 21:15:26 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 19561 invoked from network); 20 Jun 2007 21:15:26 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-compiler-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-compiler
List-Id: <perl6-compiler.perl.org>
Delivered-To: mailing list perl6-compiler@perl.org
Delivered-To: perl6-compiler@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Message-ID: <467998C7.7080509@casella.verplant.org>
Date: Wed, 20 Jun 2007 22:14:47 +0100
From: Moritz Lenz <moritz@casella.verplant.org>
User-Agent: Icedove 1.5.0.12 (X11/20070607)
MIME-Version: 1.0
To: perl6-compiler@perl.org
References: <20070620210416.GA7601@host.pmichaud.com>
In-Reply-To: <20070620210416.GA7601@host.pmichaud.com>
X-Enigmail-Version: 0.94.3.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigBBFE8A4373EC38AB9E0A8375"
X-SA-Exim-Connect-IP: 80.193.211.68
X-SA-Exim-Mail-From: moritz@casella.verplant.org
X-Spam-Checker-Version: SpamAssassin 3.1.7-deb (2006-10-05) on 
	casella.verplant.org
X-Spam-Level: 
Subject: Re: question about t/operators/ternary.t
X-SA-Exim-Version: 4.2.1 (built Tue, 09 Jan 2007 17:23:22 +0000)
X-SA-Exim-Scanned: Yes (on casella.faui2k3.de)
X-Old-Spam-Status: No, score=-3.5 required=5.0 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7-deb
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=1.4 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,RCVD_IN_CBL,SPF_PASS

--------------enigBBFE8A4373EC38AB9E0A8375
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Patrick R. Michaud wrote:
> Looking at t/operators/ternary.t...
>=20
> At the bottom of the file, there is a test that reads:
>=20
> {
>     # This parses incorrectly because it's parsed as Bool::True(!! Bool=
::False).
>     my $foo =3D eval q[ 1 ?? Bool::True !! Bool::False ];
>     is($foo, Bool::True, "a statement with both ??!! and :: in it did c=
ompile"), :todo<bug>;
> }
>=20
>=20
> I'm not entirely certain what this test is intending to test.

To me it tests for a pugs specific parse bug.

> Do we need it? =20

I'm sure nobody invented it just for fun, so we probably need it.

> Does it perhaps belong somewhere else?

I don't know.
Somehow it's good to have parse tests in the test file of the
corresponding feature, but I'm not sure if there is a better solution
here...

--=20
Moritz Lenz
http://moritz.faui2k3.org/ |  http://perl-6.de/


--------------enigBBFE8A4373EC38AB9E0A8375
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGeZjJAAkekJBI0yIRAgRLAJ0ayTUlJuFnkMDdObAonjwpzzJKrgCgmIhH
tgg2CNLXXuaxU+w8Zeh04z8=
=mo+2
-----END PGP SIGNATURE-----

--------------enigBBFE8A4373EC38AB9E0A8375--

    

 dt"t0i 1n<LwIn