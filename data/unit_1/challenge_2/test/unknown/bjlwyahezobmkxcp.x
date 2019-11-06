From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 04:22:19 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T8MHL9022890
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 04:22:18 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T8Ka2B006141;
	Fri, 29 Jun 2007 10:20:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=AWL, BAYES_00,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T8KNkH005726;
	Fri, 29 Jun 2007 10:20:23 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5T8KI5X001169; 
	Fri, 29 Jun 2007 09:20:23 +0100 (BST)
Date: Fri, 29 Jun 2007 09:20:18 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Christoph Buser <buser@stat.math.ethz.ch>
In-Reply-To: <18051.53737.967004.143133@stat.math.ethz.ch>
Message-ID: <Pine.LNX.4.64.0706281801050.13288@gannet.stats.ox.ac.uk>
References: <18051.53737.967004.143133@stat.math.ethz.ch>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] embedFonts() and bounding box
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

As embedFonts creates a new file, the bounding box of the original one is 
not relevant.  (Yes, outfile = file by default, but it is still a new 
file.)

I guess the switches

     -dDEVICEWIDTHPOINTS=w -dDEVICEHEIGHTPOINTS=h

might help to create the new file with the bounding box you want.

On Thu, 28 Jun 2007, Christoph Buser wrote:

> Dear R gurus
>
> I have a question regarding the function embedFonts().
> I assume the in that function which calls gs, the bounding box
> of the eps file is changed. Is that by intention? Do I have
> call explicitly some gs-options to avoid it and if yes, how?
> Thank you very much for your help.
>
> Best regards,
>
> Christoph Buser
>
> ## R example
> postscript("test.eps", width = 14, height = 8,
>         onefile = FALSE, horizontal=FALSE, paper="special")
> plot(1:10)
> dev.off()
> embedFonts(file = "test.eps", outfile = "test1.eps")
>
>
> --------------------------------------------------------------
> Christoph Buser <buser@stat.math.ethz.ch>
> Seminar fuer Statistik, LEO C13
> ETH Zurich	8092 Zurich	 SWITZERLAND
> phone: x-41-44-632-4673		fax: 632-1228
> http://stat.ethz.ch/~buser/
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

               

c  XP