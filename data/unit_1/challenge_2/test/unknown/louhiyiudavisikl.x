From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 19:16:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63NGbL9002794
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 19:16:38 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63NFlRb015520;
	Wed, 4 Jul 2007 01:16:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.245])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63NDoqf015093
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 01:13:50 +0200
Received: by an-out-0708.google.com with SMTP id b2so382314ana
	for <r-help@stat.math.ethz.ch>; Tue, 03 Jul 2007 16:13:50 -0700 (PDT)
Received: by 10.100.110.16 with SMTP id i16mr4557222anc.1183504429391;
	Tue, 03 Jul 2007 16:13:49 -0700 (PDT)
Received: by 10.100.38.11 with HTTP; Tue, 3 Jul 2007 16:13:49 -0700 (PDT)
Message-ID: <6ade6f6c0707031613r4e54ba71mbc25b5356c614c59@mail.gmail.com>
Date: Wed, 4 Jul 2007 00:13:49 +0100
From: "Paul Smith" <phhs80@gmail.com>
To: R-help <r-help@stat.math.ethz.ch>
In-Reply-To: <000d01c7bdc6$4967c460$7c94100a@win.ad.jhu.edu>
MIME-Version: 1.0
Content-Disposition: inline
References: <6ade6f6c0707031310m4bf83d91xb8f61264caa12645@mail.gmail.com>
	<000501c7bdb3$bbc47ac0$7c94100a@win.ad.jhu.edu>
	<6ade6f6c0707031409i5a9ba74cs4567e4aa994a0749@mail.gmail.com>
	<000d01c7bdc6$4967c460$7c94100a@win.ad.jhu.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Fine tunning rgenoud
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

On 7/4/07, Ravi Varadhan <rvaradhan@jhmi.edu> wrote:
> It should be easy enough to check that your solution is valid (i.e. a local
> minimum):  first, check to see if the solution satisfies all the
> constraints; secondly, check to see if it is an interior point (i.e. none of
> the constraints become equality); and finally, if the solution is an
> interior point, check to see whether the gradient there is close to zero.
> Note that if the solution is one of the vertices of the polyhedron, then the
> gradient may not be zero.

That is a very good idea, Ravi! Thanks!

Paul



> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Paul Smith
> Sent: Tuesday, July 03, 2007 5:10 PM
> To: R-help
> Subject: Re: [R] Fine tunning rgenoud
>
> On 7/3/07, Ravi Varadhan <rvaradhan@jhmi.edu> wrote:
> > You had indicated in your previous email that you are having trouble
> finding
> > a feasible starting value for constrOptim().  So, you basically need to
> > solve a system of linear inequalities to obtain a starting point.  Have
> you
> > considered using linear programming? Either simplex() in the "boot"
> package
> > or solveLP() in "linprog" would work.  It seems to me that you could use
> any
> > linear objective function in solveLP to obtain a feasible starting point.
> > This is not the most efficient solution, but it might be worth a try.
> >
> > I am aware of other methods for generating n-tuples that satisfy linear
> > inequality constraints, but AFAIK those are not available in R.
>
> Thanks, Ravi. I had already conceived the solution that you suggest,
> actually using "lpSolve". I am able to get a solution for my problem
> with constrOptim, but I am not enough confident that the solution is
> right. That is why I am trying to get a solution with rgenoud, but
> unsuccessfully until now.
>
> Paul
>
>
>
> > -----Original Message-----
> > From: r-help-bounces@stat.math.ethz.ch
> > [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Paul Smith
> > Sent: Tuesday, July 03, 2007 4:10 PM
> > To: R-help
> > Subject: [R] Fine tunning rgenoud
> >
> > Dear All,
> >
> > I am trying to solve the following maximization problem, but I cannot
> > have rgenoud giving me a reliable solution.
> >
> > Any ideas?
> >
> > Thanks in advance,
> >
> > Paul
> >
> > ----------------------------
> > library(rgenoud)
> >
> > v <- 0.90
> > O1 <- 10
> > O2 <- 20
> > O0 <- v*O1+(1-v)*O2
> >
> > myfunc <- function(x) {
> >   U0 <- x[1]
> >   U1 <- x[2]
> >   U2 <- x[3]
> >   q0 <- x[4]
> >   q1 <- x[5]
> >   q2 <- x[6]
> >   p <- x[7]
> >
> >   if (U0 < 0)
> >     return(-1e+200)
> >   else if (U1 < 0)
> >     return(-1e+200)
> >   else if (U2 < 0)
> >     return(-1e+200)
> >   else if ((U0-(U1+(O1-O0)*q1)) < 0)
> >     return(-1e+200)
> >   else if ((U0-(U2+(O2-O0)*q2)) < 0)
> >     return(-1e+200)
> >   else if ((U1-(U0+(O0-O1)*q0)) < 0)
> >     return(-1e+200)
> >   else if ((U1-(U2+(O2-O1)*q2)) < 0)
> >     return(-1e+200)
> >   else if((U2-(U0+(O0-O2)*q0)) < 0)
> >     return(-1e+200)
> >   else if((U2-(U1+(O1-O2)*q1)) < 0)
> >     return(-1e+200)
> >   else if(p < 0)
> >     return(-1e+200)
> >   else if(p > 1)
> >     return(-1e+200)
> >   else if(q0 < 0)
> >     return(-1e+200)
> >   else if(q1 < 0)
> >     return(-1e+200)
> >   else if(q2 < 0)
> >     return(-1e+200)
> >   else
> >
> return(p*(sqrt(q0)-(O0*q0+U0))+(1-p)*(v*(sqrt(q1)-(O1*q1+U1))+(1-v)*(sqrt(q2
> > )-(O2*q2+U2))))
> >
> > }
> >
> genoud(myfunc,nvars=7,max=T,pop.size=6000,starting.values=runif(7),wait.gene
> > rations=150,max.generations=300,boundary.enforcement=2)
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
> >
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

ipl vysrfn>tOD0