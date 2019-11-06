From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 12:32:13 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JGWBL9031558
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 12:32:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JGUhCE031746;
	Tue, 19 Jun 2007 18:30:55 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from outboundd1.ihc.com (outboundd1.ihc.com [199.190.170.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JGN1ke029504
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 18:23:01 +0200
Received: from twemf1.co.ihc.com ([159.212.71.180])
	by outboundd1.ihc.com with esmtp (Exim 4.62)
	(envelope-from <Greg.Snow@intermountainmail.org>)
	id 1I0gTs-0006bk-aC; Tue, 19 Jun 2007 10:23:00 -0600
Received: from 159.212.71.188 by twemf1.co.ihc.com with ESMTP (Email
	Firewall SMTP Relay (Email Firewall v6.2.1)); Tue, 19 Jun 2007 10:22:26
	-0600
X-Server-Uuid: 0CCC7504-CEE2-47B5-B80E-0BE86FBE3DA5
Received: from lp-exchfe02.co.ihc.com ([10.50.128.46]) by
	gimail2.co.ihc.com with esmtp (Exim 4.62) (envelope-from
	<Greg.Snow@intermountainmail.org>) id 1I0gTp-0006LQ-Jq; Tue, 19 Jun
	2007 10:22:57 -0600
Received: from LP-EXCHVS07.CO.IHC.COM ([10.50.128.40]) by
	lp-exchfe02.CO.IHC.COM with Microsoft SMTPSVC(6.0.3790.3959); Tue, 19
	Jun 2007 10:22:55 -0600
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 19 Jun 2007 10:22:54 -0600
Message-ID: <07E228A5BE53C24CAD490193A7381BBBA5A265@LP-EXCHVS07.CO.IHC.COM>
In-Reply-To: <76AA79BF7116C04B92C3CD618B701A45036219@JNJBEBEGMS03.eu.jnj.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] plot only x- and y-axis with origin, no box()
Thread-Index: Aceyc+cRdtn/dYUzQpKLGG0NY788QQAGS6mA
From: "Greg Snow" <Greg.Snow@intermountainmail.org>
To: "Talloen, Willem [PRDBE]" <WTALLOEN@PRDBE.JNJ.COM>,
   r-help@stat.math.ethz.ch
X-OriginalArrivalTime: 19 Jun 2007 16:22:55.0256 (UTC)
	FILETIME=[177DA980:01C7B28E]
X-WSS-ID: 6A66DD481OC1976136-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5JGN1ke029504
Subject: Re: [R] plot only x- and y-axis with origin, no box()
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


Try:

> plot(.., bty='l')

Does that do what you want?  (see the bty parameter in ?par for details)

If you don't want the lines extending beyond the axes on the right and
top then you could do something more like:

> plot(5:10, 5:10, bty='n')
> library(TeachingDemos)
> lines(cnvrt.coords( c(0,0,.5), c(.5,0,0), input='plt')$usr)

You may also get what you want by playing with the xaxp and yaxp
parameters to par, but the bty='l' seems the easiest way to go. 

-- 
Gregory (Greg) L. Snow Ph.D.
Statistical Data Center
Intermountain Healthcare
greg.snow@intermountainmail.org
(801) 408-8111
 
 

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of 
> Talloen, Willem [PRDBE]
> Sent: Tuesday, June 19, 2007 7:15 AM
> To: r-help@stat.math.ethz.ch
> Subject: [R] plot only x- and y-axis with origin, no box()
> 
> hi all,
> 
> I'm trying for quite some time to have an x- and y-axis, but 
> no entire box.
> 
> >plot(..,axes=F)
> >axis(1)
> >axis(2)
> Gives this, but their axes do not go to the origin.
> Quite a number of people find this gap between the two axes 
> disturbing.
> Has anyone an idea how to let these axes go to the origin?
> 
> thank you in advance
> 
> 	[[alternative HTML version deleted]]
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

          

Ygne2We8y