From r-help-bounces@stat.math.ethz.ch  Sun Jun 17 10:39:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5HEdYL9007865
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 10:39:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HEd0qU028157;
	Sun, 17 Jun 2007 16:39:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, FH_HOST_EQ_D_D_D_D,
	FH_HOST_EQ_D_D_D_DB autolearn=no version=3.2.0
Received: from soln-sr1256.solutionip.com (204-180-236-10.belz.com
	[204.180.236.10] (may be forged))
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HEciDs027966
	for <r-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 16:38:45 +0200
Received: from [10.135.1.57] (helo=[10.135.1.57])
	by soln-sr1256.solutionip.com with esmtp (Exim 3.34 #1)
	id 1Hzvto-0002lq-00; Sun, 17 Jun 2007 09:38:40 -0500
Message-ID: <4675476F.3010906@vanderbilt.edu>
Date: Sun, 17 Jun 2007 09:38:39 -0500
From: Frank E Harrell Jr <f.harrell@vanderbilt.edu>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: Murray Pung <mcpung@gmail.com>
References: <8d6f66050706162118v31d129bbudbd0aaf6acfa8b77@mail.gmail.com>
In-Reply-To: <8d6f66050706162118v31d129bbudbd0aaf6acfa8b77@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] error bars on survival curve
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

Murray Pung wrote:
> I am using plot(survfit(Surv(time,status) ~...) and would like to add
> error bars rather than the confidence intervals. Am I able to do this
> at specified times? e.g. when time = 20 & 40.
> 
> 
> leukemia.surv <- survfit(Surv(time, status) ~ x, data = aml)
> plot(leukemia.surv, lty = 2:3,xlim = c(0,50))
> #can i add error bars at times 20 & 40?
> legend(100, .9, c("Maintenance", "No Maintenance"), lty = 2:3)
> 
> 
> Thanks
> Murray

Error bars when done correctly should equal confidence intervals in the 
minds of many.

When the Design package is available again for the latest version of R, 
you can have more control using the survplot function, with bars and 
bands options.  Do ?survplot.survfit

Frank

-- 
Frank E Harrell Jr   Professor and Chair           School of Medicine
                      Department of Biostatistics   Vanderbilt University

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

/mri00) BM