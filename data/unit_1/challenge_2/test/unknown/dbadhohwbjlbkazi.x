From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 11:10:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58FAqhB016840
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 11:10:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58FA4Ia024528;
	Fri, 8 Jun 2007 17:10:28 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32810.mail.mud.yahoo.com (web32810.mail.mud.yahoo.com
	[68.142.206.40])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l58EmdJR014420
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 16:48:39 +0200
Received: (qmail 50431 invoked by uid 60001); 8 Jun 2007 14:48:38 -0000
X-YMail-OSG: hXShfPcVM1nqLz0ACWjmCoVC83tFr7sSwlKjL9W5CewcuVhl5xRjkSt7Z0IKzeN_.kJwr0Hcr6jlBQa7YH5dHHwnmMA.2lgxQ_yYrWJ4OHzcd.1o1zw-
Received: from [130.15.106.174] by web32810.mail.mud.yahoo.com via HTTP;
	Fri, 08 Jun 2007 10:48:38 EDT
Date: Fri, 8 Jun 2007 10:48:38 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: Peter Lercher <Peter.Lercher@i-med.ac.at>, r-help@stat.math.ethz.ch
In-Reply-To: <20070608110700.g8esovsr48gkoso8@webmail.i-med.ac.at>
MIME-Version: 1.0
Message-ID: <343633.50039.qm@web32810.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] overplots - fixing scientific vs normal notation in output
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


--- Peter Lercher <Peter.Lercher@i-med.ac.at> wrote:

> Moving from S-plus to R I encountered many great
> features and a much
> more stable system.
> Currently, I am left with 2 problems that are
> handled differently:
> 
> 1) I did lots of "overplots" in S-Plus using
> par(new=T,xaxs='d',yaxs='d') to fix the axes
> ->What is the workaround in R ?

What does S=Plus do here?  
> 
> 2) In S-Plus I could fix "scientific notation" or
> "normal notation" in output
> ->How can I handle this in R ?
> I found no fix in the documentation

?format() maybe?

> 
> I am using R version 2.4.1 (2006-12-18) on Windows
> XP SR2
> 
> 
> Peter Lercher, M.D., M.P.H., Assoc Prof
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained,
> reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

 W5  =t1w2fgKw