From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 17:14:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CLErL9031927
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 17:14:54 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CLE84S019957;
	Tue, 12 Jun 2007 23:14:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.229])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CLDtl8019837
	for <R-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 23:13:55 +0200
Received: by nz-out-0506.google.com with SMTP id o37so1511783nzf
	for <R-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 14:13:54 -0700 (PDT)
Received: by 10.114.160.1 with SMTP id i1mr7101970wae.1181682834158;
	Tue, 12 Jun 2007 14:13:54 -0700 (PDT)
Received: by 10.114.126.18 with HTTP; Tue, 12 Jun 2007 14:13:54 -0700 (PDT)
Message-ID: <cdf817830706121413s643d4412lf4a4b5e9217da528@mail.gmail.com>
Date: Tue, 12 Jun 2007 17:13:54 -0400
From: "Weiwei Shi" <helprhelp@gmail.com>
To: "R Help" <R-help@stat.math.ethz.ch>
In-Reply-To: <cdf817830706121401u54bd6df9nb22b6acdd2e33d6b@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <cdf817830706121401u54bd6df9nb22b6acdd2e33d6b@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] pretty report
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

Just realized append=T might help for xtable, but I think it still not
very "pretty" :)

On 6/12/07, Weiwei Shi <helprhelp@gmail.com> wrote:
> Dear Listers:
>
> I have a couple of data frames to report and each corresponds to
> different condtions, e.g. conditions=c(10, 15, 20, 25). In this
> examples, four data frames need to be exported in a "pretty" report.
>
> I knew Perl has some module for exporting data to Excel and after
> googling, I found R does not.
>
> So I am wondering if there is a package in R for generating good
> reports. I found package xtable but it seems (if not, please correct
> me) that it can only generate one table for one file.
>
> Thanks for any suggestions,
>
> -W
>
> --
> Weiwei Shi, Ph.D
> Research Scientist
> GeneGO, Inc.
>
> "Did you always know?"
> "No, I did not. But I believed..."
> ---Matrix III
>


-- 
Weiwei Shi, Ph.D
Research Scientist
GeneGO, Inc.

"Did you always know?"
"No, I did not. But I believed..."
---Matrix III

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

[EdS<sag02u<oBa0