From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 03:37:50 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l517bmhB006315
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 03:37:50 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l517afk0025523;
	Fri, 1 Jun 2007 09:36:49 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l517aXYM025498
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 09:36:34 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l517aNQl007314; 
	Fri, 1 Jun 2007 08:36:23 +0100 (BST)
Date: Fri, 1 Jun 2007 08:36:23 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Chung-hong Chan <chainsawtiney@gmail.com>
In-Reply-To: <30d7ea360705312133t52caef0cpa430435ab82cc7e@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.0706010833290.4568@gannet.stats.ox.ac.uk>
References: <30d7ea360705312133t52caef0cpa430435ab82cc7e@mail.gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Proxy Under Mac OS X
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

The most 'relevant document' is ?download.file, and there is AFAIK 
nothing specific to MacOS X about the code (and I did write it).

You can use

Sys.setenv(http_proxy="http://un:pw@proxy.com:port")

at the start of your R session, or use

http_proxy="http://un:pw@proxy.com:port"

in your ~/.Renviron file (see 'An Introduction to R' and ?Startup).


On Fri, 1 Jun 2007, Chung-hong Chan wrote:

> Dear R programmers,
>
> I can only config. proxy under Mac OS X terminal and launch R under 
> Terminal by
>
> Terminal:
>
> export http_proxy="http://un:pw@proxy.com:port"
>
> Under R:
>
>> chooseCRANmirror(graphics=FALSE)
>> update.packages()
>
> I don't know how to config this in R for Mac OS X Aqua GUI.
> I checked the relevant document but no specific steps for Mac OS X.
>
> Regards,
> Ch Chan
>
>
>
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

          

 Di;a