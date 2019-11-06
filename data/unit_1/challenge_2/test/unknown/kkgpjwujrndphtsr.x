From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:39:40 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCddL9028306
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:39:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5O9cDQD019479;
	Sun, 24 Jun 2007 11:38:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.182])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5O9c7fI019455
	for <R-help@stat.math.ethz.ch>; Sun, 24 Jun 2007 11:38:07 +0200
Received: by py-out-1112.google.com with SMTP id p76so1774481pyb
	for <R-help@stat.math.ethz.ch>; Sun, 24 Jun 2007 02:38:06 -0700 (PDT)
Received: by 10.65.97.18 with SMTP id z18mr7780745qbl.1182677886305;
	Sun, 24 Jun 2007 02:38:06 -0700 (PDT)
Received: by 10.64.91.8 with HTTP; Sun, 24 Jun 2007 02:38:06 -0700 (PDT)
Message-ID: <94730b8a0706240238o2686c7e0w3ca9179241d2d232@mail.gmail.com>
Date: Sun, 24 Jun 2007 19:38:06 +1000
From: "Felix Andrews" <felix@nfrac.org>
To: deepayan.sarkar@gmail.com, R-help <R-help@stat.math.ethz.ch>
MIME-Version: 1.0
Content-Disposition: inline
X-Google-Sender-Auth: 0116aa7c6d1cc93e
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] plot just one page of lattice plot
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
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

Great stuff, thanks. I'm copying this solution to R-help for reference.

On 6/24/07, deepayan.sarkar@gmail.com <deepayan.sarkar@gmail.com> wrote:
> On 6/23/07, Felix Andrews <felix@nfrac.org> wrote:
> > Hi Deepayan,
> >
> > I have a Lattice question: is there any way to plot just one
> > (specified) page of a multi-page display?
>
> Not in those terms exactly. However, it is possible to plot subsets of
> a trellis object, e.g.
>
> p <- xyplot(y ~ x | a)
> # dim(p) is nlevels(a)
> p[1:3]
> p[4:6]
>
> p <- xyplot(y ~ x | a + b)
> # dim(p) is c(nlevels(a), nlevels(b))
> p[1:2, 3:4]
>
> etc. See also ?packet.panel.default (and ?print.trellis), which I just
> realized can be used to do what you want:
>
> packet.panel.page <- function(n)
> {
>     ## returns a function that when used as the 'packet.panel'
>     ## argument in print.trellis plots page number 'n' only
>     function(layout, page, ...) {
>         stopifnot(layout[3] == 1)
>         packet.panel.default(layout = layout,
>                              page = page + n - 1,
>                              ...)
>     }
> }
>
> data(mtcars)
> HP <- equal.count(mtcars$hp, 6)
> p <-
>     xyplot(mpg ~ disp | HP * factor(cyl),
>            mtcars, layout = c(0, 6, 1))
>
> print(p, packet.panel = packet.panel.page(1))
> print(p, packet.panel = packet.panel.page(2))
>
> In fact, I'm going to add this as an example in ?packet.panel.default
>
> -Deepayan
>



-- 
Felix Andrews / $B0BJ!N)(B
PhD candidate, The Fenner School of Environment and Society
The Australian National University (Building 48A), ACT 0200
Beijing Bag, Locked Bag 40, Kingston ACT 2604
http://www.neurofractal.org/felix/
voice:+86_1051404394 (in China)
mobile:+86_13522529265 (in China)
mobile:+61_410400963 (in Australia)
xmpp:foolish.android@gmail.com
3358 543D AAC6 22C2 D336  80D9 360B 72DD 3E4C F5D8

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

o0eiMwr2
6