From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 10:56:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65EugL9027486
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 10:56:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65EttLs025964;
	Thu, 5 Jul 2007 16:56:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mxout4.cac.washington.edu (mxout4.cac.washington.edu
	[140.142.33.19])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65Emfmi023780
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@r-project.org>; Thu, 5 Jul 2007 16:48:43 +0200
Received: from homer23.u.washington.edu (homer23.u.washington.edu
	[140.142.12.141])
	by mxout4.cac.washington.edu (8.13.7+UW06.06/8.13.7+UW07.06) with ESMTP
	id l65EmdtK030416
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 5 Jul 2007 07:48:40 -0700
Received: from localhost (tlumley@localhost)
	by homer23.u.washington.edu (8.13.7+UW06.06/8.13.7+Submit) with ESMTP
	id l65EmdKK030728; Thu, 5 Jul 2007 07:48:39 -0700
Date: Thu, 5 Jul 2007 07:48:39 -0700 (PDT)
From: Thomas Lumley <tlumley@u.washington.edu>
To: Giuseppe PEDRAZZI <pedrazzi@unipr.it>
In-Reply-To: <000601c7bee9$e5ba7cd0$47544ea0@pedrak>
Message-ID: <Pine.LNX.4.64.0707050743580.29705@homer23.u.washington.edu>
References: <000601c7bee9$e5ba7cd0$47544ea0@pedrak>
MIME-Version: 1.0
X-PMX-Version: 5.3.2.304607, Antispam-Engine: 2.5.1.298604,
	Antispam-Data: 2007.7.5.72833
X-Uwash-Spam: Gauge=IIIIIII, Probability=7%, Report='__C230066_P5 0, __CT 0,
	__CT_TEXT_PLAIN 0, __HAS_MSGID 0, __MIME_TEXT_ONLY 0,
	__MIME_VERSION 0, __SANE_MSGID 0'
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@r-project.org
Subject: Re: [R] Is it a bug ?
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

On Thu, 5 Jul 2007, Giuseppe PEDRAZZI wrote:
> I am using R 2.5.0,  windows XP - italian language.
>
> I was perfoming some calculation on fractional exponential and
> I found a strange behaviour. I do not know if it is really a bug, but I would expect
> a different answer from R.
>
> I was trying the following :
>
> x <- seq(-3,3, by =0.1)
> n <- 2.2
> y <- exp(-x^n)
>
> well, the y vector contains (NaN for all negative value of x)

Yes. Non-integer powers of negative numbers are undefined (unless you use 
complex numbers).

> but if you ask for single value calculation like
>
> y <- exp(-(-3)^2.2) or
>
> y <- exp(-(-2.9)^2.2)
>
> the answer is correct.

I get NaN for both of these.  Perhaps you mean exp(-2.9^2.2)? This gives 
a valid answer, but that is because it is exp(-(2.9^2.2)) not 
exp((-2.9)^2.2)

> It seem it does not make the calculation in vector form.
>
> I got the same behaviour (NaN)  in a for loop
>
>> for(i in 1:length(x)) y[i]=exp(x[i]^n)
>> y
> [1]           NaN          NaN          NaN          NaN          NaN          NaN          NaN          NaN          NaN
> [10]          NaN          NaN          NaN          NaN          NaN          NaN          NaN          NaN          NaN
> [19]          NaN          NaN          NaN          NaN          NaN          NaN          NaN          NaN          NaN
> [28]          NaN          NaN          NaN     1.000000     1.006330     1.029416     1.073302     1.142488     1.243137
> [37]     1.384082     1.578166     1.844237     2.210260     2.718282     3.432491     4.452553     5.936068     8.137120
> [46]    11.473746    16.648415    24.867680    38.251295    60.611092    98.967689   166.572985   289.077778   517.425935
> [55]   955.487320  1820.793570  3581.521323  7273.674928 15255.446778 33050.861013 73982.100407
>>
>
> Is it strange or did I miss something ?

You missed something. It is not clear what you missed because some of your 
examples do not give the answer you say they give.

 	-thomas

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



xe0T107g4aRT