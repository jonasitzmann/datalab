From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 07:56:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GBu6L9013449
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 07:56:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GBst4u007372;
	Sat, 16 Jun 2007 13:55:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from triton.rz.uni-saarland.de (triton.rz.uni-saarland.de
	[134.96.7.25])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GBsnmF007340
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 13:54:49 +0200
Received: from [134.96.96.42] (pc03.oeko.uni-saarland.de [134.96.96.42])
	by triton.rz.uni-saarland.de (8.12.11.20060614/8.12.10) with ESMTP id
	l5GBshm017889366; Sat, 16 Jun 2007 13:54:43 +0200 (CEST)
Message-ID: <4673CF88.4050802@mx.uni-saarland.de>
Date: Sat, 16 Jun 2007 13:54:48 +0200
From: Martin Becker <martin.becker@mx.uni-saarland.de>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Ian Gregory <ian@iangregory.com>
References: <006a01c7afb9$a88641d0$4001a8c0@jaegerdesktop>
	<4673BC1E.7070805@mx.uni-saarland.de>
	<00a001c7b00a$eec5f220$4001a8c0@jaegerdesktop>
In-Reply-To: <00a001c7b00a$eec5f220$4001a8c0@jaegerdesktop>
X-AntiVirus: checked by AntiVir Milter (version: 1.1.3-1; AVE: 7.4.0.32;
	VDF: 6.39.0.23; host: AntiVir2)
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

Line number 55 in the original mail from 2005 was a reference to 
garchOxFit (not .garchOxFit) in fSeries version 220.10063 (not 
240.10068), as mentioned in 
https://stat.ethz.ch/pipermail/r-sig-finance/2005q4/000498.html . Of 
course, in the current version of .garchOxFit, the line number has 
changed, but the line should still be there, and if .garchOxFit has less 
than 55 lines, it should be easy to find.
Does your example still work, if you don't have a variable 'x' visible 
to garchOxFit (in your environment/search path)? I suppose garchOxFit 
just uses the series stored in 'x' (in your current workspace) instead 
of 'IanSeries' (which is even worse than aborting...).

Regards,

  Martin


Ian Gregory schrieb:
> I tried the following and it works for me (after the changes to make):
>
> library(fSeries)
> data(dem2gbp)
> IanSeries = dem2gbp[, 1]
> garchOxFit(~garch(1,1),IanSeries)
>
> Any writing of data is performed in the GarchOxModelling.ox file.
> The number of lines of code in the function .garchOxFit() does not appear
> to go up to 55.  When using:  edit(garchOxFit).
>
> I get for the output from the estimation to be:
>
> .......
> .......
> Estimated Parameters Vector :
> -0.006183; 0.010761; 0.153406; 0.805877
>
>
> regards,
>
> Ian.
>
>
> ----- Original Message ----- From: "Martin Becker" 
> <martin.becker@mx.uni-saarland.de>
> To: "Ian Gregory" <ian@iangregory.com>
> Cc: <r-help@stat.math.ethz.ch>; <wuertz@itp.phys.ethz.ch>
> Sent: Saturday, June 16, 2007 8:31 PM
> Subject: Re: [R] fSeries - Ox - ver: 240.10068 - Steps to make it work
>
>
>> I think there is still a small bug which I reported some time ago to 
>> r-sig-finance 
>> (https://stat.ethz.ch/pipermail/r-sig-finance/2005q4/000498.html) and 
>> which takes effect if the time series is not stored in the variable 'x':
>>
>> The line
>>
>>    write(x, file = "OxSeries.csv", ncolumns = 1, append = TRUE)
>>
>> in .garchOxFit() (fSeries version 240.10068) should read
>>
>>    write(x = series, file = "OxSeries.csv", ncolumns = 1, append = TRUE)
>>
>> instead.
>>
>> Incorporating the changes for OX-G@RCH4.2 could be a good occasion to 
>> fix this as well :-)
>>
>> Regards,
>>
>>  Martin
>>
>>
>> Ian Gregory wrote:
>>> -Bugs and fixes reported to Diethelm Wuertz.
>>> -In the interim.  To make the Ox functions part of the fSeries 
>>> package work please follow the following steps.
>>>
>>>
>> [snip]
>>
>>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

V0 Lhaps2r0.mL k