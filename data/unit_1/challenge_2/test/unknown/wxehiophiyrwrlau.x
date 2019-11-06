From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 07:22:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FBMSL9001231
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 07:22:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FBKi6Y011321;
	Fri, 15 Jun 2007 13:21:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=AWL, BAYES_00,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FBKL0X011155
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 13:20:21 +0200
Received: from [192.168.1.100] (cpc3-oxfd4-0-0-cust250.oxfd.cable.ntl.com
	[86.2.112.251])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5FBKCt4002745; 
	Fri, 15 Jun 2007 12:20:12 +0100 (BST)
Date: Fri, 15 Jun 2007 12:20:06 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
X-X-Sender: ripley@auk.stats
To: Leonardo Lami <lami@faunalia.it>
In-Reply-To: <46725C91.3020603@faunalia.it>
Message-ID: <Pine.LNX.4.64.0706151217130.4380@auk.stats>
References: <46725C91.3020603@faunalia.it>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] gpclib problem
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

On Fri, 15 Jun 2007, Leonardo Lami wrote:

> Hi all,
> I am trying to test the new adehabitat package but I have a problem with
> a linked library, "gpclib".
>
> When I try do install it I have this output:
>
> install.packages("gpclib", dependencies=TRUE,
> repos="http://cran.cnr.berkeley.edu/")
> Avviso in install.packages("gpclib", dependencies = TRUE, repos =
> "http://cran.cnr.berkeley.edu/") :
> argument 'lib' is missing: using /usr/local/lib/R/site-library
> dependency ''gpclib'' is not available
>
> I have the same problem in other repository.

You haven't told us your OS or R version (or what the 'other repository' 
was).  The files are there

http://cran.cnr.berkeley.edu/src/contrib/Descriptions/gpclib.html

so a guess is that you have failed to update your R.

> Leonardo
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

Please do as this asks.


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

        

Wsdi.Y r1n 