From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 20:55:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5G0tBL9008489
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 20:55:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5G0rZCR011836;
	Sat, 16 Jun 2007 02:53:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.224])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5G0rSiG011756
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 02:53:28 +0200
Received: by nz-out-0506.google.com with SMTP id o37so942033nzf
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 17:53:27 -0700 (PDT)
Received: by 10.143.14.16 with SMTP id r16mr183921wfi.1181955207144;
	Fri, 15 Jun 2007 17:53:27 -0700 (PDT)
Received: by 10.143.155.18 with HTTP; Fri, 15 Jun 2007 17:53:27 -0700 (PDT)
Message-ID: <eb555e660706151753iad29e77wbe74b05b491772de@mail.gmail.com>
Date: Fri, 15 Jun 2007 19:53:27 -0500
From: deepayan.sarkar@gmail.com
To: "Benilton Carvalho" <bcarvalh@jhsph.edu>
In-Reply-To: <8DDE4EAE-47C0-4AD2-A0F3-6EC6BF3640CB@jhsph.edu>
MIME-Version: 1.0
Content-Disposition: inline
References: <8DDE4EAE-47C0-4AD2-A0F3-6EC6BF3640CB@jhsph.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] plot via xyplot not being saved
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

On 6/15/07, Benilton Carvalho <bcarvalh@jhsph.edu> wrote:
> Hi everyone,
>
> it's been a while I've been trying to save a plot created via
> lattice:::xyplot
>
> if I have a file tst.R with the following code:
>
> y <- rnorm(100)
> x <- rnorm(100)
> z <- sample(letters[1:4], 100, rep=T)
> library(lattice)
> bitmap("tst.png")
> xyplot(y~x|z)
> dev.off()
>
> and I source it, I get the tst.png file, which is a blank page.
>
> If I copy and paste instead, I get the correct plot.
>
> Any suggestion?

Use

source(..., echo = TRUE)

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

>hhFa0vR o8