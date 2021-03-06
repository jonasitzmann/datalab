From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 07:40:40 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GBedL9013348
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 07:40:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GBdYYU002177;
	Sat, 16 Jun 2007 13:40:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail13.syd.optusnet.com.au (mail13.syd.optusnet.com.au
	[211.29.132.194])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GBdGL3001958
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 13:39:20 +0200
Received: from jaegerdesktop (d58-110-22-116.mas8.nsw.optusnet.com.au
	[58.110.22.116])
	by mail13.syd.optusnet.com.au (8.13.1/8.13.1) with SMTP id
	l5GBcns0031872; Sat, 16 Jun 2007 21:38:50 +1000
Message-ID: <00a001c7b00a$eec5f220$4001a8c0@jaegerdesktop>
From: "Ian Gregory" <ian@iangregory.com>
To: "Martin Becker" <martin.becker@mx.uni-saarland.de>
References: <006a01c7afb9$a88641d0$4001a8c0@jaegerdesktop>
	<4673BC1E.7070805@mx.uni-saarland.de>
Date: Sat, 16 Jun 2007 21:38:57 +1000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.3790.2929
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.2929
X-Antivirus: avast! (VPS 000749-1, 15/06/2007), Outbound message
X-Antivirus-Status: Clean
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] fSeries - Ox - ver: 240.10068 - Steps to make it work
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

I tried the following and it works for me (after the changes to make):

library(fSeries)
data(dem2gbp)
IanSeries = dem2gbp[, 1]
garchOxFit(~garch(1,1),IanSeries)

Any writing of data is performed in the GarchOxModelling.ox file.
The number of lines of code in the function .garchOxFit() does not appear
to go up to 55.  When using:  edit(garchOxFit).

I get for the output from the estimation to be:

.......
.......
Estimated Parameters Vector :
-0.006183; 0.010761; 0.153406; 0.805877


regards,

Ian.


----- Original Message ----- 
From: "Martin Becker" <martin.becker@mx.uni-saarland.de>
To: "Ian Gregory" <ian@iangregory.com>
Cc: <r-help@stat.math.ethz.ch>; <wuertz@itp.phys.ethz.ch>
Sent: Saturday, June 16, 2007 8:31 PM
Subject: Re: [R] fSeries - Ox - ver: 240.10068 - Steps to make it work


>I think there is still a small bug which I reported some time ago to 
>r-sig-finance 
>(https://stat.ethz.ch/pipermail/r-sig-finance/2005q4/000498.html) and which 
>takes effect if the time series is not stored in the variable 'x':
>
> The line
>
>    write(x, file = "OxSeries.csv", ncolumns = 1, append = TRUE)
>
> in .garchOxFit() (fSeries version 240.10068) should read
>
>    write(x = series, file = "OxSeries.csv", ncolumns = 1, append = TRUE)
>
> instead.
>
> Incorporating the changes for OX-G@RCH4.2 could be a good occasion to fix 
> this as well :-)
>
> Regards,
>
>  Martin
>
>
> Ian Gregory wrote:
>> -Bugs and fixes reported to Diethelm Wuertz.
>> -In the interim.  To make the Ox functions part of the fSeries package 
>> work please follow the following steps.
>>
>>
> [snip]
>
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

0+oA k=B <vigTeh