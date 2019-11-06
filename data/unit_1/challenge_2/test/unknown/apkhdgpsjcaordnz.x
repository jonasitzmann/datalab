From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:43:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PChoLD028378
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:43:52 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5N9GT7H002126;
	Sat, 23 Jun 2007 11:16:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_20,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mta1.srv.hcvlny.cv.net (mta1.srv.hcvlny.cv.net [167.206.4.196])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5N9GK7D002101
	for <r-help@stat.math.ethz.ch>; Sat, 23 Jun 2007 11:16:20 +0200
Received: from [192.168.1.101] (ool-4355370e.dyn.optonline.net [67.85.55.14])
	by mta1.srv.hcvlny.cv.net
	(Sun Java System Messaging Server 6.2-6.01 (built Apr  3 2006))
	with ESMTP id <0JK3002ES0F784B0@mta1.srv.hcvlny.cv.net> for
	r-help@stat.math.ethz.ch; Sat, 23 Jun 2007 05:16:19 -0400 (EDT)
Date: Sat, 23 Jun 2007 05:16:06 -0400
From: Chuck Cleland <ccleland@optonline.net>
In-reply-to: <LPEJLJACLINDNMBMFAFIAEEDCIAA.dieter.menne@menne-biomed.de>
To: dieter.menne@menne-biomed.de
Message-id: <467CE4D6.1000902@optonline.net>
MIME-version: 1.0
References: <LPEJLJACLINDNMBMFAFIAEEDCIAA.dieter.menne@menne-biomed.de>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-Help <r-help@stat.math.ethz.ch>
Subject: Re: [R] latex of ftable (Hmisc?)
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

Dieter Menne wrote:
> Dear latexRs,
> 
> I tried to make a latex printout of a simple categorial ftable. It should
> look like the output of print.ftable. Any ideas how to get the syntax of
> summary.formula right. Or some alternative? As far I see, xtable does not
> have method for ftable.
> 
> Dieter

  How about a Sweave approach?  Something like this in the *.Rnw file:

\documentclass[letter]{article}

\begin{document}

@

<<echo=FALSE,print=FALSE>>=

library(Hmisc)
n=500
sex <- factor(sample(c("m","f"), n, rep=TRUE))
treatment <- factor(sample(c("Drug","Placebo"), n, rep=TRUE))
symptom <- factor(sample( c('H','S','G'), n,TRUE))

@

<<echo=TRUE,print=TRUE>>=

ftable(symptom ~ treatment + sex)

@

\end{document}

  Then Sweave() the *.Rnw file to produce a *.tex file in the working
directory.

> library(Hmisc)
> n=500
> sex <- factor(sample(c("m","f"), n, rep=TRUE))
> treatment <- factor(sample(c("Drug","Placebo"), n, rep=TRUE))
> symptom <- factor(sample( c('H','S','G'), n,TRUE))
> # I want this output in latex
> ftable(symptom~treatment+sex)
> # No, it's not the same
> ss = summary(symptom~treatment+sex,fun=table)
> latex(ss)
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code. 

-- 
Chuck Cleland, Ph.D.
NDRI, Inc.
71 West 23rd Street, 8th floor
New York, NY 10010
tel: (212) 845-4495 (Tu, Th)
tel: (732) 512-0171 (M, W, F)
fax: (917) 438-0894

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

aeMa le-5ao6