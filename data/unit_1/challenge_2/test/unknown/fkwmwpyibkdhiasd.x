From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 11:43:34 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LFhXL9025951
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 11:43:33 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LFggxh013109;
	Thu, 21 Jun 2007 17:43:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wx-out-0506.google.com (wx-out-0506.google.com [66.249.82.238])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LFfqFT012651
	for <R-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 17:41:53 +0200
Received: by wx-out-0506.google.com with SMTP id s19so548033wxc
	for <R-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 08:41:52 -0700 (PDT)
Received: by 10.90.36.3 with SMTP id j3mr1792965agj.1182440512319;
	Thu, 21 Jun 2007 08:41:52 -0700 (PDT)
Received: by 10.90.106.7 with HTTP; Thu, 21 Jun 2007 08:41:52 -0700 (PDT)
Message-ID: <8d5a36350706210841td171dc2n9136e1f2b05afda9@mail.gmail.com>
Date: Thu, 21 Jun 2007 11:41:52 -0400
From: "bogdan romocea" <br44114@gmail.com>
To: robert-mcfadden@o2.pl
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <R-help@stat.math.ethz.ch>
Subject: Re: [R] Speed up R
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

Don't rush to buy new hardware yet (other than perhaps more RAM for
your existing desktop). First of all you should make sure that your R
code can't be made any faster. (I've seen cases where careful
re-writes increased speed by a factor of 10 or more.) There are some
rules (such as pre-allocate enough memory for vectors/lists, use
matrices instead of data frames etc) and tools (?Rprof, ?Sys.time)
that can help a lot. Check the manuals and the archives, for example
http://article.gmane.org/gmane.comp.lang.r.general/48800


> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Robert McFadden
> Sent: Tuesday, June 19, 2007 4:51 PM
> To: r-help@stat.math.ethz.ch
> Subject: [R] Speed up R
>
> Dear R Users,
> I hope that there is someone who has an experience with a
> problem that I
> describe below and will help me.
> I must buy new desktop computer and I'm wondering which
> processor to choose
> if my only aim is to speed up R. I would like to reduce a
> simulation time -
> sometimes it takes days. I consider buying one of them (I'm
> working under
> Win XP 32 bit):
> 1. Intel Core2 Duo E6700 2.67 GHz
> 2. Dual-Core Intel Xeon processor 3070 - 2,66 GHz
> 3. AMD Athlon 64 X2 6000+
> Or simple Pentium 4?
>
> I'm very confused because I'm not sure whether R takes
> advantage dual-core
> or not. If not, probably Athlon would be better, wouldn't be?
> I would appreciate any help.
> Rob
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

                  

Lyf=ocot/aw