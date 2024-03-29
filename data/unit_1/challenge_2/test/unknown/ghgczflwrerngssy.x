From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 01:09:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l6359kL9023896
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 01:09:47 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63594uY013166;
	Tue, 3 Jul 2007 07:09:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=AWL, BAYES_00,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l6358vY0013116
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 07:08:57 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l6358oLi024487; 
	Tue, 3 Jul 2007 06:08:51 +0100 (BST)
Date: Tue, 3 Jul 2007 06:08:50 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Bruce <bthatcher@att.net>
In-Reply-To: <200707021519.33520.bthatcher@att.net>
Message-ID: <Pine.LNX.4.64.0707030604180.12715@gannet.stats.ox.ac.uk>
References: <200707021519.33520.bthatcher@att.net>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Problem installing R packages in OpenBSD
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

1) You are not supposed to have R_HOME set in your environment: that is 
the job of the R front-end script.

2) R 2.4.1 is obsolete, but I believe the relevant line is

. "${R_SHARE_DIR}/sh/dcf.sh"    # get_dcf_field()

R_SHARE_DIR is set in the R front-end script, so that's where to 
investigate.

On Mon, 2 Jul 2007, Bruce wrote:

> OS:  OpenBSD version 4.1 i386
> R version 2.4.1 (2006-12-18) installed as a binary package

The R project does not distribute binary packages for OpenBSD, so this is 
really an issue for whoever does.

> $ ls
> mapproj_1.1-7.1.tar.gz     maps_2.0-36.tar.gz
>
> $ sudo R CMD INSTALL mapproj_1.1-7.1.tar.gz
>
> /usr/local/lib/R/bin/INSTALL[118]:
>  .: /usr/obj/i386/R-2.4.1/fake-i386/usr/local/lib/R/share/sh/dcf.sh: not
> found
>
> I get the same error message from the R command prompt using
> install.packages("mapproj", dep=TRUE)
>
> Questions regarding  /usr/obj/i386/R-2.4.1/fake-i386:
> o Where did this path come from?
> o Is there a conflict between OpenBSD ports and R packages?
> o Is OpenBSD ports trying to do the package install?  If so, how do I stop it?
>
> Please note that I have installed R packages successfully on Linux, Windows XP
> and FreeBSD.
>
> Background information
> -------------------------------------------
> Environment variables:
> $ echo $R_HOME
> /usr/local/lib/R
> $ echo $R_LIBS
> /usr/local/lib/R/library
>
> R install:
> $ pwd
> /usr/local/lib/R/share/sh
> $ ls -l
> total 16
> -r--r--r--  1 root  bin   392 Mar  9 00:57 dcf.sh
> -r--r--r--  1 root  bin    27 Mar  9 00:57 echo.sh
> -r--r--r--  1 root  bin  1506 Mar  9 00:57 help-links.sh
> -r--r--r--  1 root  bin   825 Mar  9 00:57 help-print.sh
>
> Thanks
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

                 

eWne:qstUn@tIvg