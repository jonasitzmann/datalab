From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 19:00:46 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RN0iL9001133
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 19:00:45 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RMxq4k003734;
	Thu, 28 Jun 2007 01:00:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from bay0-omc2-s6.bay0.hotmail.com (bay0-omc2-s6.bay0.hotmail.com
	[65.54.246.142])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RMxcT1003629
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 00:59:39 +0200
Received: from BAY126-W44 ([65.55.131.79]) by bay0-omc2-s6.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Wed, 27 Jun 2007 15:59:37 -0700
Message-ID: <BAY126-W44248566BC145CE474E8FFC90A0@phx.gbl>
X-Originating-IP: [83.202.133.86]
From: Bruce Willy <croero@hotmail.com>
To: <r-help@stat.math.ethz.ch>
Date: Wed, 27 Jun 2007 22:59:38 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Jun 2007 22:59:37.0978 (UTC)
	FILETIME=[D652CDA0:01C7B90E]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Gaussian elimination - singular matrix
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
Content-Type: multipart/mixed; boundary="===============1638094311=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1638094311==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1303


I am sorry, there is just a mistake : the solution cannot be unique (becaus=
e it is a vectorial space) (but then I might normalize it)
=20
can R find one anyway ?
=20
This is equivalent to finding an eigenvector in fact> From: croero@hotmail.=
com> To: r-help@stat.math.ethz.ch> Date: Wed, 27 Jun 2007 22:51:41 +0000> S=
ubject: [R] Gaussian elimination - singular matrix> > > Hello,> > I hope it=
 is not a too stupid question.> > I have a singular matrix A (so not invert=
ible).> > I want to find a nontrivial nonnegative solution to AX=3D0 (kerne=
l of A)> > It is a special matrix A (so maybe this nonnegative solution is =
unique)> > The authors of the article suggest a Gaussian elimination method=
> > Do you know if R can do that automatically ? I have seen that "solve" h=
as an option "LAPACK" but it does not seem to work with me :(> > Thank you =
very much> ________________________________________________________________=
_> Le blog Messenger de Michel, candidat de la Nouvelle Star : analyse, new=
s, coulisses=85 A d=E9couvrir !> > [[alternative HTML version deleted]]>=20
_________________________________________________________________
Le blog Messenger de Michel, candidat de la Nouvelle Star : analyse, news, =
coulisses=85 A d=E9couvrir !

	[[alternative HTML version deleted]]


--===============1638094311==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1638094311==--

     

0t esns F