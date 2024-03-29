From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 13:01:38 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63H1bL9031351
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 13:01:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63H0qWX015503;
	Tue, 3 Jul 2007 19:00:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wr-out-0506.google.com (wr-out-0506.google.com [64.233.184.225])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63H0jXm015471
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 19:00:45 +0200
Received: by wr-out-0506.google.com with SMTP id 25so1239728wry
	for <r-help@stat.math.ethz.ch>; Tue, 03 Jul 2007 10:00:45 -0700 (PDT)
Received: by 10.90.50.1 with SMTP id x1mr6438381agx.1183482045003;
	Tue, 03 Jul 2007 10:00:45 -0700 (PDT)
Received: by 10.90.118.18 with HTTP; Tue, 3 Jul 2007 10:00:44 -0700 (PDT)
Message-ID: <971536df0707031000n17aabcb8kc72825a4b2e26a22@mail.gmail.com>
Date: Tue, 3 Jul 2007 13:00:44 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "Afshartous, David" <afshart@exchange.sba.miami.edu>
In-Reply-To: <6BCB4D493A447546A8126F24332056E8063BC45D@school1.business.edu>
MIME-Version: 1.0
Content-Disposition: inline
References: <Pine.LNX.4.64.0706281419450.21694@springer.Berkeley.EDU>
	<6BCB4D493A447546A8126F24332056E8063BC45D@school1.business.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] xyplot and autokey,
	maintaining colors specified via "col" in key
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

Don't know what you did regarding par.settings to not get the desired
result but that is, in fact, the way to go since both the key and the plot
lines will get their colors from that:

xyplot(outcome ~ time, dat.ex, groups=drug, type=c("g", "smooth"),
auto.key = list(space = "top",  text = levels(dat.ex$drug),
points=FALSE, lines=TRUE ),
par.settings = list(superpose.line = list(col = rainbow(3))))


On 7/3/07, Afshartous, David <afshart@exchange.sba.miami.edu> wrote:
>
> All,
>
> When specifying colors to xyplot w/ a groups argument, using
> auto.key no longer maintains the colors properly.  I've searched
> the docs and help but haven't found exactly what I need ... I saw
> a few examples in the archives involving par.settings but that doesn't
> seem to do it. I also saw some people using key instead of auto.key, but
> that didn't seem consistent.  Is there a quick fix to the example code
> below?
>
> cheers,
> Dave
>
> dat.ex = data.frame(  rep(c(1:6), each=6), c(rnorm(12), rnorm(12, 1),
> rnorm(12, 2)), rep(c(1:6), 6),
> rep(c("Drug1", "Drug2", "Placebo"), each=12) )
> names(dat.ex) = c("patient.no", "outcome", "time", "drug")
>
>
> ## colors in xyplot agree w/ colors in key, colors not specified:
> xyplot(outcome ~ time, dat.ex, groups=drug, type=c("g", "smooth"),
> auto.key = list(space = "top",  text = levels(dat.ex$drug),
> points=FALSE, lines=TRUE ) )
>
> ## colors in xyplot do NOT agree w/ colors in key when colors changed:
> xyplot(outcome ~ time, dat.ex, groups=drug, type=c("g", "smooth"),
> auto.key = list(space = "top",  text = levels(dat.ex$drug),
> points=FALSE, lines=TRUE ),
> col = c(1,2,3)  )
>
> i.e., the key is still generated w/ the "old" colors.
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

" oinvGfgcdE3f
/