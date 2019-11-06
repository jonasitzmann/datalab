From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 09:51:19 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EDpHL9022393
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 09:51:18 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EDoWRI008351;
	Thu, 14 Jun 2007 15:50:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EDfkTb004496
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 15:41:46 +0200
Received: by wa-out-1112.google.com with SMTP id j37so708672waf
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 06:41:45 -0700 (PDT)
Received: by 10.114.81.1 with SMTP id e1mr1821803wab.1181828505478;
	Thu, 14 Jun 2007 06:41:45 -0700 (PDT)
Received: by 10.141.162.12 with HTTP; Thu, 14 Jun 2007 06:41:45 -0700 (PDT)
Message-ID: <c968588d0706140641x3c81fe65u42ffb1de53980a7@mail.gmail.com>
Date: Thu, 14 Jun 2007 08:41:45 -0500
From: "Kevin Wright" <kw.statr@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: gkotler@rics.bwh.harvard.edu
Subject: [R] Confidence interval for coefficient of variation
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

This is a function I coded a few years ago to calculate a confidence
interval for a coefficient of variation.  The code is based on a paper
by Mark Vangel in The American Statistician.  I have not used the
function much, but it could be useful for comparing cv's from
different groups.

Kevin Wright


confint.cv <- function(x,alpha=.05, method="modmckay"){
  # Calculate the confidence interval of the cv of the vector x
  # Author: Kevin Wright
  # See: Vangel, Mark.  Confidence Intervals for a Normal Coefficient
  # of Variation. American Statistician, Vol 15, No1, p. 21--26.
  # x <- c(326,302,307,299,329)
  # confint.cv(x,.05,"modmckay")

  x <- na.omit(x)
  v <- length(x)-1
  mu <- mean(x)
  sigma <- sqrt(var(x))
  k <- sigma/mu
  # CV > .33 may give poor results, so warn the user
  if(k>.33) warning("Confidence interval may be very approximate.")

  method <- casefold(method) # In case we see "McKay"

  if(method=="mckay"){
    # McKay method.  See equation 15.
    t1 <- qchisq(1-alpha/2,v)/v
    t2 <- qchisq(alpha/2,v)/v
    u1 <- v*t1
    u2 <- v*t2
    lower <- k/sqrt(( u1/(v+1) -1)*k*k + u1/v)
    upper <- k/sqrt(( u2/(v+1) -1)*k*k + u2/v)
  } else if (method=="naive"){
    # Naive method.  See equation 17.
    t1 <- qchisq(1-alpha/2,v)/v
    t2 <- qchisq(alpha/2,v)/v
    lower <- k/sqrt(t1)
    upper <- k/sqrt(t2)
  } else {
    # Modified McKay method. See equation 16.
    u1 <- qchisq(1-alpha/2,v)
    u2 <- qchisq(alpha/2,v)
    lower <- k/sqrt(( (u1+2)/(v+1) -1)*k*k + u1/v)
    upper <- k/sqrt(( (u2+2)/(v+1) -1)*k*k + u2/v)
  }
  ci <- c(lower,upper)
  attr(ci,"CV") <- k
  attr(ci,"alpha") <- alpha
  return(ci)
}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

e>e sHE m6Ji