From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 09:24:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DDOZL9008000
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 09:24:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DDNClI013306;
	Wed, 13 Jun 2007 15:23:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.169])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DDN3Rw013267
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 15:23:04 +0200
Received: by ug-out-1314.google.com with SMTP id 36so393640uga
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 06:23:03 -0700 (PDT)
Received: by 10.66.218.15 with SMTP id q15mr1294799ugg.1181740983648;
	Wed, 13 Jun 2007 06:23:03 -0700 (PDT)
Received: by 10.67.106.14 with HTTP; Wed, 13 Jun 2007 06:23:03 -0700 (PDT)
Message-ID: <971536df0706130623o472d5bf6i2a5649448ea12d4c@mail.gmail.com>
Date: Wed, 13 Jun 2007 09:23:03 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "Patnaik, Tirthankar" <tirthankar.patnaik@citi.com>
In-Reply-To: <6E2AF71DA2E3F241A66122F3F90F32140DB2A9@exinmb04-bkp.apac.nsroot.net>
MIME-Version: 1.0
Content-Disposition: inline
References: <6E2AF71DA2E3F241A66122F3F90F32140DB2A9@exinmb04-bkp.apac.nsroot.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Confusion with sapply
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

Try this. It takes a Date class date and in the first line month.day.year
converts unclass(x) to chron.  In the last line of the function we convert
back to Date class.  Its already vectorized so sapply is unneeded:

library(chron)
f <- function(x) with(month.day.year(unclass(x)), {
	month <- ifelse(month == 6 | month == 9, 3, month)
	year <- ifelse(month == 12, year + 1, year)
	as.Date(paste(year, month, day, sep = "-"))
})

Running the last line gives:

> # test
> f(seq(Sys.Date(), length = 12, by = "month"))
 [1] "2007-03-13" "2007-07-13" "2007-08-13" "2007-03-13" "2007-10-13"
 [6] "2007-11-13" "2008-12-13" "2008-01-13" "2008-02-13" "2008-03-13"
[11] "2008-04-13" "2008-05-13"


On 6/13/07, Patnaik, Tirthankar <tirthankar.patnaik@citi.com> wrote:
> Hi,
>  I have some confusion in applying a function over a column.
>
> Here's my function. I just need to shift non-March month-ends to March
> month-ends. Initially I tried seq.dates, but one cannot give a negative
> increment (decrement) here.
>
> return(as.Date(seq.dates(format(xdate,"%m/%d/%Y"),by="months",len=4)[4])
> )
>
> Hence this simple function:
>
> > mydate <- as.Date("2006-01-01")
> >
> > # Function to shift non-March company-reporting dates to March.
> > Set2March <- function(xdate){
> + # Combines non-March months into March months:
> + # Dec2006 -> Mar2007
> + # Mar2006 -> Mar2006
> + # Jun2006 -> Mar2006
> + # Sep2006 -> Mar2006
> + # VERY Specific code.
> +     Month <- format(xdate,"%m")
> +     wDate <- month.day.year(julian(xdate))
> +     if (Month=="12"){
> +         wDate$year <- wDate$year + 1
> +         wDate$month <- 3
> +     }else
> +     if (Month=="06"){
> +         wDate$month <- 3
> +     }else
> +     if (Month=="09"){
> +         wDate$month <- 3
> +         wDate$day <- wDate$day + 1
> +     }else warning ("No Changes made to the month, since month is not
> one of (6,9,12)")
> +     cDate <- chron(paste(wDate$month,wDate$day,wDate$year,sep="/"))
> +     return(as.Date(as.yearmon(as.Date(cDate,"%m/%d/%y")),frac=1))
> + }
> > Set2March(as.Date("2006-06-30"))
> [1] "2006-03-31"
> > Set2March(mydate)
> [1] "2006-01-31"
> Warning message:
> No Changes made to the month, since month is not one of (6,9,12) in:
> Set2March(mydate)
> >
>
> Works well when I use it on a single date. Then I try it on a vector:
>
>
> > dc <- seq(as.Date("2006-01-01"),len=10, by="month")
> > dc
>  [1] "2006-01-01" "2006-02-01" "2006-03-01" "2006-04-01" "2006-05-01"
> "2006-06-01" "2006-07-01" "2006-08-01"
>  [9] "2006-09-01" "2006-10-01"
>
>
> > sapply(as.vector(dc),Set2March)
> Error in prettyNum(.Internal(format(x, trim, digits, nsmall, width, 3,
> :
>        unimplemented type 'character' in 'asLogical'
> >
>
> What am I missing here? Shouldn't the function work with the sapply
> working on each entry?
>
>
> TIA and best,
> -Tir
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

                 

fxTf7G