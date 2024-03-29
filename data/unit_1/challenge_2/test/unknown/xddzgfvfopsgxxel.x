From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 15:09:18 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63J9HL9032676
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 15:09:18 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63J8Rnk029530;
	Tue, 3 Jul 2007 21:08:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=AWL, BAYES_20,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from postrelay-1.pdf.com (postrelay-1.pdf.com [209.128.81.152])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63J8Hsp029401
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 21:08:18 +0200
Received: from postbox.pdf.com (postbox.pdf.com [10.10.8.7])
	by postrelay-1.pdf.com (Switch-3.2.5/Switch-3.2.5) with ESMTP id
	l63J6W1r030498; Tue, 3 Jul 2007 12:06:33 -0700
Received: from malt.pdf.com (malt.pdf.com [10.10.8.80])
	by postbox.pdf.com (Switch-3.2.6/Switch-3.2.6) with ESMTP id
	l63J8CRn020652
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 3 Jul 2007 12:08:13 -0700
Received: from [10.10.10.22] (sjc-10-10-10-22.pdf.com [10.10.10.22])
	by malt.pdf.com (8.12.11/8.12.11) with ESMTP id l63J8CFx020001;
	Tue, 3 Jul 2007 12:08:12 -0700
Message-ID: <468A9E36.3030307@pdf.com>
Date: Tue, 03 Jul 2007 12:06:30 -0700
From: Spencer Graves <spencer.graves@pdf.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: domenico pestalozzi <statadat@gmail.com>
References: <e591a95b0707020748p2650666bs972a7f28c8001a31@mail.gmail.com>
In-Reply-To: <e591a95b0707020748p2650666bs972a7f28c8001a31@mail.gmail.com>
X-Spam: Internal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] how to solve a min problem
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

      Do you mean

      minimize mu with 0 < b_func(S+mu) < 800? 

      For this kind of problem, I'd first want to know the nature of 
"b_func".  Without knowing more, I might try to plot b_func(S+mu) vs. 
mu, then maybe use 'optimize'. 

      If this is not what you mean, please be more specific:  I'm 
confused. 

      Hope this helps. 
      Spencer Graves

domenico pestalozzi wrote:
> I know it's possible to solve max e min problems  by using these functions:
>
> nlm, optimize, optim
>
> but I don't know how to use them (...if possible...) to solve this problem.
>
> I have a personal function called  b_func(S) where S is an input array (1 X
> n)  and I'd like:
>
> minimize mean(S) with 0 < b_funct < 800.
>
> I know that the solution exists, but It's possible to calculate it in R?
> The b_func is non linear and it calculates a particular value using S as
> input and applying a convergent iterative algorithm.
>
> thanks
>
>
> domenico
>
> 	[[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



en2WUt :=cM1hA