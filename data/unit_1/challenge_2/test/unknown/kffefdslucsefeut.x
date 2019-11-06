From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 01:39:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l565dehB017827
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 01:39:41 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l565aLrC024862;
	Wed, 6 Jun 2007 07:36:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailgw02.nhh.no (mailgw02.nhh.no [158.37.108.34])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l565aFlO024842
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 07:36:15 +0200
X-IronPort-AV: E=Sophos;i="4.16,387,1175464800"; 
   d="scan'208";a="4473832"
Received: from inti.valuta.nhh.no ([158.37.108.136])
	by mailgw-02.nhh.no with ESMTP; 06 Jun 2007 07:36:14 +0200
Received: from reclus.nhh.no ([158.37.107.20]) by inti.valuta.nhh.no with
	Microsoft SMTPSVC(6.0.3790.1830); Wed, 6 Jun 2007 07:36:14 +0200
Date: Wed, 6 Jun 2007 07:36:14 +0200 (CEST)
From: Roger Bivand <Roger.Bivand@nhh.no>
X-X-Sender: rsb@reclus.nhh.no
To: Patrick Wang <pwang@berkeley.edu>
In-Reply-To: <50472.76.169.69.87.1181100783.squirrel@calmail.berkeley.edu>
Message-ID: <Pine.LNX.4.44.0706060733190.16522-100000@reclus.nhh.no>
MIME-Version: 1.0
X-OriginalArrivalTime: 06 Jun 2007 05:36:14.0808 (UTC)
	FILETIME=[99406580:01C7A7FC]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] kernel smooth for tw-dimensional data
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: Roger.Bivand@nhh.no
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

On Tue, 5 Jun 2007, Patrick Wang wrote:

> Hi, I found kde2d in the MASS packages return densities for the bivariate
> random varaibles.
> 
> I donot understand why each element of density Z is a 2*2 matrix.
> Why it is not a number.
> 
> For example, a bivariate normula distribution given (x, y) will return a
> number, the density, not a matrix.

I think you were asking these questions last week: 

library(mvtnorm) 
?dmvnorm

not 2D kernel *density* (the word is perhaps overloaded).

However, kde2d() *is* a 2D density(), so maybe you need to consider what 
you are looking for.

> 
> Thanks
> Pat
> 
> 
> > Hi all:
> >
> > I can use the density() function to get the kernel density for given
> > observed data X with bandwidth.
> >
> > Is there a function in R that can take in two dimensional data(x, y) and
> > return a joint density based
> > on the bandwidth. Do I need to provide bandwith for x and then for y?
> >
> > Is the GRASS package
> > kde2d.G(x, y, h, G, reverse=reverse(G))
> >
> > provide such function?
> >
> > Thanks
> > pat
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide
> > http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
> >
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 

-- 
Roger Bivand
Economic Geography Section, Department of Economics, Norwegian School of
Economics and Business Administration, Helleveien 30, N-5045 Bergen,
Norway. voice: +47 55 95 93 55; fax +47 55 95 95 43
e-mail: Roger.Bivand@nhh.no

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

a�f)K"
4wZ3o