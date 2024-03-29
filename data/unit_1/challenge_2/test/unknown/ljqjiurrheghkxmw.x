From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 14:28:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64ISUL9014085
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 14:28:30 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64IReWf022352;
	Wed, 4 Jul 2007 20:27:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.170])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64IKSRt019655
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 20:20:29 +0200
Received: by ug-out-1314.google.com with SMTP id m3so317493uge
	for <r-help@stat.math.ethz.ch>; Wed, 04 Jul 2007 11:20:28 -0700 (PDT)
Received: by 10.67.95.1 with SMTP id x1mr1323820ugl.1183573228480;
	Wed, 04 Jul 2007 11:20:28 -0700 (PDT)
Received: by 10.66.234.6 with HTTP; Wed, 4 Jul 2007 11:20:28 -0700 (PDT)
Message-ID: <644e1f320707041120g3aa644d9tfbb15557c844d0f5@mail.gmail.com>
Date: Wed, 4 Jul 2007 14:20:28 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "Stefan Grosse" <singularitaet@gmx.net>
In-Reply-To: <644e1f320707041119s4a8ab682x5e41884e66fd7120@mail.gmail.com>
MIME-Version: 1.0
References: <mailman.11.1183543206.28203.r-help@stat.math.ethz.ch>
	<000101c7be41$7b2a4d30$6501a8c0@kLab>
	<971536df0707040829w55bc833y47ff9d085c21949e@mail.gmail.com>
	<468BC4CF.9090002@gmx.net>
	<644e1f320707041119s4a8ab682x5e41884e66fd7120@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] A More efficient method?
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

One other thing, in a multiprocessor configuration, if your application is
making use of the additional CPUs, then

User + System > Elapsed

In some cases.


On 7/4/07, jim holtman <jholtman@gmail.com> wrote:
>
> User and System are a measure of the CPU time that was consumed.  Elapsed
> time is the "wall clock" and even though they are both measured in seconds,
> they are not really the same units.  The reason for the difference is any
> "idle" time that they system may have waiting for I/O to complete which does
> not consume CPU time for your process, but does consume Elasped time.
>
> For some instances of CPU intensive code (with no I/O of competing tasks),
> the User + System ~= Elapsed.  Also you have to take into account the
> granularity of the clock when looking at numbers like 0.04.  So serious
> comparisons of timing, you want runs of at least 10s of seconds or more.
>
>
>  On 7/4/07, Stefan Grosse <singularitaet@gmx.net> wrote:
> >
> > Gabor Grothendieck wrote:
> > >> set.seed(1)
> > >> C <- sample(c("a", "b"), 100000, replace = TRUE)
> > >> system.time(s1 <- ifelse(C == "a", 1, -1))
> > >>
> > >    user  system elapsed
> > >    0.37    0.01    0.38
> > >
> > >> system.time(s2 <- 2 * (C == "a") - 1)
> > >>
> > >    user  system elapsed
> > >    0.02    0.00    0.02
> > >
> > > system.time(s1 <- ifelse(C == "a", 1, -1))
> >   user  system elapsed
> >   0.04    0.01    0.08
> > > system.time(s2 <- 2 * (C == "a") - 1)
> >   user  system elapsed
> >      0       0       0
> >
> >
> > I am just wondering: how comes the time does add up to 0.05 while
> > elapsed states 0.08 on my system? (Vista+R2.5.1)
> >
> > Stefan
> >
> >
> > -=-=-
> > ... Time is an illusion, lunchtime doubly so. (Ford Prefect)
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide
> > http://www.R-project.org/posting-guide.html<http://www.r-project.org/posting-guide.html>
> > and provide commented, minimal, self-contained, reproducible code.
> >
>
>
>
> --
> Jim Holtman
> Cincinnati, OH
> +1 513 646 9390
>
> What is the problem you are trying to solve?




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

              

tl+=ThYp