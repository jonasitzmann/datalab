From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 02:06:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5F664L9030320
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 02:06:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F65WKI010486;
	Fri, 15 Jun 2007 08:05:45 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F64GXW010166
	for <R-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 08:04:16 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5F64EwJ011028; 
	Fri, 15 Jun 2007 07:04:15 +0100 (BST)
Date: Fri, 15 Jun 2007 07:04:14 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Andrew J Tyre <atyre2@unlnotes.unl.edu>
In-Reply-To: <OF5E761867.7175B709-ON862572FB.000A9272-862572FB.000AF244@unl.edu>
Message-ID: <Pine.LNX.4.64.0706150656080.28253@gannet.stats.ox.ac.uk>
References: <OF5E761867.7175B709-ON862572FB.000A9272-862572FB.000AF244@unl.edu>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] converting character strings to numbers
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

There is no support for 'thousands separators' in R's input/conversion 
routines, mainly because C has no support either (not even for output in 
the C standard).  We could of course add our own layer, but as far as I am 
aware this is the first time this has come up.

On Thu, 14 Jun 2007, Andrew J Tyre wrote:

> I have a comma delimited text file in which many columns of numbers are
> also quoted and have commas as well as decimals. I was surprised to find
> read.csv() didn't import this seamlessly, even after messing around with
> the colClasses argument. I did find a solution to convert the character
> strings after reading them in, but wonder if there isn't a better one I
> overlooked.
>
> test = c("10,522.5","11,768.9","11,354.3")
> as.numeric(test) # fails
> as.numeric(gsub(",","",test)) # works
>
> Any suggestions? Or is this as good as it gets? I'm not complaining ...
> just curious!
>
> Drew Tyre
>
> School of Natural Resources
> University of Nebraska-Lincoln
> 416 Hardin Hall, East Campus
> Lincoln, NE 68583-0974
> phone: +1 402 472 4054 fax: +1 402 472 2946
> email: atyre2@unl.edu
> http://snr.unl.edu/tyre
> 	[[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

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

           

> ucGtlbhA/4T=