From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 14:40:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58IeBhB018695
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 14:40:13 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58IbUS1007217;
	Fri, 8 Jun 2007 20:37:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58IbM1S007164
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@r-project.org>; Fri, 8 Jun 2007 20:37:23 +0200
Received: from [192.168.0.176] (djm.stats.uwo.ca [129.100.76.113])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l58IbIWA007492;
	Fri, 8 Jun 2007 14:37:18 -0400
Message-ID: <4669A239.9050901@stats.uwo.ca>
Date: Fri, 08 Jun 2007 14:38:49 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Zack Weinberg <zackw@panix.com>
References: <eb97335b0706072201r9ad1ba1s37bc66611d76fb68@mail.gmail.com>	<Pine.LNX.4.64.0706080657290.22532@gannet.stats.ox.ac.uk>
	<eb97335b0706080833r2febdedej7bbf27d330da3787@mail.gmail.com>
In-Reply-To: <eb97335b0706080833r2febdedej7bbf27d330da3787@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@r-project.org, Prof Brian Ripley <ripley@stats.ox.ac.uk>
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

On 6/8/2007 11:33 AM, Zack Weinberg wrote:
> On 6/7/07, Prof Brian Ripley <ripley@stats.ox.ac.uk> wrote:
>> >> f <- function(x, dat) evalq(x, dat)
>> >> f(o, D)
>> > Error in eval(expr, envir, enclos) : object "o" not found
>> >> g <- function(x, dat) eval(x, dat)
>> >> g(o, D)
>> > Error in eval(x, dat) : object "o" not found
>> >
>> > What am I doing wrong?  This seems to be what the helpfiles say you do
>> > to evaluate arguments in the context of a passed-in data frame...
>>
>> When you call f(o, D), the argument 'o' is evaluated in the current
>> environment ('context' in R means something different).  Because of lazy
>> evaluation, it is not evaluated until evalq is called, but it evaluated as
>> if it was evaluated greedily.
>>
>> g(quote(o), D) will work.
> 
> Thanks.
> 
> After a bit more experimentation I figured out that this does what I want:
> 
>> h <- function(x, d) eval(substitute(x), d, parent.frame())
> 
> but I don't understand why the substitute() helps, or indeed why it
> has any effect at all...

Within the evaluation frame of h, x is a promise to evaluate an 
expression.  substitute(x) extracts the expression.  If you just use x, 
it gets evaluated in the frame from which h was called, rather than in a 
frame created from d.

Duncan Murdoch

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

oK�ba;ra�<e