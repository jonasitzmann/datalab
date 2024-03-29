From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 07:33:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EBXCL9020760
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 07:33:13 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EBWWcb022199;
	Thu, 14 Jun 2007 13:32:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE,
	SARE_URI_EQUALS autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.180])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EBW222022039
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 13:32:04 +0200
Received: by py-out-1112.google.com with SMTP id f31so881753pyh
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 04:32:01 -0700 (PDT)
Received: by 10.35.9.2 with SMTP id m2mr3022847pyi.1181820720477;
	Thu, 14 Jun 2007 04:32:00 -0700 (PDT)
Received: by 10.35.34.4 with HTTP; Thu, 14 Jun 2007 04:32:00 -0700 (PDT)
Message-ID: <dea6cb960706140432w31f6e182k7c7a4f670807c41@mail.gmail.com>
Date: Thu, 14 Jun 2007 13:32:00 +0200
From: "Christophe Pallier" <christophe@pallier.org>
To: "Booman, M" <m.booman@path.umcg.nl>
In-Reply-To: <F1204FFE7AA6E248A1BC6AB7C732F1490DA913@W3ZKHAS05.zkh.umcg.intra>
MIME-Version: 1.0
References: <mailman.12.1181815206.19860.r-help@stat.math.ethz.ch>
	<F1204FFE7AA6E248A1BC6AB7C732F1490DA913@W3ZKHAS05.zkh.umcg.intra>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Wilcoxon test on data matrix
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

   wilcox.test(data.matrix[i,] ~ data.cl)$p.value

will return the p.value for row 'i'.

With a loop:

   pv = rep(0,42)
   for (i in 1:42) { pv[i]=wilcox.test(data.matrix[i,] ~ data.cl)$p.value }

Is this what you wanted?

Christophe




On 6/14/07, Booman, M <m.booman@path.umcg.nl> wrote:
>
> Dear everyone,
> I am trying to do a Wilcoxon one-sided test on my gene expression data.
> These are the data i have in R:
> data.matrix (matrix, numeric) containing all gene expression data (42
> rows=genes,  42 columns=tumors), no column header or row names
> data.cl (vector, numeric) consisting of 42 0's and 1's to indicate class 0
> or class 1 for each column in data.matrix
>
> I want to do a Wilcoxon one-sided test on the data from class 0 versus the
> data from class 1, for each row (gene) of the data set.
> My first try:
>
> #to make separate matrices for both classes:
> data.matrix.0 <- data.matrix[,data.cl==0]
> data.matrix.1 <- data.matrix[,data.cl==1]
>
> # to run the wilcox.test function for each row:
> rawp <- apply(data.matrix.0, 1, wilcox.test, y=data.matrix.1,
> alternative="less")
>
>
> The result of printing rawp is:
> $`1`
>
>         Wilcoxon rank sum test with continuity correction
>
> data:  newX[, i] and data.matrix.1
> W = 7585, p-value = 1
> alternative hypothesis: true location shift is less than 0
>
>
> $`2`
>
>         Wilcoxon rank sum test with continuity correction
>
> data:  newX[, i] and data.matrix.1
> W = 6700, p-value = 0.9983
> alternative hypothesis: true location shift is less than 0
>
>
> Etcetera for each row of the data matrix.
> I can get the p value for one row (gene) using:
> rawp.1 <- rawp$'1'$p.value
>
> But how can I get these p-values in one list? I have tried:
> rawp <- NULL
> for (i in 1:42) {
>         a <- paste("'", i, "'", sep="")
>         rawp <- rbind(rawp, test$a$p.value)
> }
>
> but that doesn't work (no errors but rawp stays NULL)
>
> There must be an easier way to do a wilcoxon analysis on a matrix!
> I'd appreciate your help with this...
>
> Marije
>
>
> De inhoud van dit bericht is vertrouwelijk en alleen bestemd voor de
> geadresseerde(n). Anderen dan de geadresseerde mogen geen gebruik maken van
> dit bericht, het openbaar maken of op enige wijze verspreiden of
> vermenigvuldigen. Het UMCG kan niet aansprakelijk gesteld worden voor een
> incomplete aankomst of vertraging van dit verzonden bericht.
>
> The contents of this message are confidential and only intended for the
> eyes of the addressee(s). Others than the addressee(s) are not allowed to
> use this message, to make it public or to distribute or multiply this
> message in any way. The UMCG cannot be held responsible for incomplete
> reception or delay of this transferred message.
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>


-- 
Christophe Pallier (http://www.pallier.org)

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

hJe 