From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 04:29:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D8TQL9005432
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 04:29:27 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D8SLGr032657;
	Wed, 13 Jun 2007 10:29:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from nx5.hrz.uni-dortmund.de (nx5.HRZ.Uni-Dortmund.DE
	[129.217.131.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D8JskN028613
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 10:19:55 +0200
Received: from mail.statistik.uni-dortmund.de (mail.Statistik.Uni-Dortmund.DE
	[129.217.206.4])
	by nx5.hrz.uni-dortmund.de (Postfix) with ESMTP id 8268911FD4;
	Wed, 13 Jun 2007 10:19:54 +0200 (MET DST)
Received: from [129.217.207.201] (ligges2.fb05.statistik.uni-dortmund.de
	[129.217.207.201])
	by mail.statistik.uni-dortmund.de (Postfix) with ESMTP id 992E635C973; 
	Wed, 13 Jun 2007 10:19:50 +0200 (CEST)
Message-ID: <466FA841.1050800@statistik.uni-dortmund.de>
Date: Wed, 13 Jun 2007 10:18:09 +0200
From: Uwe Ligges <ligges@statistik.uni-dortmund.de>
Organization: Fachbereich Statistik, =?ISO-8859-1?Q?Universit=E4t_Dortm?=
	=?ISO-8859-1?Q?und?=
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.8.1.4) Gecko/20070509 SeaMonkey/1.1.2
MIME-Version: 1.0
To: Matthew Keller <mckellercran@gmail.com>
References: <3f547caa0706121037i4e295920m75940b175e01a852@mail.gmail.com>
In-Reply-To: <3f547caa0706121037i4e295920m75940b175e01a852@mail.gmail.com>
X-FB05-MailScanner: clean
X-FB05-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (Wertung=-4.396, benoetigt 4.5, autolearn=disabled,
	ALL_TRUSTED -3.30, BAYES_40 -1.10)
X-FB05-MailScanner-From: ligges@statistik.uni-dortmund.de
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R list <r-help@stat.math.ethz.ch>
Subject: Re: [R] Cause of error message in cov function?
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



Matthew Keller wrote:
> Hi all,
> 
> I have written a script in R that simulates genetically informative
> data - it is posted on my website and available to the public. This is
> my first time to write a script for use by others and am learning that
> it isn't as easy as it seems.
> 
> To the issue. My script runs fine on my machine and on a server I have
> access to, but a user has written me saying that it crashes the first
> time the function "cov" is called up. Below is her error message
> followed by the version of R she's using.
> 
> Can anyone help me out here? I can't recreate her error message. Does
> anyone know what this might have to do with? Is it a version issue
> (she's using R 2.1)? I'd appreciate any help!!

It may be a version issue, but hard to say since we do not know what 
effects.cur() is, not do we have any data to reproduce this.

Uwe Ligges


> Matt
> 
> 
> ERROR MESSAGE:
> 
> cov.varcomp <- cov(t(effects.cur[c("A","AA","D","F","S","E","AGE","AGE.by.A"),]*beta2))
> 
> there is an argument mssing.
> error message:
> 
> Error in mean((a - mean(a)) * (b - mean(b))) :
>        argument "b" is missing, with no default
> 
> 
> SPECIFICS OF HER MACHINE:
> 
>> memory.size()
> [1] 10985480
>> R.Version()
> $platform
> [1] "i386-pc-mingw32"
> $arch
> [1] "i386"
> $os
> [1] "mingw32"
> $system
> [1] "i386, mingw32"
> $status
> [1] ""
> $major
> [1] "2"
> $minor
> [1] "1.0"
> $year
> [1] "2005"
> $month
> [1] "04"
> $day
> [1] "18"
> $language
> [1] "R"
>> .Platform
> $OS.type
> [1] "windows"
> $file.sep
> [1] "/"
> $dynlib.ext
> [1] ".dll"
> $GUI
> [1] "Rgui"
> $endian
> [1] "little"
> $pkgType
> [1] "win.binary"
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

e5tN/9	ea/ hcjw