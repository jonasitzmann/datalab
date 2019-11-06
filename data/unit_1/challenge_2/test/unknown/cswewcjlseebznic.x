From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 08:42:26 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RCgOL9026600
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 08:42:25 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RCfc1e018809;
	Wed, 27 Jun 2007 14:41:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.169])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RCV4RC014950
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 14:31:04 +0200
Received: by ug-out-1314.google.com with SMTP id m3so293958uge
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 05:31:04 -0700 (PDT)
Received: by 10.67.22.14 with SMTP id z14mr1137932ugi.1182947464212;
	Wed, 27 Jun 2007 05:31:04 -0700 (PDT)
Received: by 10.66.239.3 with HTTP; Wed, 27 Jun 2007 05:31:04 -0700 (PDT)
Message-ID: <644e1f320706270531x3f3c8863p3cd6764177a88829@mail.gmail.com>
Date: Wed, 27 Jun 2007 08:31:04 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "Mark Wardle" <mark@wardle.org>
In-Reply-To: <b59a37130706270044n6dd995a2ibbd9a7dc011a4db0@mail.gmail.com>
MIME-Version: 1.0
References: <b59a37130706261214s6c1e47f8qe64e0b623d767235@mail.gmail.com>
	<644e1f320706261542h5ea51896s49c109f2fff04510@mail.gmail.com>
	<b59a37130706270044n6dd995a2ibbd9a7dc011a4db0@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Aggregation of data frame with calculations of proportions
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

I can drink a virtual beer in a bar in Second Life and put it on your tab.

On 6/27/07, Mark Wardle <mark@wardle.org> wrote:
>
> Dear Jim,
>
> On 26/06/07, jim holtman <jholtman@gmail.com> wrote:
> > I think something like this will do it for you.
> >
> >
> >
> > set.seed(1)
> > n <- 10
> > x <- data.frame(a=sample(1:100,n),
> > b=sample(1:100,n),d=sample(1:100,n))
> > x$a[c(1,5)] <- NA
> > x$b[c(7,6,4)] <- NA
> > x$d[c(5,8)] <- NA
> > x$total <- rowSums(x, na.rm=TRUE)
> > x$type <- sample(1:3, n, replace=TRUE)
> > by(x, list(x$type), function(z){
> >     apply(z[,1:3], 2, calc.prevalence, total=z$total)
> > })
> >
> >
> > [...SNIP...]
> > --
> > Jim Holtman
> > Cincinnati, OH
> > +1 513 646 9390
> >
> > What is the problem you are trying to solve?
>
>
> It works perfectly. The problem now is how to send over that beer I owe
> you!
>
> Many thanks,
>
> Best wishes,
>
> --
> Dr. Mark Wardle
> Clinical research fellow and specialist registrar, Neurology
> Cardiff, UK
>



-- 
Jim Holtman
Cincinnati, OH
+1 513 646 9390

What is the problem you are trying to solve?

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

r_,P>4r