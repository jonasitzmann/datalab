From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 19:01:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FN1KL9007582
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 19:01:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FMxYVG005949;
	Sat, 16 Jun 2007 00:59:52 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from mu-out-0910.google.com (mu-out-0910.google.com [209.85.134.188])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FMxTKO005930
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 00:59:29 +0200
Received: by mu-out-0910.google.com with SMTP id w8so1068325mue
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 15:59:29 -0700 (PDT)
Received: by 10.82.178.11 with SMTP id a11mr6697747buf.1181948368935;
	Fri, 15 Jun 2007 15:59:28 -0700 (PDT)
Received: from xindi ( [131.173.252.29])
	by mx.google.com with ESMTP id 6sm2615142nfv.2007.06.15.15.59.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Jun 2007 15:59:27 -0700 (PDT)
Received: by xindi (Postfix, from userid 1000)
	id C97371BA2; Sat, 16 Jun 2007 00:59:22 +0200 (CEST)
Date: Sat, 16 Jun 2007 00:59:22 +0200
From: Philipp Benner <pbenner@uos.de>
To: Deepayan Sarkar <deepayan.sarkar@gmail.com>
Message-ID: <20070615225922.GA19996@philipp-benner.de>
References: <18034.46215.223478.311352@basebud.nulle.part>
	<eb555e660706151223p1d1f45e9j2dc835b3bec9e242@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb555e660706151223p1d1f45e9j2dc835b3bec9e242@mail.gmail.com>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] model.frame: how does one use it?
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


Thanks for your explanation!

> With this in mind, either of the following might do what you want:
> 
> badFunction <- function(mydata, myformula) {
>    mydata$myweight <- abs(rnorm(nrow(mydata)))
>    hyp <-
>        rpart(myformula,
>              data=mydata,
>              weights=myweight,
>              method="class")
>    prev <- hyp
> }
> 
> 
> badFunction <- function(mydata, myformula) {
>    myweight <- abs(rnorm(nrow(mydata)))
>    environment(myformula) <- environment()
>    hyp <-
>        rpart(myformula,
>              data=mydata,
>              weights=myweight,
>              method="class")
>    prev <- hyp
> }

OK, this is what I have now:

adaboostBad <- function(formula, data) {
  ## local definition of the weight vector (won't work because pima.formula is not defined within this function)
  w <- abs(rnorm(nrow(data)))
  rpart(formula, data=data, weights=w)
}

adaboostGood <- function(formula, data) {
  ## create weight vector in the data object
  data$w <- abs(rnorm(nrow(data)))
  rpart(formula, data=data, weights=w)
}

adaboostBest <- function(formula, data) {
  ## associate the current environment (this function's one) with the object `formula'
  environment(formula) <- environment()
  w <- abs(rnorm(nrow(data)))
  rpart(formula, data=data, weights=w)
}

As far as I understand this non-standard evaluation stuff, adaboostGood() and adaboostBest()
are the only two possibilities to call rpart() with weight vectors. Now suppose that I don't
know what `data' contains and suppose further that it already contains a column called `w'.
adaboostGood() would overwrite that column with new data which is then used as weight vector
and as training data for rpart(). adaboostBest() would just use the wrong data as weight
vector as it finds data$w before the real weight vector. So, in both cases I have to check for
`names(data) == "w"` and stop if TRUE? Or is there a better way?

Regards

-- 
Philipp Benner

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

;doN