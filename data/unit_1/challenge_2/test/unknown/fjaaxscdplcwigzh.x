From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 03:05:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5475fhB024552
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 03:05:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54754Nt000608;
	Mon, 4 Jun 2007 09:05:13 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_20,
	DKIM_POLICY_SIGNSOME, STOX_REPLY_TYPE autolearn=no version=3.2.0
Received: from thumbler.kulnet.kuleuven.ac.be (thumbler.kulnet.kuleuven.ac.be
	[134.58.240.45])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5474xM4000577
	for <r-help@stat.math.ethz.ch>; Mon, 4 Jun 2007 09:04:59 +0200
Received: from localhost (localhost [127.0.0.1])
	by thumbler.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 2D59F137E22; Mon,  4 Jun 2007 09:04:59 +0200 (CEST)
Received: from smtps02.kuleuven.be (smtpshost02.kulnet.kuleuven.be
	[134.58.240.75])
	by thumbler.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id CB12C13801A; Mon,  4 Jun 2007 09:04:57 +0200 (CEST)
Received: from smtps02.kuleuven.be (localhost [127.0.0.1])
	by smtps02.kuleuven.be (Postfix) with ESMTP id 9099DF3863;
	Mon,  4 Jun 2007 09:04:57 +0200 (CEST)
Received: from PC178 (pc-10-33-64-5.med.kuleuven.ac.be [10.33.64.5])
	by smtps02.kuleuven.be (Postfix) with SMTP id 865D5F3862;
	Mon,  4 Jun 2007 09:04:57 +0200 (CEST)
Message-ID: <007b01c7a676$bdd4a550$0540210a@www.domain>
X-Kuleuven: This mail passed the K.U.Leuven mailcluster
From: "Dimitris Rizopoulos" <dimitris.rizopoulos@med.kuleuven.be>
To: <adschai@optonline.net>
References: <e2899c0c2a1a8.4663aadf@optonline.net>
Date: Mon, 4 Jun 2007 09:05:32 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How to obtain coefficient standard error from the result
	ofpolr?
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

You need to call the summary() method to obtain the standard errors, 
e.g.,

result.plr <- polr(formula, data = mydata, method = "probit", Hess = 
TRUE)
coef(summary(result.plr))

for checking which predictors are significant you also use stepAIC() 
or the bootstrap version of it, i.e., boot.stepAIC() in the 
`bootStepAIC' package, e.g.,

library(bootStepAIC)
boot.stepAIC(result.plr, data = mydata)


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
From: <adschai@optonline.net>
To: <r-help@stat.math.ethz.ch>
Sent: Monday, June 04, 2007 8:02 AM
Subject: [R] How to obtain coefficient standard error from the result 
ofpolr?


> Hi - I am using polr. I can get a result from polr fit by calling
>
> result.plr <- polr(formula, data=mydata, method="probit");
>
> However, from the 'result.plr', how can I access standard error of 
> the estimated coefficients as well as the t statistics for each one 
> of them?
>
> What I would like to do ultimately is to see which coefficients are 
> not significant and try to refit the model again by excluding those 
> variables out. I would appreciate if anyone could give some hint on 
> this. Thank you.
>
> - adschai
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

                

a"i< cac 