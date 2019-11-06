From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 11:22:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FFMIL9003754
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 11:22:19 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FFLUKX029287;
	Fri, 15 Jun 2007 17:21:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wr-out-0506.google.com (wr-out-0506.google.com [64.233.184.236])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FEjNM6014632
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 16:45:24 +0200
Received: by wr-out-0506.google.com with SMTP id 25so763688wry
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 07:45:23 -0700 (PDT)
Received: by 10.90.98.3 with SMTP id v3mr2583470agb.1181918723183;
	Fri, 15 Jun 2007 07:45:23 -0700 (PDT)
Received: by 10.90.28.17 with HTTP; Fri, 15 Jun 2007 07:45:23 -0700 (PDT)
Message-ID: <1115a2b00706150745o7561e92bw7fe71582cf3cc14d@mail.gmail.com>
Date: Fri, 15 Jun 2007 10:45:23 -0400
From: "Wensui Liu" <liuwensui@gmail.com>
To: ronggui <ronggui.huang@gmail.com>
In-Reply-To: <38b9f0350706150627o21c9adacx64ead046f9db3a9b@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <38b9f0350706150627o21c9adacx64ead046f9db3a9b@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-Help <r-help@stat.math.ethz.ch>
Subject: Re: [R] method of rpart when response variable is binary?
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

you might use default setting if you use as.factor(y)~x in rpart(), I think.

On 6/15/07, ronggui <ronggui.huang@gmail.com> wrote:
> Dear all,
>
> I would like to model the relationship between y and x. y is binary
> variable, and x is a count variable which may be possion-distribution.
>
> I think it is better to divide x into intervals and change it to a
> factor before calling glm(y~x,data=dat,family=binomail).
>
> I try to use rpart. As y is binary, I use "class" method and get the
> following result.
> > rpart(y~x,data=dat,method="class")
> n=778 (22 observations deleted due to missingness)
>
> node), split, n, loss, yval, (yprob)
>       * denotes terminal node
>
> 1) root 778 67 0 (0.91388175 0.08611825) *
>
>
> If with the default method, I get such a result.
>
> > rpart(y~x,data=dat)
> n=778 (22 observations deleted due to missingness)
>
> node), split, n, deviance, yval
>       * denotes terminal node
>
> 1) root 778 61.230080 0.08611825
>   2) x< 19.5 750 53.514670 0.07733333
>     4) x< 1.25 390 17.169230 0.04615385 *
>     5) x>=1.25 360 35.555560 0.11111110 *
>   3) x>=19.5 28  6.107143 0.32142860 *
>
> If I use 1.25 and 19.5 as the cutting points, change x into factor by
> >x2 <- cut(q34b,breaks=c(0,1.25,19.5,200),right=F)
>
> The coef in y~x2 is significant and makes sense.
>
> My problem is: is it OK use the default method in rpart when response
> varibale is binary one?  Thanks.
>
>
> --
> Ronggui Huang
> Department of Sociology
> Fudan University, Shanghai, China
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>


-- 
WenSui Liu
A lousy statistician who happens to know a little programming
(http://spaces.msn.com/statcompute/blog)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

8HsBpyLAeTl