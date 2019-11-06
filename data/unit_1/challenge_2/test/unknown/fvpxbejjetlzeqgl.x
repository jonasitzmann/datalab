From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 15:06:54 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58J6qhB018922
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 15:06:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58J6CTu016612;
	Fri, 8 Jun 2007 21:06:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58J4SOf016150
	for <R-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 21:04:28 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l58J4FnQ020598; 
	Fri, 8 Jun 2007 20:04:16 +0100 (BST)
Date: Fri, 8 Jun 2007 20:04:15 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: "Robert A. LaBudde" <ral@lcfltd.com>
In-Reply-To: <0JJB003RCXJ3FCI0@vms042.mailsrvcs.net>
Message-ID: <Pine.LNX.4.64.0706082001120.9861@gannet.stats.ox.ac.uk>
References: <0JJB003RCXJ3FCI0@vms042.mailsrvcs.net>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] glm() for log link and Weibull family
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

On Fri, 8 Jun 2007, Robert A. LaBudde wrote:

> I need to be able to run a generalized linear model with a log() link
> and a Weibull family, or something similar to deal with an extreme
> value distribution.

The Weibull with log link is not a GLM, but survreg() in package survival
can fit it, as well as other extreme-value distributions.

> I actually have a large dataset where this is apparently necessary.
> It has to do with recovery of forensic samples from surfaces, where
> as much powder as possible is collected. This apparently causes the
> results to conform to some type of extreme value distribution, so
> Weibull is a reasonable starting point for exploration.
>
> I have tried ('surface' and 'team' are factors)
>
> glm(surfcount ~ surface*team, data=powderd, family=Gamma(link='log'))
>
> but this doesn't quite do the trick. The standardized deviance
> residuals are still curved away from normal at the tails.
>
> Thanks for any info you can give on this nonstandard model.

It's perfectly standard, just not a GLM.

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

              

akuot