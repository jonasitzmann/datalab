From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 16:34:34 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58KYXL9001333
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 16:34:34 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58KX5A5015871;
	Fri, 8 Jun 2007 22:33:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wr-out-0506.google.com (wr-out-0506.google.com [64.233.184.239])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58KWtvR015793
	for <r-help@r-project.org>; Fri, 8 Jun 2007 22:32:56 +0200
Received: by wr-out-0506.google.com with SMTP id i22so872809wra
	for <r-help@r-project.org>; Fri, 08 Jun 2007 13:32:55 -0700 (PDT)
Received: by 10.142.84.3 with SMTP id h3mr165223wfb.1181334774974;
	Fri, 08 Jun 2007 13:32:54 -0700 (PDT)
Received: by 10.143.7.9 with HTTP; Fri, 8 Jun 2007 13:32:54 -0700 (PDT)
Message-ID: <eb555e660706081332j2ccebd17rd14ea6cb73403205@mail.gmail.com>
Date: Fri, 8 Jun 2007 13:32:54 -0700
From: "Deepayan Sarkar" <deepayan.sarkar@gmail.com>
To: "Zack Weinberg" <zackw@panix.com>
In-Reply-To: <eb97335b0706081212r7bc5843fv152e1f8147efb78c@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <eb97335b0706081212r7bc5843fv152e1f8147efb78c@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@r-project.org
Subject: Re: [R] still trying to wrap xyplot - ignore previous
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

On 6/8/07, Zack Weinberg <zackw@panix.com> wrote:
> As you may not be surprised to hear, no sooner did I post the previous
> message than I realized I had a really dumb mistake.  I've now gotten
> a bit farther but am still stuck.  New code:
>
> graph <- function (x, data, groups, xlab) {
>   pg <- function(x, y, group.number, ...) fnord
>   body(pg) <- substitute({
>     panel.xyplot(x, y, ..., group.number=group.number)
>     panel.text(2, unique(y[x==2]),
>                levels(G)[group.number],
>                pos=4, cex=0.5)
>   }, list(G=eval(substitute(groups), data, parent.frame())))
>
>   print(xyplot(x, data=data, groups=substitute(groups),
>                type='l',
>                ylab=list(cex=1.1, label='Mean RT (ms)'),
>                xlab=list(cex=1.1, label=xlab),
>                scales=list(
>                  x=list(alternating=c(1,1), tck=c(1,0)),
>                  y=list(alternating=c(1,0))
>                  ),
>                panel=panel.superpose,
>                panel.groups=pg
>               ))
> }
>
> Questions:
> 1) The "groups=substitute(groups)" bit (in the call to xyplot) still
> doesn't work.  As far as I can tell, xyplot wants the *symbol* which
> is the name of the factor (in the data frame) to group by.
> The above seems to wind up passing it the symbol "groups", which
> causes the prepanel function to barf.  I have not been able to find
> any way to evaluate one layer of "groups" to get me the symbol passed
> in, rather than the value of that symbol.  Am I right?  How do I give
> it what it wants?
>
> 2) Why do I have to do that stupid dance with replacing the body of
> pg?  The documentation leads me to believe this is a lexically scoped
> language, shouldn't it be able to pick G out of the enclosing frame?

This is all a consequence of non-standard evaluation, which can be a
real pain sometimes. I don't have a solution that is "intuitive", but
I don't think there is one. This is what I would do (and there are
examples of this in lattice, e.g. see lattice:::dotplot.formula):


graph <- function (x, data, groups, xlab) {

    ## set up g and pg (lexical scope does work here)
    g <- eval(substitute(groups), data, parent.frame())
    pg <- function(x, y, group.number, ...) {
        panel.xyplot(x, y, ..., group.number=group.number)
        panel.text(2, unique(y[x==2]),
                   levels(g)[group.number],
                   pos=4, cex=0.5)
    }

    ## modify and evaluate call without
    ## actually evaluating 'groups'
    ccall <- match.call()
    ccall[[1]] <- quote(xyplot)
    fixed.args <-
        list(type='l',
             ylab=list(cex=1.1, label='Mean RT (ms)'),
             xlab=list(cex=1.1, label=xlab),
             scales=list(
             x=list(alternating=c(1,1), tck=c(1,0)),
             y=list(alternating=c(1,0))
             ),
             panel="panel.superpose",
             panel.groups = pg)
    ccall[names(fixed.args)] <- fixed.args
    eval.parent(ccall)
}

sm <- data.frame(x = 1:10, y = rnorm(10), a = gl(3, 1, 10))
graph(y ~ x, sm, a, "foo")

This is a different approach from the one you were trying, but I think
it makes more sense once you get used to it. Note that there are some
subtle things going on here. The 'g' used by pg() is available only
because the relevant environment is stored and is accessible through
the "trellis" object:

> foo <- graph(y ~ x, sm, a, "foo")
> ls(environment(foo$panel.args.common$panel.groups))
[1] "ccall"      "data"       "fixed.args" "g"          "groups"
[6] "pg"         "x"          "xlab"

Hope this helps,

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

AYV6lBqXr