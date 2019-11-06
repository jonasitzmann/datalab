From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 08:46:03 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JCk2L9029493
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 08:46:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCj6JW002948;
	Tue, 19 Jun 2007 14:45:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCiuno002869
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 14:44:58 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I0d4q-0003AX-5m
	for r-help@stat.math.ethz.ch; Tue, 19 Jun 2007 05:44:56 -0700
Message-ID: <11193990.post@talk.nabble.com>
Date: Tue, 19 Jun 2007 05:44:56 -0700 (PDT)
From: Mark Difford <mark_difford@yahoo.co.uk>
To: r-help@stat.math.ethz.ch
In-Reply-To: <0JJV0059QH2O47D0@msg-mx5.usc.edu>
MIME-Version: 1.0
X-Nabble-From: mark_difford@yahoo.co.uk
References: <0JJV0059QH2O47D0@msg-mx5.usc.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Controlling text and strip arrangement in xyplot
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


Hi Pablo,

> DF <- data.frame(x=rnorm(20), y=rnorm(20), g1=rep(letters[1:2], 10), 
>        g2=rep(LETTERS[1:2], each=10), 
> g3=rep(rep(letters[3:4],each=5),2))
>
> xyplot(y ~ x | g1 + g2, groups=g3, data=DF)
...

I remember findling with this some time ago and getting most of the way
there.  If you have to use lattice, then the following may help you.  It's
close, but not quite what you want; you almost certainly need to write a
custom panel function.  Hopefully Deepayan will step in (as he usually does)
to help you.

1) Look at ?strip.default, as well as ?xyplot (search for "strip",
"strip.left")

2) Example:

xyplot(y ~ x | interaction(g1,g2, drop=TRUE), groups=g3, data=DF,
strip.left=strip.custom(factor.levels=c("A","A","B","B")),
strip=strip.custom(factor.levels=rep(c("g1=a","g1=b"),2)))

Hope that helps,

Regards,
Mark.


Pablo Lewinger wrote:
> 
> I've searched the archives and read the xyplot help but can't figure 
> out the 2 lattice questions below?
> 
> Consider:
> 
> library(lattice)
> DF <- data.frame(x=rnorm(20), y=rnorm(20), g1=rep(letters[1:2], 10),
>                   g2=rep(LETTERS[1:2], each=10), 
> g3=rep(rep(letters[3:4],each=5),2))
> 
> xyplot(y ~ x | g1 + g2, groups=g3, data=DF)
> 
> 1) Is there a way to get one strip per row and column of panels as 
> below instead of the default?
> 
> 
>         _|__a__|__b__|
>          |
>        B
>          |
>         --
>          |
>        A
>          |
> 
> 2) How do I control the text of the strips so that for instance 
> instead of "a" and "b" it reads"g1=alpha", "g1=beta" where "alpha" 
> and "beta" stand for the corresponding greek symbols? (my difficulty 
> here is not with the plotmath symbols but with controlling the text 
> of the strips directly from the call to xyplot and not by renaming 
> the levels of g1)
> 
> I'd appreciate any help!
> 
> 
> Juan Pablo Lewinger
> Department of Preventive Medicine
> Keck School of Medicine
> University of Southern California
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 

-- 
View this message in context: http://www.nabble.com/Controlling-text-and-strip-arrangement-in-xyplot-tf3944756.html#a11193990
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

mrtic b>tRe@ 0