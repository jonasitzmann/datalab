From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 03:41:26 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l577fOhB031538
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 03:41:25 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l577dfUh015182;
	Thu, 7 Jun 2007 09:40:00 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=AWL, BAYES_05,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l577dZQi015161
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 09:39:35 +0200
Received: from [192.168.1.100] (cpc3-oxfd4-0-0-cust250.oxfd.cable.ntl.com
	[86.2.112.251])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l577dMAr029699; 
	Thu, 7 Jun 2007 08:39:22 +0100 (BST)
Date: Thu, 7 Jun 2007 08:39:29 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
X-X-Sender: ripley@auk.stats
To: toby909@gmail.com
In-Reply-To: <f47bja$fd4$1@sea.gmane.org>
Message-ID: <Pine.LNX.4.64.0706070837340.20389@auk.stats>
References: <f47bja$fd4$1@sea.gmane.org>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] opening a file from within a zipfile that is online
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

'description' has to be a filepath of a zip file.  You will have to 
download it first.

On Wed, 6 Jun 2007, toby909@gmail.com wrote:

> Hi
>
> Reading the help for ?unz I was wondering if I can read data into R from within
> an zipfile that is on some website, like maybe:
>
> dtaa =
> read.table(unz("http://www.ats.ucla.edu/stat/examples/alsm/alsm.zip","Ch01pr19.dat"))
>
> Thanks for letting me know if you came acros such a thing before.
>
> Toby
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



xr./H
-
:Ka