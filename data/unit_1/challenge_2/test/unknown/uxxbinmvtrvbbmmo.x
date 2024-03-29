From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 18:44:22 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LMiKL9030435
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 18:44:21 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LMfrlN005491;
	Fri, 22 Jun 2007 00:42:18 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_80, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.239])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LMfjVM005414
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 00:41:45 +0200
Received: by nz-out-0506.google.com with SMTP id o37so632818nzf
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 15:41:45 -0700 (PDT)
Received: by 10.114.133.1 with SMTP id g1mr2215504wad.1182465704291;
	Thu, 21 Jun 2007 15:41:44 -0700 (PDT)
Received: by 10.114.106.17 with HTTP; Thu, 21 Jun 2007 15:41:44 -0700 (PDT)
Message-ID: <8d94daff0706211541k4a3931d1i85d54314221c6bfb@mail.gmail.com>
Date: Thu, 21 Jun 2007 23:41:44 +0100
From: "Tolga Uzuner" <tolga.uzuner@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Binary decision problem
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

Dear R Users,

I am trying to use LP_SOLVE and would appreciate any assistance with
the following problem:
- I am trying to choose a fixed number of items out of a batch of
items: say 100 out of 800
- items have certain characteristics, say characteric A, B and C
- I want to maximise the sum of A across all 100 items I choose while
ensuring that the sum of B and C across the items do not exceed
certain constraints

How exactly do I set this up in lp_solve ? If I associate a boolean, 0
or 1, with each item, I can constrain the sum of the boolean to be
equal to 100. But how do I then further specify the other constraints
(on the sum of B and the sum of C) and the objective function (to
maximise the sum of A) ?

Thanks,
Tolga

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

 N>Au