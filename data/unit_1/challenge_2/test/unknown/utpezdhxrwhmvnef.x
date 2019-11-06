From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 07:49:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64Bn3L9010097
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 07:49:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64BmM7l006615;
	Wed, 4 Jul 2007 13:48:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp2.kfki.hu (smtp-in.kfki.hu [148.6.0.28])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64BmEJ1006573
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 13:48:14 +0200
Received: from localhost (localhost [127.0.0.1])
	by smtp2.kfki.hu (Postfix) with ESMTP id 2DB044C257;
	Wed,  4 Jul 2007 13:48:14 +0200 (CEST)
Received: from smtp2.kfki.hu ([127.0.0.1])
	by localhost (smtp2.kfki.hu [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP
	id 19012-10; Wed,  4 Jul 2007 13:48:14 +0200 (CEST)
Received: from localhost (bifur.rmki.kfki.hu [148.6.176.200])
	by smtp2.kfki.hu (Postfix) with ESMTP id 4C6934C119;
	Wed,  4 Jul 2007 13:48:13 +0200 (CEST)
Date: Wed, 4 Jul 2007 13:48:12 +0200
From: Gabor Csardi <csardi@rmki.kfki.hu>
To: Deb Midya <debmidya@yahoo.com>
Message-ID: <20070704114758.GA5713@guzu>
References: <489626.40553.qm@web50401.mail.re2.yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <489626.40553.qm@web50401.mail.re2.yahoo.com>
X-PGP-Key: http://www.rmki.kfki.hu/~csardi/pubkey.asc
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Calling C Code from R
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

On Wed, Jul 04, 2007 at 04:39:18AM -0700, Deb Midya wrote:
> Hi R Users,
>    
>   Thanks in advance.
>    
>   I am using R-2.5.1 on Windows XP.
>    
>   I am trying to call C code (testCX1.C) from R. testCX1.c calls another C code (funcC1.c) and returning a value to testCX1.c. I like to have this value in R.
>    
>   My steps are below:
>    
>   1. R CMD SHLIB testCX1.c funcC1.c (at command propmt)
>    
>   2. It creates testCX1.dll with warning (but testCX1.dll works):
>    
>   testCX1.c:38: warning: implicit declaration of function 'func'
>    
>   How to get rid off this error ?

By adding the prototype of 'func' to testCX1.c:

SEXP func(SEXP a);

Probably it is simplest to collect all prototypes in a single header file
and include that from all .c files.

>   What is the best way to call funcC1.c from testCX1.c?

See .C and .Call and in particular the 'Writing R Extensions' manual,
5 System and foreign language interfaces.

Gabor

[...]

-- 
Csardi Gabor <csardi@rmki.kfki.hu>    MTA RMKI, ELTE TTK

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

8xs 3GaamaurW>