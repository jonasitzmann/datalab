From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 02:03:54 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5863qhB011465
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 02:03:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5862Nm1016171;
	Fri, 8 Jun 2007 08:02:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5862Iob016153
	for <r-help@r-project.org>; Fri, 8 Jun 2007 08:02:18 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l58627ur013497; 
	Fri, 8 Jun 2007 07:02:07 +0100 (BST)
Date: Fri, 8 Jun 2007 07:02:07 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Zack Weinberg <zackw@panix.com>
In-Reply-To: <eb97335b0706072201r9ad1ba1s37bc66611d76fb68@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.0706080657290.22532@gannet.stats.ox.ac.uk>
References: <eb97335b0706072201r9ad1ba1s37bc66611d76fb68@mail.gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@r-project.org
Subject: Re: [R] evaluating variables in the context of a data frame
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

On Thu, 7 Jun 2007, Zack Weinberg wrote:

> Given
>
>> D = data.frame(o=gl(2,1,4))
>
> this works as I expected:
>
>> evalq(o, D)
> [1] 1 2 1 2
> Levels: 1 2
>
> but neither of these does:
>
>> f <- function(x, dat) evalq(x, dat)
>> f(o, D)
> Error in eval(expr, envir, enclos) : object "o" not found
>> g <- function(x, dat) eval(x, dat)
>> g(o, D)
> Error in eval(x, dat) : object "o" not found
>
> What am I doing wrong?  This seems to be what the helpfiles say you do
> to evaluate arguments in the context of a passed-in data frame...

When you call f(o, D), the argument 'o' is evaluated in the current 
environment ('context' in R means something different).  Because of lazy 
evaluation, it is not evaluated until evalq is called, but it evaluated as 
if it was evaluated greedily.

g(quote(o), D) will work.


-- 
Brian D. Ripley,                  ripley@stats.ox.ac.uk
Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
University of Oxford,             Tel:  +44 1865 272861 (self)
1 South Parks Road,                     +44 1865 272866 (PA)
Oxford OX1 3TG, UK                Fax:  +44 1865 272595

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

5cflEho� i