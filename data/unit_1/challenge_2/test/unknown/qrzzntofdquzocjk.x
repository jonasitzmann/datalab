From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 10:14:15 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5REEDL9027705
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 10:14:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5REDbK4020427;
	Wed, 27 Jun 2007 16:13:49 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from bay0-omc1-s14.bay0.hotmail.com (bay0-omc1-s14.bay0.hotmail.com
	[65.54.246.86])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5REDL4c020367
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 16:13:22 +0200
Received: from BAY126-W34 ([65.55.131.69]) by bay0-omc1-s14.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Wed, 27 Jun 2007 07:13:21 -0700
Message-ID: <BAY126-W34886DCE8D0486119A8457C90A0@phx.gbl>
X-Originating-IP: [83.145.66.202]
From: Bruce Willy <croero@hotmail.com>
To: "Thompson, Trevor (CDC/CCHP/NCCDPHP)" <tkt2@cdc.gov>
Date: Wed, 27 Jun 2007 14:13:21 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Jun 2007 14:13:21.0123 (UTC)
	FILETIME=[510D1B30:01C7B8C5]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Import from excel
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
Content-Type: multipart/mixed; boundary="===============0467544525=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0467544525==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 3076


Thank you, it works now
=20
I'm sorry, I have worked all year with R but with simulated data (except on=
e time actually)> Subject: RE: [R] Import from excel> Date: Wed, 27 Jun 200=
7 10:01:51 -0400> From: tkt2@cdc.gov> To: croero@hotmail.com> > cours is a =
dataframe not a matrix. Try:> > cours[2,]*cours[5,]> > -----Original Messag=
e-----> From: r-help-bounces@stat.math.ethz.ch [mailto:r-help-bounces@stat.=
math.ethz.ch] On Behalf Of Bruce Willy> Sent: Wednesday, June 27, 2007 9:44=
 AM> To: Chuck Cleland> Cc: r-help@stat.math.ethz.ch> Subject: Re: [R] Impo=
rt from excel> > > Thank you, but it still doesn't work completely> > Thank=
s to you and the "dec=3D","" option, I can now do cours[5,5]*5 and get the =
exact value> > But I still cannot do matrix operations like cours[2,]%*%cou=
rs[5,]> > It says the arguments are neither matrix nor vectors.> > :(> Date=
: Wed, 27 Jun 2007 09:30:32 -0400> From: ccleland@optonline.net> Subject: R=
e: [R] Import from excel> To: croero@hotmail.com> CC: r-help@stat.math.ethz=
.ch> > Bruce Willy wrote:> > Hello,> > > > I have imported data from Excel =
using the command > > cours=3Dread.delim("w:/apprentissage/cours_2.txt")> >=
 after transforming my initial file with tab delimiters> > > > It seemed to=
 work> > > > It is 2-dimensionnal. When I type cours[5,5],> > I get this ty=
pe of message : "[1] 0,9760942761824 Levels: 0,495628477 0,893728761 0,8964=
0592 0,903398558 ... 3,864414217"> > And when I want to multiply it, for ex=
ample by 2 (cours[5,5]*2), I get : "Warning message:* ceci n'est pas pertin=
ent pour des variables facteurs in: Ops.factor(cours[5, 5], 2)"> > i.e. app=
roximately "this is not relevant for factor variables.> > > > What can I do=
 if I want to manipulate my variables ?> > > > Thank you very much > > You =
might try the following:> > cours <- read.delim("w:/apprentissage/cours_2.t=
xt", dec=3D",")> > See the "dec" argument on the help page for read.delim()=
.> > > _________________________________________________________________> >=
 > > stall=E9es directement dans votre Messenger !> > > > [[alternative HTM=
L version deleted]]> > > > > > > > ----------------------------------------=
--------------------------------> > > > ___________________________________=
___________> > R-help@stat.math.ethz.ch mailing list> > https://stat.ethz.c=
h/mailman/listinfo/r-help> > PLEASE do read the posting guide http://www.R-=
project.org/posting-guide.html> > and provide commented, minimal, self-cont=
ained, reproducible code.> > -- > Chuck Cleland, Ph.D.> NDRI, Inc.> 71 West=
 23rd Street, 8th floor> New York, NY 10010> tel: (212) 845-4495 (Tu, Th)> =
tel: (732) 512-0171 (M, W, F)> fax: (917) 438-0894 ________________________=
_________________________________________> > stall=E9es directement dans vo=
tre Messenger !> > [[alternative HTML version deleted]]> > >=20
_________________________________________________________________
Le blog Messenger de Michel, candidat de la Nouvelle Star : analyse, news, =
coulisses=85 A d=E9couvrir !

	[[alternative HTML version deleted]]


--===============0467544525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0467544525==--

                  

ftDeO_@Aqt6,