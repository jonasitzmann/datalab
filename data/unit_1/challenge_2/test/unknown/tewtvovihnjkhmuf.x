From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 16:01:45 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RK1YL9031819
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 16:01:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RK0lNc024450;
	Wed, 27 Jun 2007 22:01:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.179])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RK0Ww1024367
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 22:00:34 +0200
Received: by wa-out-1112.google.com with SMTP id j37so404682waf
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 13:00:31 -0700 (PDT)
Received: by 10.114.198.1 with SMTP id v1mr811865waf.1182974430596;
	Wed, 27 Jun 2007 13:00:30 -0700 (PDT)
Received: by 10.114.171.13 with HTTP; Wed, 27 Jun 2007 13:00:30 -0700 (PDT)
Message-ID: <50d1c22d0706271300p3c8d9109g1aeafe3908fa419e@mail.gmail.com>
Date: Wed, 27 Jun 2007 16:00:30 -0400
From: "ivo welch" <ivowel@gmail.com>
To: r-help <r-help@stat.math.ethz.ch>
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] skeleton for C code?
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

Dear R experts---I would like to write a replacement for the read.csv
function that is less general, but also more efficient.

could someone please provide me with a skeleton function that shows me
how to read the arguments and return a data frame for a call to a C
function that handles

     returned.data.frame = my.read.csv(file, header = TRUE, sep = ",",
quote="\"", dec=".",
              fill = TRUE, comment.char="", ...)

this may be very difficult, of course, in which case writing such a
function would not be worth it.  I guess I would be happy just to
learn how to return a basic data frame that holds data vectors that
are either strings or numbers---nothing more complex.

help appreciated.

/iaw

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

n 
o1
o t"