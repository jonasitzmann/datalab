From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 17:43:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58LhlL9001982
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 17:43:48 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58Jxwgq005122;
	Fri, 8 Jun 2007 22:00:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, MSGID_FROM_MTA_HEADER,
	STOX_REPLY_TYPE autolearn=no version=3.2.0
Received: from bay0-omc2-s30.bay0.hotmail.com (bay0-omc2-s30.bay0.hotmail.com
	[65.54.246.166])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58JlNjj032662
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 21:47:26 +0200
Received: from hotmail.com ([64.4.38.83]) by bay0-omc2-s30.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Fri, 8 Jun 2007 12:47:22 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Fri, 8 Jun 2007 12:47:22 -0700
Message-ID: <BAY116-DAV11E90F83D6AB5109C03646CF250@phx.gbl>
Received: from 205.141.66.16 by BAY116-DAV11.phx.gbl with DAV;
	Fri, 08 Jun 2007 19:47:22 +0000
X-Originating-IP: [205.141.66.16]
X-Originating-Email: [jasoncbarnhart@msn.com]
X-Sender: jasoncbarnhart@msn.com
From: "Jason Barnhart" <jasoncbarnhart@msn.com>
To: "John Kane" <jrkrideau@yahoo.ca>, "R R-help" <r-help@stat.math.ethz.ch>
References: <990.61035.qm@web32809.mail.mud.yahoo.com>
Date: Fri, 8 Jun 2007 12:47:20 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2670
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2962
X-OriginalArrivalTime: 08 Jun 2007 19:47:22.0799 (UTC)
	FILETIME=[D4F8EBF0:01C7AA05]
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

na.last belongs to order().

?order shows
    "na.last for controlling the treatment of NAs. If TRUE,
    missing values in the data are put last; if FALSE, they are
    put first; if NA, they are removed."

----- Original Message ----- 
From: "John Kane" <jrkrideau@yahoo.ca>
To: "Jason Barnhart" <jasoncbarnhart@msn.com>; "R R-help" 
<r-help@stat.math.ethz.ch>
Sent: Friday, June 08, 2007 7:35 AM
Subject: Re: [R] character to time problem


>
> --- Jason Barnhart <jasoncbarnhart@msn.com> wrote:
>
>> Hi John,
>>
>> a) The NA appears because '30/02/1995' is not a
>> valid date.
>>
>>     > strptime('30/02/1995' , "%d/%m/%Y")
>>     [1] NA
>>
>
> I knew we should never have moved to the Gregorian
> Calender!
>
> Thanks.  I accidently made up the date but this means
> that I have some invalid dates in the file. Not a
> problem now I know what's happening. And our contract
> says someone else gets to fix them :)
>
>> b) dates which has the following classes uses
>> sort.POSIXlt which in
>> turns sets na.last to NA.  ?order details how NA's
>> are handled in
>> ordering data via na.last.
>>
>>     > class(dates)
>>     [1] "POSIXt"  "POSIXlt"
>>
>>     > methods(sort)
>>     [1] sort.default sort.POSIXlt
>>
>>     > sort.POSIXlt
>>     function (x, decreasing = FALSE, na.last = NA,
>> ...)
>>     x[order(as.POSIXct(x), na.last = na.last,
>> decreasing =
>> decreasing)]
>>     <environment: namespace:base>
>>
>> After resetting the Feb. date the code works.
>>
>> HTH,
>> -jason
>>
>
> So it does.
>
> I had not thought to look at the sort.POSIXlt
> function.  I don't quite understand what na.last is
> doing and don't seem to see the documentation.  Is it
> sorting the NA's to the last place(s) in the vector
> and then dropping them?
>
> Thanks again
>
>> ----- Original Message ----- 
>> From: "John Kane" <jrkrideau@yahoo.ca>
>> To: "R R-help" <r-help@stat.math.ethz.ch>
>> Sent: Thursday, June 07, 2007 2:17 PM
>> Subject: [R] character to time problem
>>
>>
>> >I am trying to clean up some dates and I am clearly
>> > doing something wrong.  I have laid out an example
>> > that seems to show what is happening with the
>> "real"
>> > data.  The  coding is lousy but it looks like it
>> > should have worked.
>> >
>> > Can anyone suggest a) why I am getting that NA
>> > appearing after the strptime() command and b) why
>> the
>> > NA is disappearing in the sort()? It happens with
>> > na.rm=TRUE  and na.rm=FALSE
>> > -------------------------------------------------
>> > aa  <- data.frame( c("12/05/2001", " ",
>> "30/02/1995",
>> > NA, "14/02/2007", "M" ) )
>> > names(aa)  <- "times"
>> > aa[is.na(aa)] <- "M"
>> > aa[aa==" "]  <- "M"
>> > bb <- unlist(subset(aa, aa[,1] !="M"))
>> > dates <- strptime(bb, "%d/%m/%Y")
>> > dates
>> > sort(dates)
>> > --------------------------------------------------
>> >
>> > Session Info
>> > R version 2.4.1 (2006-12-18)
>> > i386-pc-mingw32
>> >
>> > locale:
>> > LC_COLLATE=English_Canada.1252;
>> > LC_CTYPE=English_Canada.1252;
>> > LC_MONETARY=English_Canada.1252;
>> > LC_NUMERIC=C;LC_TIME=English_Canada.1252
>> >
>> > attached base packages:
>> > [1] "stats"     "graphics"  "grDevices" "utils"
>> > "datasets"  "methods"   "base"
>> >
>> > other attached packages:
>> >  gdata   Hmisc
>> > "2.3.1" "3.3-2"
>> >
>> > (Yes I know I'm out of date but I don't like
>> > upgrading just as I am finishing a project)
>> >
>> > Thanks
>> >
>> > ______________________________________________
>> > R-help@stat.math.ethz.ch mailing list
>> > https://stat.ethz.ch/mailman/listinfo/r-help
>> > PLEASE do read the posting guide
>> > http://www.R-project.org/posting-guide.html
>> > and provide commented, minimal, self-contained,
>> reproducible code.
>> >
>>
>>
>
>
>
>      Ask a question on any topic and get answers from real people. 
> Go to Yahoo! Answers and share what you know at 
> http://ca.answers.yahoo.com
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

Wr
be.csl