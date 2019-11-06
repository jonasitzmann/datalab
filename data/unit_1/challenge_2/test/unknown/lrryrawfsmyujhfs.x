From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 14:40:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LIeNL9027710
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 14:40:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LIco3M005580;
	Thu, 21 Jun 2007 20:39:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from alnrmhc16.comcast.net (alnrmhc16.comcast.net [204.127.225.96])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LIcfOM005537
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 20:38:42 +0200
Received: from [192.168.0.91]
	(74-94-87-209-minnesota.hfc.comcastbusiness.net?[74.94.87.209])
	by comcast.net (alnrmhc16) with SMTP
	id <20070621183840b1600gb65ee>; Thu, 21 Jun 2007 18:38:40 +0000
From: Marc Schwartz <marc_schwartz@comcast.net>
To: spime <sabya23@gmail.com>
In-Reply-To: <11238540.post@talk.nabble.com>
References: <11238540.post@talk.nabble.com>
Date: Thu, 21 Jun 2007 13:38:39 -0500
Message-Id: <1182451119.3705.7.camel@Bellerophon.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 (2.10.2-2.fc7) 
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How to hide axis interval values in a plot
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: marc_schwartz@comcast.net
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

On Thu, 2007-06-21 at 11:07 -0700, spime wrote:
> 
> 
> >plot(cars)
> 
> this shows a plot having interval values of axes (x-axis:5-25;
> y-axis:0-120). I want to hide these values. is there any way?

  plot(cars, axes = FALSE)

If you still want the box around the plot region, follow the above with:

  box()

or use:

  plot(cars, xaxt = "n", yaxt = "n")

See ?plot.default and ?par for more information and standard arguments
for plots.

If you want axes, but using values and tick marks that you define as
opposed to the defaults, see ?axis

HTH,

Marc Schwartz

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



CaN=5