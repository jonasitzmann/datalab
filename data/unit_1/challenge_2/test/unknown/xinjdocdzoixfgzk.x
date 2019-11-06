From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 22:24:15 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5S2ODL9003776
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 22:24:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S2N2AZ021094;
	Thu, 28 Jun 2007 04:23:34 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.181])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S2KDTL020265
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 04:20:14 +0200
Received: by py-out-1112.google.com with SMTP id p76so780952pyb
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 19:20:13 -0700 (PDT)
Received: by 10.65.185.3 with SMTP id m3mr2088002qbp.1182997213084;
	Wed, 27 Jun 2007 19:20:13 -0700 (PDT)
Received: by 10.65.61.14 with HTTP; Wed, 27 Jun 2007 19:20:12 -0700 (PDT)
Message-ID: <40e66e0b0706271920o15f27e9fq54ab1ba743f520be@mail.gmail.com>
Date: Wed, 27 Jun 2007 21:20:12 -0500
From: "Spielas Bates" <bates@stat.wisc.edu>
To: "ivo welch" <ivowel@gmail.com>
In-Reply-To: <50d1c22d0706271300p3c8d9109g1aeafe3908fa419e@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <50d1c22d0706271300p3c8d9109g1aeafe3908fa419e@mail.gmail.com>
X-Google-Sender-Auth: 33d788186cefeedb
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] skeleton for C code?
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

On 6/27/07, ivo welch <ivowel@gmail.com> wrote:
> Dear R experts---I would like to write a replacement for the read.csv
> function that is less general, but also more efficient.
>
> could someone please provide me with a skeleton function that shows me
> how to read the arguments and return a data frame for a call to a C
> function that handles
>
>      returned.data.frame = my.read.csv(file, header = TRUE, sep = ",",
> quote="\"", dec=".",
>               fill = TRUE, comment.char="", ...)
>
> this may be very difficult, of course, in which case writing such a
> function would not be worth it.  I guess I would be happy just to
> learn how to return a basic data frame that holds data vectors that
> are either strings or numbers---nothing more complex.
>
> help appreciated.

Should we assume that you have already read the relevant sections of
the manual "Writing R Extensions"?

The .Call interface is the easiest way to return an object like a data
frame.  I might pass the result back as a list and use something like

do.call(data.frame, .Call("my_csv_reader", file, ...))

rather than duplicating all the error checking that is done in the
data.frame function.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

rd+P2