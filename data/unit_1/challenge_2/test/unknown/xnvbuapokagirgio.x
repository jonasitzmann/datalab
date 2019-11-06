From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 08:32:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JCWNL9029347
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 08:32:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCUQEc029255;
	Tue, 19 Jun 2007 14:30:39 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from justus.rz.uni-saarland.de (justus.rz.uni-saarland.de
	[134.96.7.31])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCP40Z027224
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 14:25:04 +0200
Received: from [134.96.96.42] (pc03.oeko.uni-saarland.de [134.96.96.42])
	by justus.rz.uni-saarland.de (8.12.11.20060614/8.12.10) with ESMTP id
	l5JCP0G019546138; Tue, 19 Jun 2007 14:25:00 +0200 (CEST)
Message-ID: <4677CB1E.4050006@mx.uni-saarland.de>
Date: Tue, 19 Jun 2007 14:25:02 +0200
From: Martin Becker <martin.becker@mx.uni-saarland.de>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Gabor Grothendieck <ggrothendieck@gmail.com>
References: <0143A263BEF94644AC0D4027373EECD3054309AE@exyhmb08.jpn.nsroot.net>
	<971536df0706190442g460ea227se87e12d88ee92f9d@mail.gmail.com>
In-Reply-To: <971536df0706190442g460ea227se87e12d88ee92f9d@mail.gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-1.5.1
	(justus.rz.uni-saarland.de [134.96.7.31]);
	Tue, 19 Jun 2007 14:25:00 +0200 (CEST)
X-AntiVirus: checked by AntiVir Milter (version: 1.1.3-1; AVE: 7.4.0.34;
	VDF: 6.39.0.33; host: AntiVir2)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How do I avoid a loop?
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

Gabor Grothendieck wrote:
> xx is 1 in every position of the first run of TRUE, 2 in every
> position in the 2nd run of TRUE and so on.  The parenthesized
> expression in the second line converts those to increasing
> values and multiplying it by x zaps the garbage in the positions
> that correspond to FALSE in x.
>
> xx <- cumsum(diff(c(FALSE, x)) > 0)
> (seq_along(x) - match(xx, xx) + 1) * x
>
>   

If speed is a critical issue, there is another possibility. Thanks to 
Oleg Sklyar's "inline"-package, embedding C code is now quite easy:

library(inline)
code <- readLines(textConnection("
  SEXP res;
  PROTECT(res=allocVector(INTSXP,LENGTH(a)));
  int i,j=0;
  int *result = INTEGER(res);
  int *input  = INTEGER(a);
  for (i=0;i<LENGTH(a);i++) {
    if (input[i]) j = j+1; else j = 0;
    result[i] = j;
  }
  UNPROTECT(1);
  return res;
"))
myfastfunc <- cfunction(signature(a="logical"), code)

This solution is about ten times faster than Gabor's on my machine (time 
to compile the C code excluded!).

Regards,

   Martin

> On 6/19/07, Feng, Ken <ken.feng@citi.com> wrote:
>   
>> Hi,
>>
>> I start with an array of booleans:
>>
>>        x <- c( TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE );
>>
>> I want to define an y <- f(x) such that:
>>
>>        y <- c( 1, 2, 3, 0, 0, 1, 2, 0, 1 );
>>
>> In other words, do a cumsum when I see a TRUE, but reset to 0 if I see a FALSE.
>>
>> I know I can do this with a very slow and ugly loop or maybe use apply,
>> but I was hoping there are some R experts out there who can show me
>> a cleaner/more elegant solution?
>>
>> Thanks in advance.
>>
>> - Ken
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>>     
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

            

"IilcSefqitl;N