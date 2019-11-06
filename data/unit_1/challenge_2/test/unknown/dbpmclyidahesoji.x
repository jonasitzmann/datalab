From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 01:13:44 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l565DghB017655
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 01:13:43 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l565C8OE018015;
	Wed, 6 Jun 2007 07:12:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.240])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l565C1aw017988
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 07:12:02 +0200
Received: by an-out-0708.google.com with SMTP id b2so4995ana
	for <r-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 22:12:01 -0700 (PDT)
Received: by 10.100.59.20 with SMTP id h20mr70237ana.1181106720198;
	Tue, 05 Jun 2007 22:12:00 -0700 (PDT)
Received: by 10.100.132.13 with HTTP; Tue, 5 Jun 2007 22:12:00 -0700 (PDT)
Message-ID: <f8e6ff050706052212u7af78eb0pc805be82d7111ab6@mail.gmail.com>
Date: Wed, 6 Jun 2007 07:12:00 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: "Ross Boylan" <ross@biostat.ucsf.edu>
In-Reply-To: <1181076570.20244.93.camel@iron.psg.net>
MIME-Version: 1.0
Content-Disposition: inline
References: <1181076570.20244.93.camel@iron.psg.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] ggplot aspect ratio
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

Hi Ross,

In brief, you can use ggopt(aspect.ratio = 1) or p$aspect.ratio <- 1
to set the aspect ratio for all plots, or for a single plot
respectively.  There are a few example of this at
http://had.co.nz/ggplot2/coord_equal.html

I am also preparing a chapter for the ggplot book which will discuss
this, as well as more general details of customising absolutely every
aspect of ggplot2 with grid.  I hope to have this out by the end of
the week - I'll probably send another anouncement to R packages when
this is ready.

You should be able to start using ggplot2 with very little effort,
especially if you have been using qplot a lot.

Hadley

On 6/5/07, Ross Boylan <ross@biostat.ucsf.edu> wrote:
> Is there a way to control the aspect ratio of plots using ggplot?
> Specifically, I'm using the formula=a~b argument to produce a grid of
> plots, but the overall width of the result seems to vary for reasons
> that are obscure to me.
>
> This affects not only the appearance of the plots but the amount of
> space available for the title (which seems to be right justified
> relative to the right edge of the grid).
>
> I've tried tweaking some parameters in the past, but they had no effect
> that I could tell.
>
> Perhaps related to that, my previous attempts to use abline to produce a
> 45 degree angle always produced a flat straight line.
>
> There are also a bunch of other tweaks I want to make to get output
> presentation ready.  Is it time to try ggplot2?  I found I could get
> results very quickly with ggplot, but am not sure how much control it
> gives me over the finer details.
>
> Thanks.
> --
> Ross Boylan                                      wk:  (415) 514-8146
> 185 Berry St #5700                               ross@biostat.ucsf.edu
> Dept of Epidemiology and Biostatistics           fax: (415) 514-8150
> University of California, San Francisco
> San Francisco, CA 94107-1739                     hm:  (415) 550-1062
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

h e. Mgtl5