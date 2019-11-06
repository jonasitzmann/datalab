From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 09:42:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SDgdL9011247
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 09:42:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SDfrKY032454;
	Thu, 28 Jun 2007 15:42:08 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SD2Y0I017256
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 15:02:34 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5SD2TOg008389; 
	Thu, 28 Jun 2007 14:02:29 +0100 (BST)
Date: Thu, 28 Jun 2007 14:02:29 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Karl Knoblick <karlknoblich@yahoo.de>
In-Reply-To: <91690.78118.qm@web26511.mail.ukl.yahoo.com>
Message-ID: <Pine.LNX.4.64.0706281357460.9361@gannet.stats.ox.ac.uk>
References: <91690.78118.qm@web26511.mail.ukl.yahoo.com>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] aov and lme differ with interaction in oats example of MASS?
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

On Thu, 28 Jun 2007, Karl Knoblick wrote:

> Dear R-Community!
>
> The example "oats" in MASS (2nd edition, 10.3, p.309) is calculated for aov and lme without interaction term and the results are the same.
> But I have problems to reproduce the example aov with interaction in MASS (10.2, p.301) with lme. Here the script:
>
> library(MASS)
> library(nlme)
> options(contrasts = c("contr.treatment", "contr.poly"))

That is the problem.  You need true contrasts, so use contr.helmert.  When 
I did so I got the same results from lme and aov for the anovas.

The question of what a 'marginal' AoV means without orthogonality is moot.
The sequential version is fine here.

> # aov: Y ~ N + V
> oats.aov <- aov(Y ~ N + V + Error(B/V), data = oats, qr = T)
> summary(oats.aov)
> # now lme
> oats.lme<-lme(Y ~ N + V, random = ~1 | B/V, data = oats)
> anova(oats.lme, type="m") # Ok!
> # aov:Y ~ N * V + Error(B/V)
> oats.aov2 <- aov(Y ~ N * V + Error(B/V), data = oats, qr = T)
> summary(oats.aov2)
> # now lme - my trial!
> oats.lme2<-lme(Y ~ N * V, random = ~1 | B/V, data = oats)
> anova(oats.lme2, type="m")
> # differences!!! (except of interaction term)
>
> My questions:
> 1) Is there a possibility to reproduce the result of aov with interaction using lme?
> 2) If not, which result of the above is the correct one for the oats example?
>
> Thanks a lot!
> Karl

-- 
Brian D. Ripley,                  ripley@stats.ox.ac.uk
Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
University of Oxford,             Tel:  +44 1865 272861 (self)
1 South Parks Road,                     +44 1865 272866 (PA)
Oxford OX1 3TG, UK                Fax:  +44 1865 272595

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

dT0oo .;xi