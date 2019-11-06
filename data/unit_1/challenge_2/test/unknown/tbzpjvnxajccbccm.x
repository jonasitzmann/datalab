From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 11:31:10 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LFV9L9025838
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 11:31:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LFT72t006852;
	Thu, 21 Jun 2007 17:29:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_50, CTYPE_001C_A,
	DKIM_POLICY_SIGNSOME, FH_MSGID_01C67 autolearn=no version=3.2.0
Received: from ipex3.johnshopkins.edu (ipex3.johnshopkins.edu
	[128.220.161.140])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LFENRl000613
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 17:14:24 +0200
Received: from dom-59mfy81.monument1.jhmi.edu (HELO DOM59MFY81)
	([10.16.148.124]) by ipex3.johnshopkins.edu with ESMTP/TLS/RC4-MD5;
	21 Jun 2007 11:14:22 -0400
X-BrightmailFiltered: true
X-Brightmail-Tracker: AAAAAA==
X-IronPort-AV: i="4.16,448,1175486400"; 
	d="r'?scan'208"; a="312778001:sNHT46812192"
From: "Ravi Varadhan" <rvaradhan@jhmi.edu>
To: "'Ravi Varadhan'" <rvaradhan@jhmi.edu>, <r-help@stat.math.ethz.ch>
References: <1182361042.467965d24abac@www.usherbrooke.ca>
	<001501c7b381$2d5b4de0$7c94100a@win.ad.jhu.edu>
Date: Thu, 21 Jun 2007 11:14:22 -0400
Message-ID: <000001c7b416$d8d0c7f0$7c94100a@win.ad.jhu.edu>
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0001_01C7B3F5.51C198F0"
X-Mailer: Microsoft Office Outlook 11
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
Thread-index: AcezYnHB0315sag8QbiPv39wbjTnegAHVmTgACV29LA=
In-reply-to: <001501c7b381$2d5b4de0$7c94100a@win.ad.jhu.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Content-Filtered-By: Mailman/MimeDel 2.1.9
Cc: "'Bill Shipley'" <Bill.Shipley@usherbrooke.ca>
Subject: Re: [R] Creatiing an R package for solving nonlinear system
	of	equations was: RE: finding roots of multivariate equation
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
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

This is a multi-part message in MIME format.

------=_NextPart_000_0001_01C7B3F5.51C198F0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I have written a simple function to solve a system of nonlinear =
equations. I
have called it nlsolve().  It actually minimizes the squared-norm of the =
set
of functions by calling optim().  It uses the BFGS algorithm within =
optim().
Apart from this restriction, the user can pass all the arguments =
available
in optim().  All the control parameters can be passed as in the call to
optim().  I have attached a text file containing the source for =
nlsolve()
and also a number of test problems illustrating the use of nlsolve().  =
Any
feedback and suggestions to improve it are welcome.

Hope this is useful.

Best,
Ravi.

-------------------------------------------------------------------------=
---
-------

Ravi Varadhan, Ph.D.

Assistant Professor, The Center on Aging and Health

Division of Geriatric Medicine and Gerontology=20

Johns Hopkins University

Ph: (410) 502-2619

Fax: (410) 614-9625

Email: rvaradhan@jhmi.edu

Webpage:  =
http://www.jhsph.edu/agingandhealth/People/Faculty/Varadhan.html



-------------------------------------------------------------------------=
---
--------

-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Ravi Varadhan
Sent: Wednesday, June 20, 2007 5:23 PM
To: r-help@stat.math.ethz.ch
Subject: [R] Creatiing an R package for solving nonlinear system of
equations was: RE: finding roots of multivariate equation

Hi All,

Replying to this and numerous other requests in the past has made me =
realize
that a nonlinear solver is very much needed for R users.  I have
successfully used a nonlinear solver based on the spectral gradient =
method,
in FORTRAN.  I can readily translate that to R and make it available as =
an R
function, but what I would really like to do is to make that into a =
package.
I can provide the R function and several test examples.  But I am not =
good
at creating a good/reliable package.  So, it would be ideal if one of =
the R
gurus is interested in collaborating with me on this project.  Any one
interested?

Ravi.
-------------------------------------------------------------------------=
---
-------

Ravi Varadhan, Ph.D.

Assistant Professor, The Center on Aging and Health

Division of Geriatric Medicine and Gerontology=20

Johns Hopkins University

Ph: (410) 502-2619

Fax: (410) 614-9625

Email: rvaradhan@jhmi.edu

Webpage:  =
http://www.jhsph.edu/agingandhealth/People/Faculty/Varadhan.html



-------------------------------------------------------------------------=
---
--------

-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Bill Shipley
Sent: Wednesday, June 20, 2007 1:37 PM
To: r-help@stat.math.ethz.ch
Subject: [R] finding roots of multivariate equation

Hello,
I want to find the roots of an equation in two variables.  I am aware of =
the
uniroot function, which can do this for a function with a single =
variable
(as I
understand it...) but cannot find a function that does this for an =
equation
with more than one variable.  I am looking for something implementing
similar
to a Newton-Raphson algorithm.
Thanks.

--=20
Bill Shipley
North American Editor for Annals of Botany
Subject Editor for Ecology
D=E9partement de biologie
Universit=E9 de Sherbrooke
Sherbrooke (Qu=E9bec) J1K 2R9
Canada

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide =
http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide =
http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

------=_NextPart_000_0001_01C7B3F5.51C198F0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

------=_NextPart_000_0001_01C7B3F5.51C198F0--

                

Xtslt