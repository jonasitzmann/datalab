From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 10:43:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58EhshB016535
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 10:43:55 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58Eh5pc011911;
	Fri, 8 Jun 2007 16:43:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32809.mail.mud.yahoo.com (web32809.mail.mud.yahoo.com
	[68.142.206.39])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l58EZWLD008446
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 16:35:33 +0200
Received: (qmail 61384 invoked by uid 60001); 8 Jun 2007 14:35:32 -0000
X-YMail-OSG: lZu3IcEVM1mlNAs1sz5BdhtAt7YHBbSKqr2m1jk.6VZ_SBzEMPKTSgLH8PreGaKqD1JiDF7lEoYldKzgbfiJjLuNtZkLOBKU0s7KxQjWXHbLzJXBmw8-
Received: from [130.15.106.174] by web32809.mail.mud.yahoo.com via HTTP;
	Fri, 08 Jun 2007 10:35:31 EDT
Date: Fri, 8 Jun 2007 10:35:31 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: Jason Barnhart <jasoncbarnhart@msn.com>,
   R R-help <r-help@stat.math.ethz.ch>
In-Reply-To: <BAY116-DAV8394EF8D7EA66D218CE96CF260@phx.gbl>
MIME-Version: 1.0
Message-ID: <990.61035.qm@web32809.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] character to time problem
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


--- Jason Barnhart <jasoncbarnhart@msn.com> wrote:

> Hi John,
> 
> a) The NA appears because '30/02/1995' is not a
> valid date.
> 
>     > strptime('30/02/1995' , "%d/%m/%Y")
>     [1] NA
>

I knew we should never have moved to the Gregorian
Calender!  

Thanks.  I accidently made up the date but this means
that I have some invalid dates in the file. Not a
problem now I know what's happening. And our contract
says someone else gets to fix them :)

> b) dates which has the following classes uses
> sort.POSIXlt which in 
> turns sets na.last to NA.  ?order details how NA's
> are handled in 
> ordering data via na.last.
> 
>     > class(dates)
>     [1] "POSIXt"  "POSIXlt"
> 
>     > methods(sort)
>     [1] sort.default sort.POSIXlt
> 
>     > sort.POSIXlt
>     function (x, decreasing = FALSE, na.last = NA,
> ...)
>     x[order(as.POSIXct(x), na.last = na.last,
> decreasing = 
> decreasing)]
>     <environment: namespace:base>
> 
> After resetting the Feb. date the code works.
> 
> HTH,
> -jason
> 

So it does.  

I had not thought to look at the sort.POSIXlt
function.  I don't quite understand what na.last is
doing and don't seem to see the documentation.  Is it
sorting the NA's to the last place(s) in the vector
and then dropping them? 

Thanks again

> ----- Original Message ----- 
> From: "John Kane" <jrkrideau@yahoo.ca>
> To: "R R-help" <r-help@stat.math.ethz.ch>
> Sent: Thursday, June 07, 2007 2:17 PM
> Subject: [R] character to time problem
> 
> 
> >I am trying to clean up some dates and I am clearly
> > doing something wrong.  I have laid out an example
> > that seems to show what is happening with the
> "real"
> > data.  The  coding is lousy but it looks like it
> > should have worked.
> >
> > Can anyone suggest a) why I am getting that NA
> > appearing after the strptime() command and b) why
> the
> > NA is disappearing in the sort()? It happens with
> > na.rm=TRUE  and na.rm=FALSE
> > -------------------------------------------------
> > aa  <- data.frame( c("12/05/2001", " ",
> "30/02/1995",
> > NA, "14/02/2007", "M" ) )
> > names(aa)  <- "times"
> > aa[is.na(aa)] <- "M"
> > aa[aa==" "]  <- "M"
> > bb <- unlist(subset(aa, aa[,1] !="M"))
> > dates <- strptime(bb, "%d/%m/%Y")
> > dates
> > sort(dates)
> > --------------------------------------------------
> >
> > Session Info
> > R version 2.4.1 (2006-12-18)
> > i386-pc-mingw32
> >
> > locale:
> > LC_COLLATE=English_Canada.1252;
> > LC_CTYPE=English_Canada.1252;
> > LC_MONETARY=English_Canada.1252;
> > LC_NUMERIC=C;LC_TIME=English_Canada.1252
> >
> > attached base packages:
> > [1] "stats"     "graphics"  "grDevices" "utils"
> > "datasets"  "methods"   "base"
> >
> > other attached packages:
> >  gdata   Hmisc
> > "2.3.1" "3.3-2"
> >
> > (Yes I know I'm out of date but I don't like
> > upgrading just as I am finishing a project)
> >
> > Thanks
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide 
> > http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained,
> reproducible code.
> > 
> 
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

ykuli
".iLlS