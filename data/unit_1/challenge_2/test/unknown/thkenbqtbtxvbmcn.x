From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 13:57:10 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54Hv9hB031003
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 13:57:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54Htalu020345;
	Mon, 4 Jun 2007 19:55:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.249])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54HtUnk020316
	for <r-help@stat.math.ethz.ch>; Mon, 4 Jun 2007 19:55:31 +0200
Received: by an-out-0708.google.com with SMTP id b2so320467ana
	for <r-help@stat.math.ethz.ch>; Mon, 04 Jun 2007 10:55:30 -0700 (PDT)
Received: by 10.100.120.5 with SMTP id s5mr2698095anc.1180979729976;
	Mon, 04 Jun 2007 10:55:29 -0700 (PDT)
Received: by 10.100.132.13 with HTTP; Mon, 4 Jun 2007 10:55:29 -0700 (PDT)
Message-ID: <f8e6ff050706041055h79d3854bu936f629473750980@mail.gmail.com>
Date: Mon, 4 Jun 2007 19:55:29 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: "Don MacQueen" <macq@llnl.gov>
In-Reply-To: <p06230908c289f0331721@128.115.153.6>
MIME-Version: 1.0
Content-Disposition: inline
References: <f8e6ff050706040039v1cd56ades817534ece083a4a8@mail.gmail.com>
	<971536df0706040406w4dd35cc8pe95116fd7ba5fc8f@mail.gmail.com>
	<f8e6ff050706040501kd3d7a57i2895a14fabb9f446@mail.gmail.com>
	<p06230908c289f0331721@128.115.153.6>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: Rhelp <r-help@stat.math.ethz.ch>
Subject: Re: [R] Bug in seq.date?
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

On 6/4/07, Don MacQueen <macq@llnl.gov> wrote:
> I think you can easily get the last days of the months by creating a
> series starting on the first days, and subtracting one from each.
>
> seq(as.Date("2000-2-1"), as.Date("2001-2-1"), "months") -1

Thanks for the suggestion, but for my problem the dates are user
supplied so I don't know if they fall at the end of the month or not.

Hadley

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

3noEror/a paadHt