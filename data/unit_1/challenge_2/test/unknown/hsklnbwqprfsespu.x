From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 14:17:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TIHVL9029303
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 14:17:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TIGOPw030623;
	Fri, 29 Jun 2007 20:16:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from outboundd1.ihc.com (outboundd1.ihc.com [199.190.170.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TIBlUu029109
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 20:11:47 +0200
Received: from twemf1.co.ihc.com ([159.212.71.180])
	by outboundd1.ihc.com with esmtp (Exim 4.62)
	(envelope-from <Greg.Snow@intermountainmail.org>)
	id 1I4Kwc-0002ta-ae; Fri, 29 Jun 2007 12:11:46 -0600
Received: from 159.212.71.188 by twemf1.co.ihc.com with ESMTP (Email
	Firewall SMTP Relay (Email Firewall v6.2.1)); Fri, 29 Jun 2007 12:11:23
	-0600
X-Server-Uuid: 0CCC7504-CEE2-47B5-B80E-0BE86FBE3DA5
Received: from lp-exchfe01.co.ihc.com ([10.50.128.45]) by
	gimail2.co.ihc.com with esmtp (Exim 4.62) (envelope-from
	<Greg.Snow@intermountainmail.org>) id 1I4KwR-0002Nl-JV; Fri, 29 Jun
	2007 12:11:35 -0600
Received: from LP-EXCHVS07.CO.IHC.COM ([10.50.128.40]) by
	lp-exchfe01.CO.IHC.COM with Microsoft SMTPSVC(6.0.3790.3959); Fri, 29
	Jun 2007 12:11:34 -0600
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Fri, 29 Jun 2007 12:11:34 -0600
Message-ID: <07E228A5BE53C24CAD490193A7381BBBA5AF97@LP-EXCHVS07.CO.IHC.COM>
In-Reply-To: <4684D8A7.5060108@sestante.net>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] shading bar charts
Thread-Index: Ace6XETRtgrEjBi8ThO0gui0eVnM2wAGxlaA
From: "Greg Snow" <Greg.Snow@intermountainmail.org>
To: "Federico Tomassini" <effe@sestante.net>, r-help@stat.math.ethz.ch
X-OriginalArrivalTime: 29 Jun 2007 18:11:34.0633 (UTC)
	FILETIME=[ED792590:01C7BA78]
X-WSS-ID: 6A9B94C11O4333653-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5TIBlUu029109
Subject: Re: [R] shading bar charts
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

The first question you should ask yourself (and really think about the
answer) is "Why do I want to do this?"

Fancy colors and shadings can detract from a plot rather than enhance
it.  The wrong choice of colors can make bars look bigger or smaller
than they really are.  Reading Tufte's "The visual Display of
Quantitative Information" and Cleveland's "The Elements of Graphing
Data" explain many of these points.

The main graphics functions in R do not do things like this because the
underlying philosophy is that the data should speak for itself and not
need fancy chartjunk.  In fact, some of us on seeing fancy artistic
additions to graphs ask: "what are they trying to hide?".

If, after thinking this through and looking at your data plotted in a
basic chart, you decide that it is still justified to use shading, and
that it enhances the plot rather than detracts from it, then the
following shows one possible approach to doing something like your
example (you will need to modify to match your data):

> library(TeachingDemos)
>
> plot.new()
> plot.window( c(.5, 3.5), c(0,3.2), yaxs='i', xaxs='i')
> subplot( image( cbind( c(1:100,99:1) ), col=heat.colors(100),
axes=FALSE),
+ 	c(0.7,1.3), c(0,1) )
> subplot( image( cbind( c(1:100,99:1) ), col=heat.colors(100),
axes=FALSE),
+ 	c(1.7,2.3), c(0,3) )
> subplot( image( cbind( c(1:100,99:1) ), col=heat.colors(100),
axes=FALSE),
+ 	c(2.7,3.3), c(0,2) )
>
> axis(1, at=1:3, label=c("A","B","C") )
> axis(2, at=pretty(1:3, 2))
> box()

Hope this helps,

-- 
Gregory (Greg) L. Snow Ph.D.
Statistical Data Center
Intermountain Healthcare
greg.snow@intermountainmail.org
(801) 408-8111
 
 

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of 
> Federico Tomassini
> Sent: Friday, June 29, 2007 4:02 AM
> To: r-help@stat.math.ethz.ch
> Subject: [R] shading bar charts
> 
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Hi alls,
> 
> i have to code a family of bar charts. After reading the doc, 
> i cannot understand if it is possible to shade the bar colors and how.
> 
> With shading i don't mean `density`. I mean something like that:
> 
> http://www.advsofteng.com/images/colorcylinder_g.png
> 
> 
> Thanks and br
> 
> - --
> Federico
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.6 (GNU/Linux)
> Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org
> 
> iD8DBQFGhNini7obm7aBjHcRAuvbAJ9y5lM+VoAGdko8hH2NQjrkSfvOlACfVDsT
> msphKZGSrswwnBGEssTv4nM=
> =aEwU
> -----END PGP SIGNATURE-----
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

 iw-0! c