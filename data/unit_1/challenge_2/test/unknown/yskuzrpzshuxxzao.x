From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 14:12:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KICuL9013366
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 14:12:57 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KIBVUw013115;
	Wed, 20 Jun 2007 20:11:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from outboundd1.ihc.com (outboundd1.ihc.com [199.190.170.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KIBNBJ013069
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 20:11:23 +0200
Received: from twemf1.co.ihc.com ([159.212.71.180])
	by outboundd1.ihc.com with esmtp (Exim 4.62)
	(envelope-from <Greg.Snow@intermountainmail.org>)
	id 1I14eI-0005E4-Zq; Wed, 20 Jun 2007 12:11:22 -0600
Received: from 159.212.71.187 by twemf2.co.ihc.com with ESMTP (Email
	Firewall SMTP Relay (Email Firewall v6.2.1)); Wed, 20 Jun 2007 12:10:16
	-0600
X-Server-Uuid: 270B69FC-3081-48E4-B4A5-4D62F58D555B
Received: from lp-exchfe01.co.ihc.com ([10.50.128.45]) by
	gimail1.co.ihc.com with esmtp (Exim 4.62) (envelope-from
	<Greg.Snow@intermountainmail.org>) id 1I14e8-0001FY-J7; Wed, 20 Jun
	2007 12:11:14 -0600
Received: from LP-EXCHVS07.CO.IHC.COM ([10.50.128.40]) by
	lp-exchfe01.CO.IHC.COM with Microsoft SMTPSVC(6.0.3790.3959); Wed, 20
	Jun 2007 12:11:12 -0600
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Wed, 20 Jun 2007 12:08:11 -0600
Message-ID: <07E228A5BE53C24CAD490193A7381BBB12A150@LP-EXCHVS07.CO.IHC.COM>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] axis labels in multiple plots
Thread-Index: AceyshESzpi+saURS3qyAfz0tTnoGAAs+Vyf
References: <4677E8C9.27334.1665A67@hvillalo.ipn.mx>
From: "Greg Snow" <Greg.Snow@intermountainmail.org>
To: "=?iso-8859-1?Q?H=E9ctor_Villalobos?=" <hvillalo@ipn.mx>,
   r-help@stat.math.ethz.ch
X-OriginalArrivalTime: 20 Jun 2007 18:11:12.0029 (UTC)
	FILETIME=[62484CD0:01C7B366]
X-WSS-ID: 6A67B2021NK3994700-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] axis labels in multiple plots
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
Content-Type: multipart/mixed; boundary="===============0706462639=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0706462639==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 2766

There are 2 approaches that should work for you (actually there are probabl=
y more, but these 2 are what I would suggest).
=20
The first is to wrap barplot in your own function that also adjusts the par=
ameters and adds the axis.  The other is to use the output from subplot to =
go back and annotate the plots with the additional axis.
=20
Here is a quick example that shows both versions that you don't want (the t=
op to barplots) and the 2 approaches I mention (the bottom 2).
=20
library(TeachingDemos)

plot(0:10, 0:10, type=3D'n')

subplot( barplot(1:3, names=3Dletters[1:3]), 2,8 )

op <- par(mgp=3Dc(3,0,0))

subplot( barplot(1:3, names=3Dletters[1:3]), 8,8 )

par(op)

=20

tmp.bar <- function(...){

op <- par(mgp=3Dc(3,0,0))

barplot(..., yaxt=3D'n')

par(op)

axis(2)

}

subplot( tmp.bar(1:3, names=3Dletters[1:3]), 8,2 )

op <- par(no.readonly=3DTRUE)

tmp <- subplot( barplot(1:3, names=3Dletters[1:3], yaxt=3D'n'),=20

2, 2, pars=3Dlist(mgp=3Dc(3,0,0)))

tmp$mgp =3D c(3,1,0)

par(tmp)

axis(2)

par(op)

=20

Hope this helps (and that the pasted code is readable),


________________________________

From: r-help-bounces@stat.math.ethz.ch on behalf of H=E9ctor Villalobos
Sent: Tue 6/19/2007 2:31 PM
To: r-help@stat.math.ethz.ch
Subject: [R] axis labels in multiple plots



Hi,

I'am trying to make a multiple bar plot over a map and I'm having difficult=
ies with the distance
between axes labels and the axis.  Trying to control this with mgp does not=
 help because it
controls both axes simultaneously.  For example, with default values (mgp =
=3D c(3, 1, 0)) y-axis
labels are ok, but x-axis labels are not. Setting mgp =3D c(3, 0, 0) gives =
good x-axis labels but
the y-axis labels are over the axis.  Since I'm using subplot() from Techin=
gDemos package I
don't know how to pass the mgp argument for every axis (like : axis(2, mgp =
=3D c(3, 1, 0)).

I'm using R version 2.5.0 with Windows XP


##
sim.data <- array(runif(420), dim =3D c(4, 5, 7, 3),
   dimnames =3D list(paste("var", 1:4, sep =3D ""), paste("year", 1:5, sep =
=3D ""),
   paste("lat", 1:7, sep =3D ""), paste("lon", 1:3, sep =3D "")) )
x.pos <- c(3, 6, 9)
y.pos <- c(1,2,3,4,5,6,7)


##  This will be the map, its empty in this example
      plot(x =3D 1:10, y =3D 1:10, type =3D "n", xlim =3D c(1, 10), ylim =
=3D c(1,8) )

##  And now the bar plots
      for (l in 7:1) {
         for (m in 1:3) {

      subplot(barplot(sim.data[, , l, m], las =3D 1, names.arg =3D paste("y=
ear", 1:5),
          mgp =3D c(3, 0, 0), cex.axis =3D 0.7, cex.names =3D 0.7,),
          x =3D x.pos[m], y =3D y.pos[l], size =3D c(1.3,0.5), vadj =3D 0 )
        }
      }


Any hints ?

H=E9ctor



        [[alternative HTML version deleted]]




	[[alternative HTML version deleted]]


--===============0706462639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0706462639==--

  


 tceD co tr#