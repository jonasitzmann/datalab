From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 03:51:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L7pOL9021165
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 03:51:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L7oNuD030261;
	Thu, 21 Jun 2007 09:50:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=AWL, BAYES_05,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L7WN3Y022940
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 09:32:23 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5L7WGnL027834; 
	Thu, 21 Jun 2007 08:32:16 +0100 (BST)
Date: Thu, 21 Jun 2007 08:32:16 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Deli Wang <wangdeli@gmail.com>
In-Reply-To: <626c66f20706201350v3f61f433ted4b33f721cd5893@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.0706210829020.27598@gannet.stats.ox.ac.uk>
References: <626c66f20706201350v3f61f433ted4b33f721cd5893@mail.gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How to create .rda file to be used in package building
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

On Wed, 20 Jun 2007, Deli Wang wrote:

> Hi,
>
> Can someone tell me how to create .rda data files in R so that they can be
> used contributed package?

The manual says

   Currently, data files can have one of three types as indicated by their
   extension: plain R code (.R or .r), tables (.tab, .txt, or .csv), or
   save() images (.RData or .rda). (All ports of R use the same binary
   (XDR) format and can read compressed images. Use images saved with save(,
   compress = TRUE), the default, to save space.)

What more information do you need?  ?save may help you.


>
> Thanks
>
> Deli Wang
>
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

           

p nKRutb