From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 21:59:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T1xdL9018341
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 21:59:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T1x3V4026202;
	Fri, 29 Jun 2007 03:59:13 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME,
	SARE_SUB_OBFU_Q0 autolearn=no version=3.2.0
Received: from gateway1.jhsph.edu (gateway1.jhsph.edu [162.129.40.71])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T1wrgV026174
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 03:58:54 +0200
X-SBRS-GW1: None
X-IronPort-AV: E=Sophos;i="4.16,473,1175486400"; d="scan'208";a="107270377"
Received: from unknown (HELO XCH-VN01.sph.ad.jhsph.edu) ([10.253.10.41])
	by gateway1.jhsph.edu with ESMTP; 28 Jun 2007 21:58:53 -0400
Received: from owa-2.sph.ad.jhsph.edu ([10.253.10.243]) by
	XCH-VN01.sph.ad.jhsph.edu with Microsoft SMTPSVC(6.0.3790.1830);
	Thu, 28 Jun 2007 21:58:53 -0400
Received: from [10.253.16.13] ([10.253.16.13]) by owa-2.sph.ad.jhsph.edu with
	Microsoft SMTPSVC(6.0.3790.1830); Thu, 28 Jun 2007 21:58:52 -0400
In-Reply-To: <255953440977a84a8058562f72dc2b08@mail.chori.org>
References: <255953440977a84a8058562f72dc2b08@mail.chori.org>
Mime-Version: 1.0 (Apple Message framework v752.2)
X-Priority: 3
Message-Id: <7C4CB15D-3BBD-4441-AE0A-F8A31C611974@jhsph.edu>
From: Benilton Carvalho <bcarvalh@jhsph.edu>
Date: Thu, 28 Jun 2007 21:58:57 -0400
To: "Jiong Zhang, PhD" <jizhang@chori.org>
X-Mailer: Apple Mail (2.752.2)
X-OriginalArrivalTime: 29 Jun 2007 01:58:52.0952 (UTC)
	FILETIME=[0B335980:01C7B9F1]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: "r-help@stat.math.ethz.ch" <r-help@stat.math.ethz.ch>
Subject: Re: [R] why this doesn't work for qqnorm
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

qqnorm(table[,1])

is what you want, isn't it?

and other forms would include:

par(ask=TRUE)
results = apply(table, 2, qqnorm)
par(ask=FALSE)

b

On Jun 28, 2007, at 9:50 PM, Jiong Zhang, PhD wrote:

> I want to qqnorm every column in a table.  When I try the first column
> using
>
> qqnorm(table$column1), it worked.
>
> But when I use
>
> qqnorm(table[1]), it tells me "Error in stripchart(x1, ...) : invalid
> plotting method".
>
> What happen?  How can I make a function that qqnorms every column?
>
> thanks a lot.
>
> -jiong

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

a Sedzrvs" 