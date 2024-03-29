From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 14:34:18 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64IYHL9014137
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 14:34:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64IXPFX024548;
	Wed, 4 Jul 2007 20:33:39 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from ipex4.johnshopkins.edu (ipex4.johnshopkins.edu
	[128.220.161.141])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64ILP1J020321
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 20:21:27 +0200
Received: from jhem1.johnshopkins.edu ([10.181.31.201])
	by ipex4.johnshopkins.edu with ESMTP/TLS/RC4-MD5;
	04 Jul 2007 14:21:25 -0400
X-IronPort-AV: i="4.16,498,1175486400"; 
	d="scan'208"; a="309335004:sNHT40613994"
Received: from johnshopkins.edu ([10.181.31.209]) by jesmail.johnshopkins.edu
	(Sun Java System Messaging Server 6.2-7.05 (built Sep  5 2006))
	with ESMTP id <0JKO00JMO2ZQLLD0@jesmail.johnshopkins.edu> for
	r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 14:21:26 -0400 (EDT)
Received: from [10.181.192.191] (Forwarded-For: [4.155.235.234])
	by jesmail.johnshopkins.edu (mshttpd); Wed, 04 Jul 2007 14:21:26 -0400
Date: Wed, 04 Jul 2007 14:21:26 -0400
From: RAVI VARADHAN <rvaradhan@jhmi.edu>
In-reply-to: <e591a95b0707040821u991b9d1p63e5dbb17df7570a@mail.gmail.com>
To: domenico pestalozzi <statadat@gmail.com>
Message-id: <f494c671327a.468bace6@johnshopkins.edu>
MIME-version: 1.0
X-Mailer: Sun Java(tm) System Messenger Express 6.2-5.03 (built May 24 2006)
Content-language: en
Content-disposition: inline
X-Accept-Language: en
Priority: normal
References: <e591a95b0707020748p2650666bs972a7f28c8001a31@mail.gmail.com>
	<468A9E36.3030307@pdf.com>
	<e591a95b0707040821u991b9d1p63e5dbb17df7570a@mail.gmail.com>
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

If the constraints on S are linear inequalities, then linear programming methods would work.  See function solveLP in package "linprog" or simplex in "boot" or package "lpSolve".

Ravi.

----- Original Message -----
From: domenico pestalozzi <statadat@gmail.com>
Date: Wednesday, July 4, 2007 11:26 am
Subject: Re: [R] how to solve a min problem
To: R-help <r-help@stat.math.ethz.ch>


> S is an array 1-dimensional, for example 1 X 10, and mean(S) is the 
> mean of
>  these 10 elements.
>  
>  So, I want to do:
>  
>  minimize mean(S) with 0 < b_func(S) < 800.
>  That is, there are some boundaries on S according the b_funct
>  
>  The function apply an iterative convergent criterion:
>  
>  f_1=g(S), f_2=g(f_1), f_3=g(f_2), ecc....
>  The function stops when
>  f_n - f_n-1 <=0.1e-09
>  and g(S) is a non-linear function of S and the convergence is mathematically
>  assured.
>  
>  Is it possible to use  'optimize'?
>  
>  thanks
>  
>  domenico
>  
>  
>  2007/7/3, Spencer Graves <spencer.graves@pdf.com>:
>  >
>  >      Do you mean
>  >
>  >      minimize mu with 0 < b_func(S+mu) < 800?
>  >
>  >      For this kind of problem, I'd first want to know the nature of
>  > "b_func".  Without knowing more, I might try to plot b_func(S+mu) vs.
>  > mu, then maybe use 'optimize'.
>  >
>  >      If this is not what you mean, please be more specific:  I'm
>  > confused.
>  >
>  >      Hope this helps.
>  >      Spencer Graves
>  >
>  > domenico pestalozzi wrote:
>  > > I know it's possible to solve max e min problems  by using these
>  > functions:
>  > >
>  > > nlm, optimize, optim
>  > >
>  > > but I don't know how to use them (...if possible...) to solve this
>  > problem.
>  > >
>  > > I have a personal function called  b_func(S) where S is an input 
> array
>  > (1 X
>  > > n)  and I'd like:
>  > >
>  > > minimize mean(S) with 0 < b_funct < 800.
>  > >
>  > > I know that the solution exists, but It's possible to calculate 
> it in R?
>  > > The b_func is non linear and it calculates a particular value 
> using S as
>  > > input and applying a convergent iterative algorithm.
>  > >
>  > > thanks
>  > >
>  > >
>  > > domenico
>  > >
>  > >       [[alternative HTML version deleted]]
>  > >
>  > > ______________________________________________
>  > > R-help@stat.math.ethz.ch mailing list
>  > > 
>  > > PLEASE do read the posting guide
>  > 
>  > > and provide commented, minimal, self-contained, reproducible code.
>  > >
>  >
>  
>  	[[alternative HTML version deleted]]
>  
>  ______________________________________________
>  R-help@stat.math.ethz.ch mailing list
>  
>  PLEASE do read the posting guide 
>  and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

dp0AetAbqeB2