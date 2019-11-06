From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 10:47:15 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58ElEhB016576
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 10:47:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58EkhFn013322;
	Fri, 8 Jun 2007 16:46:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.246])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58EPIxn005432
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 16:25:19 +0200
Received: by an-out-0708.google.com with SMTP id b2so166460ana
	for <r-help@stat.math.ethz.ch>; Fri, 08 Jun 2007 07:25:18 -0700 (PDT)
Received: by 10.100.191.5 with SMTP id o5mr1812745anf.1181312717560;
	Fri, 08 Jun 2007 07:25:17 -0700 (PDT)
Received: by 10.100.132.13 with HTTP; Fri, 8 Jun 2007 07:25:17 -0700 (PDT)
Message-ID: <f8e6ff050706080725w1f1e7d25v7b30a01e95b3abb@mail.gmail.com>
Date: Fri, 8 Jun 2007 16:25:17 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: asb@mail.nih.gov
In-Reply-To: <1181227630.6917.12.camel@gestalt.nimh.nih.gov>
MIME-Version: 1.0
Content-Disposition: inline
References: <1181227630.6917.12.camel@gestalt.nimh.nih.gov>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] rlm results on trellis plot
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

On 6/7/07, Alan S Barnett <asb@mail.nih.gov> wrote:
> How do I add to a trellis plot the best fit line from a robust fit? I
> can use panel.lm to add a least squares fit, but there is no panel.rlm
> function.

It's not trellis, but it's really easy to do this with ggplot2:

install.packages("ggplot2", dep=T)
library(ggplot2)

p <- qplot(x, y, data=diamonds)
p + geom_smooth(method="lm")
p + geom_smooth(method="rlm")
p + geom_smooth(method="lm", formula="y ~ poly(x,3)")

see http://had.co.nz/ggplot2/stat_smooth.html for more examples.

Hadley

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

<
t Crg5em+i.