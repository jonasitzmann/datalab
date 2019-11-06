From r-help-bounces@stat.math.ethz.ch  Fri Jul  6 05:47:45 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l669liL9006053
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 6 Jul 2007 05:47:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l669l5ab015832;
	Fri, 6 Jul 2007 11:47:16 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l669kjQu015687
	for <r-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 11:46:51 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l669kh2x009108; 
	Fri, 6 Jul 2007 10:46:43 +0100 (BST)
Date: Fri, 6 Jul 2007 10:46:43 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Leo <sdl.web@gmail.com>
In-Reply-To: <m28x9tvre8.fsf@cam.ac.uk>
Message-ID: <Pine.LNX.4.64.0707061043200.22312@gannet.stats.ox.ac.uk>
References: <m28x9tvre8.fsf@cam.ac.uk>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Warning message: cannot create HTML package index
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

On Fri, 6 Jul 2007, Leo wrote:

> I have set R_LIBS=~/R_lib as I don't have root access.
>
> The following message shown up every time after installing a package:
>
>  ......
>  The downloaded packages are in
>  	/tmp/RtmpBoIPoz/downloaded_packages
>  Warning message:
>  cannot create HTML package index in: tools:::unix.packages.html(.Library)
>
> Any ideas?

It is a correct warning.  What is the problem with being warned?

R tries to maintain an HTML page of installed packages, but you don't have 
permission to update it.

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

       

-prg8