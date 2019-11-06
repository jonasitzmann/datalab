From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 01:29:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L5TYL9020073
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 01:29:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L5S1Eu015717;
	Thu, 21 Jun 2007 07:28:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_80, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.179])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L5RrWI015688
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 07:27:54 +0200
Received: by py-out-1112.google.com with SMTP id p76so57535pyb
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 22:27:53 -0700 (PDT)
Received: by 10.35.106.1 with SMTP id i1mr2536714pym.1182403673273;
	Wed, 20 Jun 2007 22:27:53 -0700 (PDT)
Received: by 10.35.19.15 with HTTP; Wed, 20 Jun 2007 22:27:53 -0700 (PDT)
Message-ID: <548b8d440706202227k14f0bed1j719868c595212d39@mail.gmail.com>
Date: Wed, 20 Jun 2007 22:27:53 -0700
From: "Yuchen Luo" <realityrandom@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] "if" within a function
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

Dear Friends.
I found a puzzling phenomenon in R when you use 'if' within a function:

# defining a function aaa
aaa=function(a)
{if (a==1) {aaa=1};
 if (a!=1) {aaa=2}
 }

# using the function:
> b=20
> bbb=aaa(b)
> bbb
[1] 2
> typeof(bbb)
[1] "double"
>
>
> c=1
> ccc=aaa(c)
> ccc
NULL
> typeof(ccc)
[1] "NULL"

It seems that only the last 'if' phrase works. Is it an instrinsic weakness
of R? Is there a way to get around it? ( I use 'elseif' to get around this
when there are only two cases to choose from, but what if there are more
than two cases to choose from?)

Best
Yuchen

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

oie-otnh  