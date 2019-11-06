From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:19:54 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCJrL9027857
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:19:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PCIBPt022471;
	Mon, 25 Jun 2007 14:18:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pascal.uni-erfurt.de (pascal.uni-erfurt.de [194.95.117.230])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PC8Z2Q019351
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 14:08:35 +0200
Received: from webshield.net.uni-erfurt.de ([194.95.117.245])
	by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with SMTP id <0JK600BFFXQBO810@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Mon, 25 Jun 2007 14:08:35 +0200 (MEST)
Received: from pascal.uni-erfurt.de(194.95.117.230)
	by webshield.net.uni-erfurt.de via smtp	id
	29eb_21d5f21a_2314_11dc_97bd_0011433682c5;
	Mon, 25 Jun 2007 14:03:48 +0200
Received: from [194.95.14.48] by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with ESMTP id <0JK600BSQXQBO410@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Mon, 25 Jun 2007 14:08:35 +0200 (MEST)
Date: Mon, 25 Jun 2007 14:08:36 +0200
From: Stefan Grosse <singularitaet@gmx.net>
In-reply-to: <467FAF03.90104@imperial.ac.uk>
To: Federico Calboli <f.calboli@imperial.ac.uk>, r-help@stat.math.ethz.ch
Message-id: <467FB044.6030705@gmx.net>
MIME-version: 1.0
References: <467FAF03.90104@imperial.ac.uk>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] fractional calculations
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


> is there a function in R that allows me to work with fractions without 
> transforming them to floats (or whatever) in between?
>
>   

You could use the ryacas (CAS) package:
http://code.google.com/p/ryacas/
and/or
http://cran.r-project.org/doc/vignettes/Ryacas/Ryacas.pdf

e.g:
> library(Ryacas)
> yacas(expression((1/2 + 1/8) * 1/2 ))
[1] "Starting Yacas!"
expression(5/16)
>


Stefan

> Something that would calculate something like:
>
> (1/2 + 1/8) * 1/2 = 5/16
>
> without ever transforming to 0.5 and 0.125?
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

Ic6men eVK: