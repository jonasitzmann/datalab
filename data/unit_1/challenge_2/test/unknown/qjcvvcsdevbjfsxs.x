From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 18:02:02 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SM1xL9016175
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 18:02:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SM1IkP013258;
	Fri, 29 Jun 2007 00:01:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from disco (disco.wu-wien.ac.at [137.208.56.16])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SLkUlK006310
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 23:46:30 +0200
Received: from zeileis by disco with local (Exim 3.36 #1 (Debian))
	id 1I41rX-0002g6-00; Thu, 28 Jun 2007 23:49:15 +0200
Date: Thu, 28 Jun 2007 23:49:15 +0200
From: Achim Zeileis <Achim.Zeileis@wu-wien.ac.at>
To: "Nordlund, Dan (DSHS/RDA)" <NordlDJ@dshs.wa.gov>
Message-Id: <20070628234915.c4d6479b.Achim.Zeileis@wu-wien.ac.at>
In-Reply-To: <941871A13165C2418EC144ACB212BDB04E1323@dshsmxoly1504g.dshs.wa.lcl>
References: <c0792190706281331w1f8088a1hbad0e79cb91d18fd@mail.gmail.com>
	<941871A13165C2418EC144ACB212BDB04E1323@dshsmxoly1504g.dshs.wa.lcl>
X-Mailer: Sylpheed version 2.3.0beta5 (GTK+ 2.8.20; i486-pc-linux-gnu)
Mime-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Wilcoxon Rank Sum Test.
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

On Thu, 28 Jun 2007 14:18:52 -0700 Nordlund, Dan (DSHS/RDA) wrote:

> 
> > -----Original Message-----
> > From: r-help-bounces@stat.math.ethz.ch 
> > [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Marcus
> > Vinicius Sent: Thursday, June 28, 2007 1:32 PM
> > To: r-help@stat.math.ethz.ch
> > Subject: [R] Wilcoxon Rank Sum Test.
> > 
> > Dear,
> > 
> > I'm using R software to evaluate Wilcoxon Rank Sum Test and 
> > I' getting one
> > Warning message as this:
> > 
> > > C1dea_com
> >  [1] 1.000 0.345 0.200 0.208 0.508 0.480 0.545 0.563 0.451 
> > 0.683 0.380 0.913
> > 1.000 0.506
> > > C1dea_sem
> >  [1] 1.000 0.665 0.284 0.394 0.509 0.721 0.545 0.898 0.744 
> > 0.683 0.382 0.913
> > 1.000 0.970
> > 
> > 
> > > wilcox.test(C1dea_sem,C1dea_com, paired = TRUE, alternative 
> > = "two.sided")
> > 
> >         Wilcoxon signed rank test with continuity correction
> > 
> > data:  C1dea_sem and C1dea_com
> > V = 45, p-value = 0.009152
> > alternative hypothesis: true mu is not equal to 0
> > 
> > Warning message:
> > Cannot compute exact p-value with zeroes in: 
> > wilcox.test.default(C1dea_sem,
> > C1dea_com, paired = TRUE, alternative = "two.sided")
> > 
> > What is happening?
> > 
> > Best Regards,
> > 
> > Marcus Vinicius
> > 
> 
> Marcus,
> 
> It means that you have one or more pairs of observations (5 in your
> case) where the difference is 0.  The wilcox.test can only compute an
> approximate p-value under these circumstances.

...while wilcox.exact() from package "exactRankTests" can evaluate the
permutation distribution correctly.
Z

> Hope this is helpful,
> 
> Dan
> 
> Daniel J. Nordlund
> Research and Data Analysis
> Washington State Department of Social and Health Services
> Olympia, WA  98504-5204
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html and provide commented,
> minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

ohr1c