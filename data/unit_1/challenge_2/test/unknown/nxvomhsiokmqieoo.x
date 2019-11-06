From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 03:00:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5I6xxL9014640
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 02:59:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5I6wUA9020259;
	Mon, 18 Jun 2007 08:58:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5I6vuuj019827
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 08:57:56 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5I6voIW001459; 
	Mon, 18 Jun 2007 07:57:50 +0100 (BST)
Date: Mon, 18 Jun 2007 07:57:50 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: spime <sabya23@gmail.com>
In-Reply-To: <11170223.post@talk.nabble.com>
Message-ID: <Pine.LNX.4.64.0706180751070.27212@gannet.stats.ox.ac.uk>
References: <11170223.post@talk.nabble.com>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Loading problem with R2HTML package
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

On Sun, 17 Jun 2007, spime wrote:

> I have downloaded latest version of R2HTML (v1.54) for 64-bit windows 
> PC.

The latest version is 1.58 from September 2006.  See
http://cran.r-project.org/src/contrib/Descriptions/R2HTML.html

> My R version 2.5.0. My problem arises when i want to install SciViews-R 
> which need R2HTML package.
>
>> library(R2HTML)
> Error in `parent.env<-`(`*tmp*`, value = NULL) :
>        use of NULL environment is defunct
> Error: package/namespace load failed for 'R2HTML'
>
> Any remedy ?

Use the real 'latest version'.  Have you perhaps used a broken 'mirror' of 
CRAN?

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



 pglo_