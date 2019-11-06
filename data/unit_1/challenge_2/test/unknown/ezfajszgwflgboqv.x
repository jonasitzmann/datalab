From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 20:17:18 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l650HHL9019032
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 20:17:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l650FXWg031366;
	Thu, 5 Jul 2007 02:15:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wx-out-0506.google.com (wx-out-0506.google.com [66.249.82.227])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l650FQxV031318
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 02:15:27 +0200
Received: by wx-out-0506.google.com with SMTP id i28so2205587wxd
	for <r-help@stat.math.ethz.ch>; Wed, 04 Jul 2007 17:15:26 -0700 (PDT)
Received: by 10.142.157.15 with SMTP id f15mr548284wfe.1183594525655;
	Wed, 04 Jul 2007 17:15:25 -0700 (PDT)
Received: by 10.143.156.19 with HTTP; Wed, 4 Jul 2007 17:15:25 -0700 (PDT)
Message-ID: <eb555e660707041715j4e0906f2i93e03fbb77104284@mail.gmail.com>
Date: Wed, 4 Jul 2007 17:15:25 -0700
From: deepayan.sarkar@gmail.com
To: "Martin Morgan" <mtmorgan@fhcrc.org>
In-Reply-To: <6phy7hv3kdl.fsf@gopher4.fhcrc.org>
MIME-Version: 1.0
Content-Disposition: inline
References: <11435994.post@talk.nabble.com> <468BF958.9060102@biostat.ku.dk>
	<6phy7hv3kdl.fsf@gopher4.fhcrc.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, mfrumin <michael@frumin.net>
Subject: Re: [R] Lookups in R
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

On 7/4/07, Martin Morgan <mtmorgan@fhcrc.org> wrote:
> Michael,
>
> A hash provides constant-time access, though the resulting perl-esque
> data structures (a hash of lists, e.g.) are not convenient for other
> manipulations
>
> > n_accts <- 10^3
> > n_trans <- 10^4
> > t <- list()
> > t$amt <- runif(n_trans)
> > t$acct <- as.character(round(runif(n_trans, 1, n_accts)))
> >
> > uhash <- new.env(hash=TRUE, parent=emptyenv(), size=n_accts)
> > ## keys, presumably account ids
> > for (acct in as.character(1:n_accts)) uhash[[acct]] <- list(amt=0, n=0)
> >
> > system.time(for (i in seq_along(t$amt)) {
> +     acct <- t$acct[i]
> +     x <- uhash[[acct]]
> +     uhash[[acct]] <- list(amt=x$amt + t$amt[i], n=x$n + 1)
> + })
>    user  system elapsed
>   0.264   0.000   0.262
> > udf <- data.frame(amt=0, n=rep(0L, n_accts),
> +                   row.names=as.character(1:n_accts))
> > system.time(for (i in seq_along(t$amt)) {
> +     idx <- row.names(udf)==t$acct[i]
> +     udf[idx, ] <- c(udf[idx,"amt"], udf[idx, "n"]) + c(t$amt[i], 1)
> + })
>    user  system elapsed
>  18.398   0.000  18.394

I don't think that's a fair comparison--- much of the overhead comes
from the use of data frames and the creation of the indexing vector. I
get

> n_accts <- 10^3
> n_trans <- 10^4
> t <- list()
> t$amt <- runif(n_trans)
> t$acct <- as.character(round(runif(n_trans, 1, n_accts)))
> uhash <- new.env(hash=TRUE, parent=emptyenv(), size=n_accts)
> for (acct in as.character(1:n_accts)) uhash[[acct]] <- list(amt=0, n=0)
> system.time(for (i in seq_along(t$amt)) {
+     acct <- t$acct[i]
+     x <- uhash[[acct]]
+     uhash[[acct]] <- list(amt=x$amt + t$amt[i], n=x$n + 1)
+ }, gcFirst = TRUE)
   user  system elapsed
  0.508   0.008   0.517
> udf <- matrix(0, nrow = n_accts, ncol = 2)
> rownames(udf) <- as.character(1:n_accts)
> colnames(udf) <- c("amt", "n")
> system.time(for (i in seq_along(t$amt)) {
+     idx <- t$acct[i]
+     udf[idx, ] <- udf[idx, ] + c(t$amt[i], 1)
+ }, gcFirst = TRUE)
   user  system elapsed
  1.872   0.008   1.883

The loop is still going to be the problem for realistic examples.

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

nl1q/fit