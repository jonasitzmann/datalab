From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 10:39:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BEdXL9015105
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 10:39:34 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BEcC1G023473;
	Mon, 11 Jun 2007 16:38:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME, STOX_REPLY_TYPE autolearn=no version=3.2.0
Received: from rusty.kulnet.kuleuven.ac.be (rusty.kulnet.kuleuven.ac.be
	[134.58.240.42])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BEc331023412
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 16:38:03 +0200
Received: from localhost (localhost [127.0.0.1])
	by rusty.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 636C01D77EE; Mon, 11 Jun 2007 16:38:02 +0200 (CEST)
Received: from smtps01.kuleuven.be (smtpshost01.kulnet.kuleuven.be
	[134.58.240.74]) by rusty.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 37AEE1D775A; Mon, 11 Jun 2007 16:38:01 +0200 (CEST)
Received: from smtps01.kuleuven.be (localhost [127.0.0.1])
	by smtps01.kuleuven.be (Postfix) with ESMTP id F03CC31E704;
	Mon, 11 Jun 2007 16:38:00 +0200 (CEST)
Received: from PC178 (pc-10-33-64-5.med.kuleuven.ac.be [10.33.64.5])
	by smtps01.kuleuven.be (Postfix) with SMTP id E616131E703;
	Mon, 11 Jun 2007 16:38:00 +0200 (CEST)
Message-ID: <006201c7ac36$397b1e90$0540210a@www.domain>
X-Kuleuven: This mail passed the K.U.Leuven mailcluster
From: "Dimitris Rizopoulos" <dimitris.rizopoulos@med.kuleuven.be>
To: "MICHELE DE MEO" <micheledemeo@gmail.com>
References: <3bb56c8a0706110713k25661ba2pd7ceaa5116140285@mail.gmail.com>
Date: Mon, 11 Jun 2007 16:38:49 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Gini coefficient in R
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

try this version instead:

gini <- function(x, unbiased = TRUE, na.rm = FALSE){
    if (!is.numeric(x)){
        warning("'x' is not numeric; returning NA")
        return(NA)
    }
    if (!na.rm && any(na.ind <- is.na(x)))
        stop("'x' contain NAs")
    if (na.rm)
        x <- x[!na.ind]
    n <- length(x)
    mu <- mean(x)
    N <- if (unbiased) n * (n - 1) else n * n
    ox <- x[order(x)]
    dsum <- drop(crossprod(2 * 1:n - n - 1,  ox))
    dsum / (mu * N)
}

########################

gini(c(100,0,0,0))


I hope it helps.

Best,
Dimitris

----
Dimitris Rizopoulos
Ph.D. Student
Biostatistical Centre
School of Public Health
Catholic University of Leuven

Address: Kapucijnenvoer 35, Leuven, Belgium
Tel: +32/(0)16/336899
Fax: +32/(0)16/337015
Web: http://med.kuleuven.be/biostat/
     http://www.student.kuleuven.be/~m0390867/dimitris.htm


----- Original Message ----- 
From: "MICHELE DE MEO" <micheledemeo@gmail.com>
To: <r-help@stat.math.ethz.ch>
Sent: Monday, June 11, 2007 4:13 PM
Subject: [R] Gini coefficient in R


> If I use the Ineq library and the Gini function in this way:
>
>>Gini(c(100,0,0,0))
>
> I obtain the result 0.75 instead of 1 (that is the perfect 
> inequality).
>
> I think Gini's formula in Ineq is based on a formula as reported 
> here:
> http://mathworld.wolfram.com/GiniCoefficient.html
>
> but in the case of perfect inequality:
>
> x_1=.......=x_n-1 =0
>
> x_n>0
>
> these formula are equal to 1 - 1/n, not to 1.
>
> ....I don't know where I'm wrong....
>
>
> -- 
> Michele De Meo
> http://micheledemeo.blogspot.com/
>
> [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 


Disclaimer: http://www.kuleuven.be/cwis/email_disclaimer.htm

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

lns nmacw3s Ko 