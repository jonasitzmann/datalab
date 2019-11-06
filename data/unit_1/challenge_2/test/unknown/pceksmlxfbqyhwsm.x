From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 09:57:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5IDvcL9018170
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 09:57:39 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IDutQf013218;
	Mon, 18 Jun 2007 15:57:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IDulGp013181
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <R-help@r-project.org>; Mon, 18 Jun 2007 15:56:48 +0200
Received: from [192.168.0.176] (djm.stats.uwo.ca [129.100.76.113])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l5IDugPD026936;
	Mon, 18 Jun 2007 09:56:42 -0400
Message-ID: <46768F7E.8090709@stats.uwo.ca>
Date: Mon, 18 Jun 2007 09:58:22 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Robin Hankin <r.hankin@noc.soton.ac.uk>
References: <42B9A932-99E8-4788-B66A-FB12A9FA1DD6@noc.soton.ac.uk>
In-Reply-To: <42B9A932-99E8-4788-B66A-FB12A9FA1DD6@noc.soton.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R program <R-help@r-project.org>
Subject: Re: [R] triangle contour plots
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

On 6/18/2007 8:12 AM, Robin Hankin wrote:
> Suppose I have three numbers p1, p2, p3 with
> 0 <= p1,p2,p3 <= 1  and p1+p2+p3=1,
> and a  function  f=f(p1,p2,p3)   =  f(p1,p2,1-p1-p2).
> 
> How to draw a contour plot of f() on the p1+p2+p3=1 plane,
> that is, an equilateral triangle?

The usual contour function leaves blanks where you give it NA values, so 
you could put the f values into a rectangular array with NA outside the 
triangle and use that.

I don't know how you're thinking of displaying things, but one possible 
transformation from (x,y) to (p1, p2, p3) would be

  f <- function(p1, p2, p3) p3  # just to illustrate

  maxy <- sin(pi/3)
  x <- seq(0,1,len=100)
  y <- seq(0, maxy, len=100)
  p1 <- outer(x,y, function(x,y) x - y/maxy/2)
  p2 <- outer(x,y, function(x,y) y/maxy)
  p3 <- 1-p1-p2
  z <- ifelse(0 < p1 & 0 < p3, f(p1,p2,p3), NA)
  contour(x,y,z)

This puts p1==1 at the bottom right, p2==1 at the top, and p3==1 at the 
bottom left.

Duncan Murdoch

> 
> Functions triplot(), triangle.plot(), and ternaryplot()  give
> only  scatterplots, AFAICS
> 
> 
> 
> 
> 
> --
> Robin Hankin
> Uncertainty Analyst
> National Oceanography Centre, Southampton
> European Way, Southampton SO14 3ZH, UK
>   tel  023-8059-7743
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

-  Gsenp 3