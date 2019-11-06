From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:26:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCJKLd027849
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:26:08 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MLcXUB012509;
	Fri, 22 Jun 2007 23:38:45 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wr-out-0506.google.com (wr-out-0506.google.com [64.233.184.229])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MLPAvV006968
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 23:25:10 +0200
Received: by wr-out-0506.google.com with SMTP id 69so809073wra
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 14:25:09 -0700 (PDT)
Received: by 10.142.233.9 with SMTP id f9mr48633wfh.1182547509364;
	Fri, 22 Jun 2007 14:25:09 -0700 (PDT)
Received: by 10.143.155.18 with HTTP; Fri, 22 Jun 2007 14:25:09 -0700 (PDT)
Message-ID: <eb555e660706221425t4a936f46wfffcc74b6575d12e@mail.gmail.com>
Date: Fri, 22 Jun 2007 14:25:09 -0700
From: "Deepayan Sarkar" <deepayan.sarkar@gmail.com>
To: "Spilak,Jacqueline [Edm]" <Jacqueline.Spilak@EC.gc.ca>
In-Reply-To: <4A6AB38B55B49C44A22E021A83CBEDDB015EB9A1@sr-pnr-exch3.prairie.int.ec.gc.ca>
MIME-Version: 1.0
Content-Disposition: inline
References: <4A6AB38B55B49C44A22E021A83CBEDDB015EB9A1@sr-pnr-exch3.prairie.int.ec.gc.ca>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Barchart legend position
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

On 6/22/07, Spilak,Jacqueline [Edm] <Jacqueline.Spilak@ec.gc.ca> wrote:
> I am using barchart to make charts for some data with a lot more
> functions and labels and such in the command.
>
> barchart(Freq ~ factor(HH), data = dataset1, group= year)
>
> So I have my data grouped by year and I get a legend at the top of
> graph, which is great cause I need the legend for the different years
> but it is a weird spot.  So how can I manipulate the legend, ie. Move
> it, shrink it, do anything with it. I have searched the help archives
> and found nothing, and I have looked up the legend section in ?barchart
> but that has not helped or I am doing something wrong.  Any help is
> greatly appreciated.

I can be more specific if you say what exactly you want to do
(preferably with a small reproducible example). The relevant
documentation is the part under 'key' in help(barchart). I prefer to
use 'auto.key' instead (and you haven't told us what you are using),
but most components of 'key' can be passed through 'auto.key'. Some
examples:


barchart(Titanic,
         auto.key = list(space = "right", size = 2, cex = 0.5))


barchart(Titanic,
         auto.key = list(x = 0.75, y = 0.25, size = 2))


## choose location interactively:

library(grid)

barchart(Titanic,
         page = function(n) {
             cat("Click on plot to place legend", fill = TRUE)
             ll <- grid.locator(unit = "npc")
             if (!is.null(ll))
                 draw.key(simpleKey(dimnames(Titanic)$Survived,
                                    rect = TRUE, points = FALSE),
                          vp = viewport(x = ll$x, y = ll$y),
                          draw = TRUE)
       })


-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

< a1bP7S