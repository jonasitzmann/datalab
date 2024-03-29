From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 14:14:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JIESL9032431
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 14:14:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JICF6q003041;
	Tue, 19 Jun 2007 20:12:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.229])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JIC6qq002972
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 20:12:06 +0200
Received: by nz-out-0506.google.com with SMTP id o37so1584826nzf
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 11:12:05 -0700 (PDT)
Received: by 10.143.167.4 with SMTP id u4mr478340wfo.1182276725368;
	Tue, 19 Jun 2007 11:12:05 -0700 (PDT)
Received: by 10.143.155.18 with HTTP; Tue, 19 Jun 2007 11:12:05 -0700 (PDT)
Message-ID: <eb555e660706191112y48b9b4fdxec3c61ff5fc44d35@mail.gmail.com>
Date: Tue, 19 Jun 2007 11:12:05 -0700
From: "Deepayan Sarkar" <deepayan.sarkar@gmail.com>
To: "Juan Pablo Lewinger" <lewinger@usc.edu>
In-Reply-To: <0JJV0059QH2O47D0@msg-mx5.usc.edu>
MIME-Version: 1.0
Content-Disposition: inline
References: <0JJV0059QH2O47D0@msg-mx5.usc.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
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

On 6/19/07, Juan Pablo Lewinger <lewinger@usc.edu> wrote:
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

This has been discussed on the list before (if I remember correctly), and I
have been meaning to add something to the latticeExtra package.  An
implementation would look something like this (beware of line wrapping):


useOuterStrips <-
    function(x,
             strip = strip.default,
             strip.left = strip.custom(horizontal = FALSE))
{
    dimx <- dim(x)
    stopifnot(inherits(x, "trellis"))
    stopifnot(length(dimx) == 2)
    opar <- if (is.null(x$par.settings)) list() else x$par.settings
    par.settings <-
        modifyList(opar,
                   list(layout.heights =
                        list(strip = c(rep(0, dimx[2]-1), 1)),
                        layout.widths =
			list(strip.left = c(1, rep(0, dimx[1]-1)))))
    update(x,
           par.settings = par.settings,
           strip = function(which.given, which.panel, ...) {
               if (which.given == 1)
                   strip(which.given = 1,
                         which.panel = which.panel[1],
                         ...)
           },
           strip.left = function(which.given, which.panel, ...) {
               if (which.given == 2)
                   strip.left(which.given = 1,
                              which.panel = which.panel[2],
                              ...)
           },
           par.strip.text = list(lines = 0.5),
           layout = dimx)
}


The function acts on a "trellis" object and returns an updated one, so
for your example, it would work like:

useOuterStrips(xyplot(y ~ x | g1 + g2, groups=g3, data=DF))


> 2) How do I control the text of the strips so that for instance
> instead of "a" and "b" it reads"g1=alpha", "g1=beta" where "alpha"
> and "beta" stand for the corresponding greek symbols? (my difficulty
> here is not with the plotmath symbols but with controlling the text
> of the strips directly from the call to xyplot and not by renaming
> the levels of g1)

Generally speaking, you need to write your own strip function.  The
default (strip.default) has some useful arguments that modify its
behaviour, and in particular 'factor.levels' might do what you
want.  If you are going to do this in conjunction with (1), life will
actually be simpler and you can get away with using strip.custom():


useOuterStrips(xyplot(y ~ x | g1 + g2, groups=g3, data=DF),
               strip =
               strip.custom(factor.levels =
                            expression(g[1]==alpha, g[1]==beta)),
               strip.left =
               strip.custom(horizontal = FALSE,
                            factor.levels =
                            expression(g[2]==gamma, g[2]==delta)))


Otherwise, you will really have to write a proper strip function that
calls strip.default() with different values of 'factor.levels'
depending on the value of 'which.given'.

Note also the 'strip.names' and 'sep' argument of strip.default(),
which might be more in line with what you want to do.

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

r0 sl
pwb