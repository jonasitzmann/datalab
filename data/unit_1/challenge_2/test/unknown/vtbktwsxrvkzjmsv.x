From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 04:51:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D8p5L9005629
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 04:51:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D8oPhR009536;
	Wed, 13 Jun 2007 10:50:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from nx5.hrz.uni-dortmund.de (nx5.HRZ.Uni-Dortmund.DE
	[129.217.131.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D8i6G0007339
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 10:44:06 +0200
Received: from mail.statistik.uni-dortmund.de (mail.Statistik.Uni-Dortmund.DE
	[129.217.206.4])
	by nx5.hrz.uni-dortmund.de (Postfix) with ESMTP id AF5D211FF7;
	Wed, 13 Jun 2007 10:44:06 +0200 (MET DST)
Received: from [129.217.207.201] (ligges2.fb05.statistik.uni-dortmund.de
	[129.217.207.201])
	by mail.statistik.uni-dortmund.de (Postfix) with ESMTP id D2B1935C9D3; 
	Wed, 13 Jun 2007 10:44:01 +0200 (CEST)
Message-ID: <466FADED.9020708@statistik.uni-dortmund.de>
Date: Wed, 13 Jun 2007 10:42:21 +0200
From: Uwe Ligges <ligges@statistik.uni-dortmund.de>
Organization: Fachbereich Statistik, =?ISO-8859-1?Q?Universit=E4t_Dortm?=
	=?ISO-8859-1?Q?und?=
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.8.1.4) Gecko/20070509 SeaMonkey/1.1.2
MIME-Version: 1.0
To: "Patnaik, Tirthankar " <tirthankar.patnaik@citi.com>
References: <6E2AF71DA2E3F241A66122F3F90F32140DB2A9@exinmb04-bkp.apac.nsroot.net>
In-Reply-To: <6E2AF71DA2E3F241A66122F3F90F32140DB2A9@exinmb04-bkp.apac.nsroot.net>
X-FB05-MailScanner: clean
X-FB05-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (Wertung=-4.396, benoetigt 4.5, autolearn=disabled,
	ALL_TRUSTED -3.30, BAYES_40 -1.10)
X-FB05-MailScanner-From: ligges@statistik.uni-dortmund.de
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



Patnaik, Tirthankar wrote:
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
>> mydate <- as.Date("2006-01-01")
>>
>> # Function to shift non-March company-reporting dates to March.
>> Set2March <- function(xdate){
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
>> Set2March(as.Date("2006-06-30"))
> [1] "2006-03-31"
>> Set2March(mydate)
> [1] "2006-01-31"
> Warning message:
> No Changes made to the month, since month is not one of (6,9,12) in:
> Set2March(mydate) 
> 
> Works well when I use it on a single date. Then I try it on a vector:
> 
> 
>> dc <- seq(as.Date("2006-01-01"),len=10, by="month")
>> dc
>  [1] "2006-01-01" "2006-02-01" "2006-03-01" "2006-04-01" "2006-05-01"
> "2006-06-01" "2006-07-01" "2006-08-01"
>  [9] "2006-09-01" "2006-10-01"
> 
> 
>> sapply(as.vector(dc),Set2March)
> Error in prettyNum(.Internal(format(x, trim, digits, nsmall, width, 3,
> : 
>         unimplemented type 'character' in 'asLogical'
> 
> What am I missing here? Shouldn't the function work with the sapply
> working on each entry?


1. Your code is not reproducible. Which packages are required? chron? 
But then, I still do not have as.yearmon()!
2. Why do you use as.vector() in the sapply call? I doubt it can work 
that way, because as.vector strips the attributes!


Uwe Ligges



> 
> TIA and best,
> -Tir
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

TBIviesc