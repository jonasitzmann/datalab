From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 11:35:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59FZrL9011095
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 11:35:54 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59FYEhm029739;
	Sat, 9 Jun 2007 17:34:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.171])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59FY8hj029714
	for <r-help@stat.math.ethz.ch>; Sat, 9 Jun 2007 17:34:08 +0200
Received: by ug-out-1314.google.com with SMTP id 36so1087774uga
	for <r-help@stat.math.ethz.ch>; Sat, 09 Jun 2007 08:34:08 -0700 (PDT)
Received: by 10.67.88.17 with SMTP id q17mr2815138ugl.1181403248509;
	Sat, 09 Jun 2007 08:34:08 -0700 (PDT)
Received: from servant.local ( [83.76.68.174])
	by mx.google.com with ESMTP id c22sm7956431ika.2007.06.09.08.34.07
	(version=SSLv3 cipher=OTHER); Sat, 09 Jun 2007 08:34:07 -0700 (PDT)
From: AJ Rossini <blindglobe@gmail.com>
Organization: BlindGlobe Networks
To: Giovanni Parrinello <parrinel@med.unibs.it>
Date: Sat, 9 Jun 2007 17:32:59 +0200
User-Agent: KMail/1.9.7
References: <4669617F.8090405@med.unibs.it>
In-Reply-To: <4669617F.8090405@med.unibs.it>
MIME-Version: 1.0
Message-Id: <200706091733.05407.blindglobe@gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] "R is not a validated software package.."
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Main R Mailing List: Primary help" <r-help.stat.math.ethz.ch>
List-Unsubscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=unsubscribe>
List-Archive: <https://stat.ethz.ch/pipermail/r-help>
List-Post: <mailto:r-help@stat.math.ethz.ch>
List-Help: <mailto:r-help-request@stat.math.ethz.ch?subject=help>
List-Subscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1497268355=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1497268355==
Content-Type: multipart/signed; boundary="nextPart3414175.xuSinMqOkS";
	protocol="application/pgp-signature"; micalg=pgp-sha1
Content-Transfer-Encoding: 7bit

--nextPart3414175.xuSinMqOkS
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Friday 08 June 2007, Giovanni Parrinello wrote:
> Dear All,
> discussing with a statistician of a pharmaceutical company I received
> this answer about the statistical package that I have planned to use:
>
> As R is not a validated software package, we would like to ask if it
> would rather be possible for you to use SAS, SPSS or another approved
> statistical software system.
>
> Could someone suggest me a 'polite' answer?
> TIA
> Giovanni

You can't validate any complex software package, i.e. computer programming=
=20
language complexity (SAS, R, S-PLUS, SPSS, PERL, Python, Ruby, Java....)

You can qualify a software package, and validate code written in it.

As a "statistician" in a very large pharmaceutical company based in Basel=20
which happens to be bigger than the other large pharma in Basel, I can say=
=20
that we should have most of the paperwork done for qualification, at some=20
point this year, for use as part of submission packages.  Whether it will b=
e=20
used is another matter, which will be driven by business needs :-).

So your colleague is right, only in the sense that whatever the company has=
=20
approved is appropriate, and qualification in the "computer systems=20
validation" context is expensive, time and man-power wise.  But that holds=
=20
true for any software package.

Your colleague should have technically said:  "As R is not a qualified=20
software package at my company, we would like to ask if it would be possibl=
e=20
for you to use software which my company has approved and done=20
the /risk-management/ paperwork for and gotten approval from our Clinical=20
Quality group to use".=20

This is an issue -- however, whether R could pass that is not an issue, it=
=20
clearly could be done if they wanted to do it.
=20
best,
=2Dtony

blindglobe@gmail.com
Muttenz, Switzerland.
"Commit early,commit often, and commit in a repository from which we can=20
easily
roll-back your mistakes" (AJR, 4Jan05).

--nextPart3414175.xuSinMqOkS
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQBGasgxeKAfgkUpPRARAnL2AJ4yhZ7k+2o8Jn8nEkap5AnOYquTDACbBxuK
eMIbH+qNHqMskSlq4sOCxgo=
=rzqk
-----END PGP SIGNATURE-----

--nextPart3414175.xuSinMqOkS--


--===============1497268355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1497268355==--

            

Wwhk