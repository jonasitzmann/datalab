From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 20:14:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5E0EfL9014218
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 20:14:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E0D1Ud014843;
	Thu, 14 Jun 2007 02:13:27 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.247])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E0Ctrj014803
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 02:12:56 +0200
Received: by an-out-0708.google.com with SMTP id b2so73308ana
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 17:12:54 -0700 (PDT)
Received: by 10.100.59.20 with SMTP id h20mr740156ana.1181779974611;
	Wed, 13 Jun 2007 17:12:54 -0700 (PDT)
Received: by 10.100.4.4 with HTTP; Wed, 13 Jun 2007 17:12:54 -0700 (PDT)
Message-ID: <3f547caa0706131712i7cf05880hf8c2864f77df27a3@mail.gmail.com>
Date: Wed, 13 Jun 2007 20:12:54 -0400
From: "Matthew Keller" <mckellercran@gmail.com>
To: "Uwe Ligges" <ligges@statistik.uni-dortmund.de>
In-Reply-To: <466FA841.1050800@statistik.uni-dortmund.de>
MIME-Version: 1.0
Content-Disposition: inline
References: <3f547caa0706121037i4e295920m75940b175e01a852@mail.gmail.com>
	<466FA841.1050800@statistik.uni-dortmund.de>
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

Hi Uwe and other R-folks,

To answer your question, effects.cur is a matrix of real numbers.

It turns out that, on updating her version to the current one, the
error disappears. I'm posting this for posterity, just in case anyone
else has a similar problem with the function cov in earlier R
versions. I have no idea why the error was occurring, and can't track
it down because I don't have access to R 2.1...

Matt

On 6/13/07, Uwe Ligges <ligges@statistik.uni-dortmund.de> wrote:
>
>
> Matthew Keller wrote:
> > Hi all,
> >
> > I have written a script in R that simulates genetically informative
> > data - it is posted on my website and available to the public. This is
> > my first time to write a script for use by others and am learning that
> > it isn't as easy as it seems.
> >
> > To the issue. My script runs fine on my machine and on a server I have
> > access to, but a user has written me saying that it crashes the first
> > time the function "cov" is called up. Below is her error message
> > followed by the version of R she's using.
> >
> > Can anyone help me out here? I can't recreate her error message. Does
> > anyone know what this might have to do with? Is it a version issue
> > (she's using R 2.1)? I'd appreciate any help!!
>
> It may be a version issue, but hard to say since we do not know what
> effects.cur() is, not do we have any data to reproduce this.
>
> Uwe Ligges
>
>
> > Matt
> >
> >
> > ERROR MESSAGE:
> >
> > cov.varcomp <- cov(t(effects.cur[c("A","AA","D","F","S","E","AGE","AGE.by.A"),]*beta2))
> >
> > there is an argument mssing.
> > error message:
> >
> > Error in mean((a - mean(a)) * (b - mean(b))) :
> >        argument "b" is missing, with no default
> >
> >
> > SPECIFICS OF HER MACHINE:
> >
> >> memory.size()
> > [1] 10985480
> >> R.Version()
> > $platform
> > [1] "i386-pc-mingw32"
> > $arch
> > [1] "i386"
> > $os
> > [1] "mingw32"
> > $system
> > [1] "i386, mingw32"
> > $status
> > [1] ""
> > $major
> > [1] "2"
> > $minor
> > [1] "1.0"
> > $year
> > [1] "2005"
> > $month
> > [1] "04"
> > $day
> > [1] "18"
> > $language
> > [1] "R"
> >> .Platform
> > $OS.type
> > [1] "windows"
> > $file.sep
> > [1] "/"
> > $dynlib.ext
> > [1] ".dll"
> > $GUI
> > [1] "Rgui"
> > $endian
> > [1] "little"
> > $pkgType
> > [1] "win.binary"
> >
>


-- 
Matthew C Keller
Postdoctoral Fellow
Virginia Institute for Psychiatric and Behavioral Genetics

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

9s: !e.