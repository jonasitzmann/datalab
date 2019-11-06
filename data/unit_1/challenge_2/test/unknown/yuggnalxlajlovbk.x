From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 21:53:17 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l551rGhB002623
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 21:53:16 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l551qkUm011420;
	Tue, 5 Jun 2007 03:52:52 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.171])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l551qdNF011380
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 03:52:39 +0200
Received: by ug-out-1314.google.com with SMTP id 36so36582uga
	for <r-help@stat.math.ethz.ch>; Mon, 04 Jun 2007 18:52:39 -0700 (PDT)
Received: by 10.67.48.6 with SMTP id a6mr74651ugk.1181008359462;
	Mon, 04 Jun 2007 18:52:39 -0700 (PDT)
Received: by 10.67.29.11 with HTTP; Mon, 4 Jun 2007 18:52:39 -0700 (PDT)
Message-ID: <971536df0706041852p6b542120v6679963c12a6c35@mail.gmail.com>
Date: Mon, 4 Jun 2007 21:52:39 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "Anup Nandialath" <anup_nandialath@yahoo.com>
In-Reply-To: <421980.2899.qm@web53310.mail.re2.yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <421980.2899.qm@web53310.mail.re2.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Help with conditional lagging of data
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

Seems you want to diff X, not lag it.

We can either maintain the long form of the data and do it as in #1
or convert the data to "wide" form and do it as in #2 which is most
convenient using zoo where we make the individual time series into
zoo series, merge them and then apply diff:


Lines <- "ID     Year     X
AB12   2000    100
AB12   2001    120
AB12   2002    140
AB12   2003    80
BL14   2000    180
BL14   2001    150
CR93   2000    45
CR93   2001    49
CR93   2002    56
CR93   2003    67
"
DF <- read.table(textConnection(Lines), header = TRUE)

# 1
f <- function(DF) cbind(DF[,1:2], diff = c(NA, diff(DF$X)))
DF.by <- by(DF, DF$ID, f)
do.call("rbind", DF.by)

# 2
library(zoo)
fz <- function(DF) zoo(DF$X, DF$Year)
diff(do.call("merge", by(DF, DF$ID, fz)), na.pad = TRUE)

For more info on zoo:
library(zoo)
vignette("zoo")

On 6/4/07, Anup Nandialath <anup_nandialath@yahoo.com> wrote:
> Dear Friends,
>
> I have some data with three columns named ID, Year and Measure X. I need to create a column which gives me a lag for each ID (note not a continous lag), but a lag conditional on the id and the given year. Please find below a sample of the data
>
> Input file sample
>
> ID     Year     X
>
> AB12   2000    100
> AB12   2001    120
> AB12   2002    140
> AB12   2003    80
> BL14   2000    180
> BL14   2001    150
> CR93   2000    45
> CR93   2001    49
> CR93   2002    56
> CR93   2003    67
>
> Expected output from this data
>
> ID     Year   Xlag
> AB12   2000     .
> AB12   2001   20
> AB12   2002   20
> AB12   2003   -60
> BL12   2000    .
> BL14   2001   -30
> CR93   2000     .
> CR93   2001     5
> CR93   2002     7
> CR93   2003     9
>
> Can somebody please help me with how to implement this in R. Thanks.
>
> Sincerely
>
> Anup
>
>
>
> ---------------------------------
> Looking for a deal? Find great prices on flights and hotels with Yahoo! FareChase.
>        [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

r2Doss/a Te4