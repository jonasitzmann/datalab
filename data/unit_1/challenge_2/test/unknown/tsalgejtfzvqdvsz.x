From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 17:54:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LLs3L9029905
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 17:54:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LLpsU3008999;
	Thu, 21 Jun 2007 23:52:00 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.224])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LLpmTB008980
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 23:51:49 +0200
Received: by nz-out-0506.google.com with SMTP id o37so622721nzf
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 14:51:48 -0700 (PDT)
Received: by 10.114.94.1 with SMTP id r1mr2160755wab.1182462707877;
	Thu, 21 Jun 2007 14:51:47 -0700 (PDT)
Received: by 10.114.152.15 with HTTP; Thu, 21 Jun 2007 14:51:47 -0700 (PDT)
Message-ID: <247ee61e0706211451v2dd447cy6df01c16d95fb604@mail.gmail.com>
Date: Thu, 21 Jun 2007 17:51:47 -0400
From: "nicole baerg" <nicole.baerg@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Multinomial models
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

Hello,

I am VERY new to R (one week) and I am trying to run a multinomial logit model.
The model I am using is

> model1 <- multinom(Y ~ X1 + X2 + , ..., Xn)

if I put in

> summary(model1)

I get

#Error in function (classes, fdef, mtable)  :
        unable to find an inherited method for function "fitted", for
signature "multinom"

and if I put in

> coef(model1)

I get the coefficients. I would like, however, to get the
coefficients, estimates, Std Erros and t-Ratios and/or z or P>[z]

Also can you change the speficiation of the base category without recoding?

Thanks.

Nicole

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

2tueI