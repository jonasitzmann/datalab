From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 12:33:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63GXkL9031055
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 12:33:48 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63GVR8f003385;
	Tue, 3 Jul 2007 18:33:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wx-out-0506.google.com (wx-out-0506.google.com [66.249.82.239])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63G3pWi024662
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 18:03:51 +0200
Received: by wx-out-0506.google.com with SMTP id i28so1813762wxd
	for <r-help@stat.math.ethz.ch>; Tue, 03 Jul 2007 09:03:50 -0700 (PDT)
Received: by 10.90.90.16 with SMTP id n16mr6338563agb.1183478630570;
	Tue, 03 Jul 2007 09:03:50 -0700 (PDT)
Received: by 10.90.118.18 with HTTP; Tue, 3 Jul 2007 09:03:50 -0700 (PDT)
Message-ID: <971536df0707030903r352c0f23p2fd28a382c7a9fb@mail.gmail.com>
Date: Tue, 3 Jul 2007 12:03:50 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "NOEL Yvonnick" <yvonnick.noel@free.fr>
In-Reply-To: <468A495E.2060509@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
References: <468A495E.2060509@free.fr>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Search a function name in a string
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

Parnetheses have special meaning so they must be escaped or
specify a character class of 1:

> grep("S\\(.*\\)",c("S(a)","CSP"))
[1] 1
> grep("S[(].*[)]",c("S(a)","CSP"))
[1] 1


On 7/3/07, NOEL Yvonnick <yvonnick.noel@free.fr> wrote:
> Hello,
>
> I am trying to find a function name in a string that expresses a
> functional form :
>
>  > s = "blabla...S(var)...blabla"
>
> I would like to detect the pattern "S(*)" in s.
>
> I am no guru at regular expressions. Just tried :
>
>  > grep("S(.*)",c("S(a)","CSP"))
> [1] 1 2
>  >
>
> I expected the pattern to be retrieved only in the first string, so
> obviously this is not correct. Any idea ?
>
> Thank you very much in advance,
>
> Yvonnick Noel, PhD
> U. of Rennes 2
> France
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

  

dc{FtLu