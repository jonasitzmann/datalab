From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 18:45:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57MjMhB008020
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 18:45:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57Mi1OM001763;
	Fri, 8 Jun 2007 00:44:12 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, MSGID_FROM_MTA_HEADER,
	STOX_REPLY_TYPE autolearn=no version=3.2.0
Received: from bay0-omc2-s33.bay0.hotmail.com (bay0-omc2-s33.bay0.hotmail.com
	[65.54.246.169])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57MhtcH001733
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 00:43:56 +0200
Received: from hotmail.com ([64.4.38.80]) by bay0-omc2-s33.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Thu, 7 Jun 2007 15:43:54 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Thu, 7 Jun 2007 15:43:55 -0700
Message-ID: <BAY116-DAV8394EF8D7EA66D218CE96CF260@phx.gbl>
Received: from 205.141.66.16 by BAY116-DAV8.phx.gbl with DAV;
	Thu, 07 Jun 2007 22:43:50 +0000
X-Originating-IP: [205.141.66.16]
X-Originating-Email: [jasoncbarnhart@msn.com]
X-Sender: jasoncbarnhart@msn.com
From: "Jason Barnhart" <jasoncbarnhart@msn.com>
To: "John Kane" <jrkrideau@yahoo.ca>, "R R-help" <r-help@stat.math.ethz.ch>
References: <603794.26626.qm@web32807.mail.mud.yahoo.com>
Date: Thu, 7 Jun 2007 15:43:48 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2670
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2962
X-OriginalArrivalTime: 07 Jun 2007 22:43:55.0155 (UTC)
	FILETIME=[54186E30:01C7A955]
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

Hi John,

a) The NA appears because '30/02/1995' is not a valid date.

    > strptime('30/02/1995' , "%d/%m/%Y")
    [1] NA

b) dates which has the following classes uses sort.POSIXlt which in 
turns sets na.last to NA.  ?order details how NA's are handled in 
ordering data via na.last.

    > class(dates)
    [1] "POSIXt"  "POSIXlt"

    > methods(sort)
    [1] sort.default sort.POSIXlt

    > sort.POSIXlt
    function (x, decreasing = FALSE, na.last = NA, ...)
    x[order(as.POSIXct(x), na.last = na.last, decreasing = 
decreasing)]
    <environment: namespace:base>

After resetting the Feb. date the code works.

HTH,
-jason

----- Original Message ----- 
From: "John Kane" <jrkrideau@yahoo.ca>
To: "R R-help" <r-help@stat.math.ethz.ch>
Sent: Thursday, June 07, 2007 2:17 PM
Subject: [R] character to time problem


>I am trying to clean up some dates and I am clearly
> doing something wrong.  I have laid out an example
> that seems to show what is happening with the "real"
> data.  The  coding is lousy but it looks like it
> should have worked.
>
> Can anyone suggest a) why I am getting that NA
> appearing after the strptime() command and b) why the
> NA is disappearing in the sort()? It happens with
> na.rm=TRUE  and na.rm=FALSE
> -------------------------------------------------
> aa  <- data.frame( c("12/05/2001", " ", "30/02/1995",
> NA, "14/02/2007", "M" ) )
> names(aa)  <- "times"
> aa[is.na(aa)] <- "M"
> aa[aa==" "]  <- "M"
> bb <- unlist(subset(aa, aa[,1] !="M"))
> dates <- strptime(bb, "%d/%m/%Y")
> dates
> sort(dates)
> --------------------------------------------------
>
> Session Info
> R version 2.4.1 (2006-12-18)
> i386-pc-mingw32
>
> locale:
> LC_COLLATE=English_Canada.1252;
> LC_CTYPE=English_Canada.1252;
> LC_MONETARY=English_Canada.1252;
> LC_NUMERIC=C;LC_TIME=English_Canada.1252
>
> attached base packages:
> [1] "stats"     "graphics"  "grDevices" "utils"
> "datasets"  "methods"   "base"
>
> other attached packages:
>  gdata   Hmisc
> "2.3.1" "3.3-2"
>
> (Yes I know I'm out of date but I don't like
> upgrading just as I am finishing a project)
>
> Thanks
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

oa8. 
hnr'e1DrY