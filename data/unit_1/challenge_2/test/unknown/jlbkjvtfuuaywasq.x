From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 19:36:13 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FNaCL9007830
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 19:36:13 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FNZWq1018090;
	Sat, 16 Jun 2007 01:35:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.236])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FNRBeh014576
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 01:27:12 +0200
Received: by nz-out-0506.google.com with SMTP id o37so934661nzf
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 16:27:11 -0700 (PDT)
Received: by 10.142.110.3 with SMTP id i3mr182764wfc.1181950030654;
	Fri, 15 Jun 2007 16:27:10 -0700 (PDT)
Received: by 10.143.155.18 with HTTP; Fri, 15 Jun 2007 16:27:10 -0700 (PDT)
Message-ID: <eb555e660706151627l22740b1fuc3f055693733dc20@mail.gmail.com>
Date: Fri, 15 Jun 2007 16:27:10 -0700
From: "Deepayan Sarkar" <deepayan.sarkar@gmail.com>
To: "Philipp Benner" <pbenner@uos.de>
In-Reply-To: <20070615225922.GA19996@philipp-benner.de>
MIME-Version: 1.0
Content-Disposition: inline
References: <18034.46215.223478.311352@basebud.nulle.part>
	<eb555e660706151223p1d1f45e9j2dc835b3bec9e242@mail.gmail.com>
	<20070615225922.GA19996@philipp-benner.de>
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

On 6/15/07, Philipp Benner <pbenner@uos.de> wrote:
>
> Thanks for your explanation!
>
> > With this in mind, either of the following might do what you want:
> >
> > badFunction <- function(mydata, myformula) {
> >    mydata$myweight <- abs(rnorm(nrow(mydata)))
> >    hyp <-
> >        rpart(myformula,
> >              data=mydata,
> >              weights=myweight,
> >              method="class")
> >    prev <- hyp
> > }
> >
> >
> > badFunction <- function(mydata, myformula) {
> >    myweight <- abs(rnorm(nrow(mydata)))
> >    environment(myformula) <- environment()
> >    hyp <-
> >        rpart(myformula,
> >              data=mydata,
> >              weights=myweight,
> >              method="class")
> >    prev <- hyp
> > }
>
> OK, this is what I have now:
>
> adaboostBad <- function(formula, data) {
>   ## local definition of the weight vector (won't work because pima.formula is not defined within this function)
>   w <- abs(rnorm(nrow(data)))
>   rpart(formula, data=data, weights=w)
> }
>
> adaboostGood <- function(formula, data) {
>   ## create weight vector in the data object
>   data$w <- abs(rnorm(nrow(data)))
>   rpart(formula, data=data, weights=w)
> }
>
> adaboostBest <- function(formula, data) {
>   ## associate the current environment (this function's one) with the object `formula'
>   environment(formula) <- environment()
>   w <- abs(rnorm(nrow(data)))
>   rpart(formula, data=data, weights=w)
> }
>


> As far as I understand this non-standard evaluation stuff,
> adaboostGood() and adaboostBest() are the only two possibilities to
> call rpart() with weight vectors. Now suppose that I don't know what
> `data' contains and suppose further that it already contains a
> column called `w'.  adaboostGood() would overwrite that column with
> new data which is then used as weight vector and as training data
> for rpart(). adaboostBest() would just use the wrong data as weight
> vector as it finds data$w before the real weight vector. So, in both
> cases I have to check for `names(data) == "w"` and stop if TRUE? Or
> is there a better way?

Well, that depends on what you want to happen when there is a column
called 'w' in data.  I don't see a situation where it makes sense to
use data$w as weights ('w' is just a name you happen to choose inside
adaboostBest), so I would just go with adaboostGood.

In case you are worried about overwriting the original data, that may
not be happening in the sense you are thinking.  When you say

data$w <- abs(rnorm(nrow(data)))

inside adaboostGood, that modifies a local copy of the data argument,
not the original (R argument semantics are call by value, not call by
reference).  You are losing data$w in the local copy in your function,
but why would you care if you are not using it anyway.

Of course, if your formula contains a reference to 'w' then you will
get wrong results, so checking for a unique name is always safer.
In addition, use an obfuscated name like '.__myWeights' instead
of 'w', and the check will be almost always irrelevant.

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



htIT   M