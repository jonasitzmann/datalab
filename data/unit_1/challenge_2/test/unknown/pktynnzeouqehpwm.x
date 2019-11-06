From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 07:03:50 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KB3nL9009056
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 07:03:50 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KB2GRs018961;
	Wed, 20 Jun 2007 13:03:17 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KAs4hD015881
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 12:54:05 +0200
Received: from [127.0.0.1]
	(IDENT:U2FsdGVkX190LOXYjNYvWRo8v6rrDFMyFPvBRXk6y48@localhost.localdomain
	[127.0.0.1])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l5KAs1ou015260;
	Wed, 20 Jun 2007 06:54:01 -0400
Message-ID: <46790736.7070008@stats.uwo.ca>
Date: Wed, 20 Jun 2007 06:53:42 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Federico Calboli <f.calboli@imperial.ac.uk>
References: <467905A0.2010407@imperial.ac.uk>
In-Reply-To: <467905A0.2010407@imperial.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] non permanent change of vector values
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

On 20/06/2007 6:46 AM, Federico Calboli wrote:
> Hi All,
> 
> I have the following problem: I have a vector
> 
> x = rep(0,15)
> x[1:2] = 1
> x
>   [1] 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
> 
> I need to be able to call that vector 'x' so that if condition 'A' is true, only 
> the first value is kept 'as is' and all the others are put to 0
> 
> if(A == T)
> 
> function(x) with x returning 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
> 
> and if 'A' is false the second value is kept 'as is' and all the others are put to 0
> 
> if(A == F)
> 
> function(x) with x returning 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
> 
> BUT, and that's the rub, I need x to changed in a *non permanent* way, so that 
> at the end x is still
> 
> x
>   [1] 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
> 
> (that is because condition 'A' might be called again and could be different in 
> it's T/F state from previous calls).

Simply make a function that does what you want:

modifyx <- function(x, A) {
   if (A) x[-1] <- 0
   else x[-2] <- 0
   x
}

then call your function by passing modifyx(x, A) instead of just x.

You don't need to put A or x in the argument list of the function, but 
it probably makes sense to do so.

Duncan Murdoch

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

�scJtI5u a