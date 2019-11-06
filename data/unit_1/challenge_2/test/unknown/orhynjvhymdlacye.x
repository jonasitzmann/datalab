From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 14:43:51 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CIhoL9030499
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 14:43:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CIh46M000531;
	Tue, 12 Jun 2007 20:43:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.250])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CIVmpZ027159
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 20:31:48 +0200
Received: by an-out-0708.google.com with SMTP id b2so391533ana
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 11:31:47 -0700 (PDT)
Received: by 10.100.153.17 with SMTP id a17mr4294572ane.1181673107798;
	Tue, 12 Jun 2007 11:31:47 -0700 (PDT)
Received: by 10.100.132.13 with HTTP; Tue, 12 Jun 2007 11:31:47 -0700 (PDT)
Message-ID: <f8e6ff050706121131s4b0aeb30y8de662ddd7323092@mail.gmail.com>
Date: Tue, 12 Jun 2007 20:31:47 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: dieter.menne@menne-biomed.de
In-Reply-To: <LPEJLJACLINDNMBMFAFIKEBICIAA.dieter.menne@menne-biomed.de>
MIME-Version: 1.0
Content-Disposition: inline
References: <LPEJLJACLINDNMBMFAFIKEBICIAA.dieter.menne@menne-biomed.de>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-Help <r-help@stat.math.ethz.ch>
Subject: Re: [R] Stacked barchart color
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

On 6/12/07, Dieter Menne <dieter.menne@menne-biomed.de> wrote:
> Dear Latticer,
>
> I want to give individual colors to all elements in a simple stacked
> barchart. I know why the example below does not work (and it is a excellent
> default), but is there any workaround for this?
>
> Dieter
>
>
> # This only colors red and green, but I want blue and gray for Peatland.
>
> barchart(yield ~ variety , groups=year, data = barley,  stack = TRUE,
>   subset=site=="Grand Rapids" & variety %in% c("Velvet","Peatland"),
>     col=c("red","green","blue","gray"))

Hi Dieter,

You can do this with ggplot2 (http://had.co.nz/ggplot2) as follows:

library(ggplot2)

barley1 <- subset(barley, site=="Grand Rapids" & variety %in%
c("Velvet","Peatland"))
barley1[] <- lapply(barley1, "[", drop=TRUE)

qplot(variety, yield, data=barley1, geom="bar", stat="identity",
fill=factor(year))

barley1$fill <- c("red","green","blue","gray")
qplot(variety, yield, data=barley1, geom="bar", stat="identity",
fill=fill) + scale_fill_identity()

See http://had.co.nz/ggplot2/scale_identity.html and
http://had.co.nz/ggplot2/position_stack.html for more details.

Hadley

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

to KpMf