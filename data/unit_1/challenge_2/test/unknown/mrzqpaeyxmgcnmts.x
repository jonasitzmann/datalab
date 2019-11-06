From r-help-bounces@stat.math.ethz.ch  Sun Jun 17 06:37:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5HAb3L9006102
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 06:37:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HAaVLJ022751;
	Sun, 17 Jun 2007 12:36:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.249])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HAaPMD022731
	for <r-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 12:36:26 +0200
Received: by an-out-0708.google.com with SMTP id b2so255326ana
	for <r-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 03:36:24 -0700 (PDT)
Received: by 10.100.190.8 with SMTP id n8mr2844651anf.1182076584596;
	Sun, 17 Jun 2007 03:36:24 -0700 (PDT)
Received: by 10.100.44.6 with HTTP; Sun, 17 Jun 2007 03:36:24 -0700 (PDT)
Message-ID: <f8e6ff050706170336w18869a1du7d159e55c2fa32db@mail.gmail.com>
Date: Sun, 17 Jun 2007 12:36:24 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: "Bernd Weiss" <bernd.weiss@uni-koeln.de>
In-Reply-To: <46752297.6693.1D9B7D9@bernd.weiss.uni-koeln.de>
MIME-Version: 1.0
Content-Disposition: inline
References: <46752297.6693.1D9B7D9@bernd.weiss.uni-koeln.de>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] [ggplot2] Change color of grid lines
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

On 6/17/07, Bernd Weiss <bernd.weiss@uni-koeln.de> wrote:
> Hi,
>
> I am making myself familiar with ggplot2 (I really like the examples
> at <http://had.co.nz/ggplot2/>).
>
> One thing that really annoys me is the default use of white grid
> lines and a gray background [1, 2]. I simply would like to have black
> grid lines and a white background. No problem, I thought, "This is R.
> There is no if. Only how." (fortune("Simon Blomberg")).
>
> I carfully checked the ggplot2 homepage <http://had.co.nz/ggplot2/>
> and the ggplot2 book <http://had.co.nz/ggplot2/book.pdf>.
>
> It seemed that the use of ggopt would be a good idea, in particular
> grid.colour.
>
> library(ggplot2)
> x <- rnorm(100)
> y <- rnorm(100)
> ## the default behaviour
> (a <- qplot(x,y))
> ## my attempt to change the default behaviour
> ggopt(grid.colour = "black", grid.fill = "white", background.colour =
> "black")
> (b <- qplot(x,y))
>
> (Of course, I also gave ggtheme a try but without success.)
>
> Unfortunately, I didn't found any solution for my problem which I
> could hardly believe. I strongly suspect that it's my fault but would
> appreciate any hint like RTFM on page XXX or so.

While the structure of ggplot plots is largely complete, I'm still
working on the appearance.  I know a lot of people prefer a white
background with black gridlines (and many journals require it) but it
hasn't been a priority.  It is on my todo list, and hopefully it will
make it in the next release of ggplot (probably 7-10 days from now)

Hadley

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

c�tgwra<tn 1sI