From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 12:42:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5IGgkL9019632
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 12:42:47 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IGflbq013530;
	Mon, 18 Jun 2007 18:42:13 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from nx5.hrz.uni-dortmund.de (nx5.HRZ.Uni-Dortmund.DE
	[129.217.131.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IGVFEV009473
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 18:31:16 +0200
Received: from mail.statistik.uni-dortmund.de (mail.Statistik.Uni-Dortmund.DE
	[129.217.206.4])
	by nx5.hrz.uni-dortmund.de (Postfix) with ESMTP id A572B1207A;
	Mon, 18 Jun 2007 18:31:15 +0200 (MET DST)
Received: from [129.217.207.201] (ligges2.fb05.statistik.uni-dortmund.de
	[129.217.207.201])
	by mail.statistik.uni-dortmund.de (Postfix) with ESMTP id 8702D35C8DF; 
	Mon, 18 Jun 2007 18:31:11 +0200 (CEST)
Message-ID: <4676B2E7.7060308@statistik.uni-dortmund.de>
Date: Mon, 18 Jun 2007 18:29:27 +0200
From: Uwe Ligges <ligges@statistik.uni-dortmund.de>
Organization: Fachbereich Statistik, =?ISO-8859-1?Q?Universit=E4t_Dortm?=
	=?ISO-8859-1?Q?und?=
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.8.1.4) Gecko/20070509 SeaMonkey/1.1.2
MIME-Version: 1.0
To: livia <yn19832@msn.com>
References: <11178663.post@talk.nabble.com>
In-Reply-To: <11178663.post@talk.nabble.com>
X-FB05-MailScanner: clean
X-FB05-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (Wertung=-3.299, benoetigt 4.5, autolearn=disabled,
	ALL_TRUSTED -3.30, BAYES_50 0.00)
X-FB05-MailScanner-From: ligges@statistik.uni-dortmund.de
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Optimization
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



livia wrote:
> Hi, I would like to minimize the value of x1-x2, x2 is a fixed value of 0.01,
> x1 is the quantile of normal distribution (0.0032,x) with probability of
> 0.7, and the changing value should be x. Initial value for x is 0.0207. I am
> using the following codes, but it does not work.
> 
> fr <- function(x) {
>       x1<-qnorm(0.7,0.0032,x)
>       x2=0.01
>       x1-x2
> }
> xsd <- optim(0.0207, fr, NULL,method="BFGS")


I guess you want to use optimize() and change the last line of fr to 
(x1-x2)^2 as in:


fr <- function(x) {
       x1 <- qnorm(0.7, 0.0032, x)
       x2 <- 0.01
       (x1-x2)^2
}

optimize(fr, c(-5, 5))

Uwe Ligges




> It is the first time I am trying to use optimization. Could anyone give me
> some advice?

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

�ueth	iP>hse