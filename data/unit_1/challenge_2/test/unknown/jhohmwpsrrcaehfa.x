From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 15:12:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65JCkL9030125
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 15:12:48 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65JC68p024834;
	Thu, 5 Jul 2007 21:12:12 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32810.mail.mud.yahoo.com (web32810.mail.mud.yahoo.com
	[68.142.206.40])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l65IOFOc007776
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 20:24:16 +0200
Received: (qmail 2648 invoked by uid 60001); 5 Jul 2007 18:24:14 -0000
X-YMail-OSG: HjnXOXMVM1l5O0S.o6ItAC21uDCylq..460lVEOV1.iPN925MSOJYYDa6LFRxQk2a8or_O4vLqrtn._ATWhXggVS29n6nr1Nh10BC6Wejp3rFp82aP0-
Received: from [130.15.106.174] by web32810.mail.mud.yahoo.com via HTTP;
	Thu, 05 Jul 2007 14:24:14 EDT
Date: Thu, 5 Jul 2007 14:24:14 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: Juan Pablo Fededa <jpfededa@gmail.com>, r-help@stat.math.ethz.ch
In-Reply-To: <7bff68f40707051029p6b3bff0ib0a0e7325674dcb@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <654618.2080.qm@web32810.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] help with vector construction
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

Or an alternative to Henrique's if you want to select
all the rows from row 2 up to the  3*n row this may
work.

 n  <- 2
 myvector <- data1[2:(2*n), 3]


--- Juan Pablo Fededa <jpfededa@gmail.com> wrote:

> Hi all,
> 
> I want to make a vector with the third column of a
> matrix, but only for the
> 2+3n rows of the matrix, with n being an entire
> number from 0 to a million.
> How can I do that in an easy way?
> Thanks in advance,
> 
> Juan Pablo
> 
> 	[[alternative HTML version deleted]]
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained,
> reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

Hel
m