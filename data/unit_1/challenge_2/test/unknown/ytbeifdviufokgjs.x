From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 11:12:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JFCUL9030828
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 11:12:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JFBapD032755;
	Tue, 19 Jun 2007 17:11:55 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.175])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JEiC1X021485
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 16:44:13 +0200
Received: by ug-out-1314.google.com with SMTP id m3so109602uge
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 07:44:12 -0700 (PDT)
Received: by 10.67.32.6 with SMTP id k6mr500969ugj.1182264252671;
	Tue, 19 Jun 2007 07:44:12 -0700 (PDT)
Received: by 10.67.106.14 with HTTP; Tue, 19 Jun 2007 07:44:12 -0700 (PDT)
Message-ID: <971536df0706190744pc7edc38y85cb5f5f3710d996@mail.gmail.com>
Date: Tue, 19 Jun 2007 10:44:12 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "Feng, Ken" <ken.feng@citi.com>
In-Reply-To: <971536df0706190442g460ea227se87e12d88ee92f9d@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <0143A263BEF94644AC0D4027373EECD3054309AE@exyhmb08.jpn.nsroot.net>
	<971536df0706190442g460ea227se87e12d88ee92f9d@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How do I avoid a loop?
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

Here is a slight variation.  The second line is unchanged from my
prior solution but the first line is different.  The previous one I posted
was slightly more complex and took about 50% longer to run than
this one:

   xx <- (cumsum(!x) + 1) * x
   (seq_along(x) - match(xx, xx) + 1) * x

> # performance testing
>
> f1 <- function(x) {
+ xx <- cumsum(diff(c(FALSE, x)) > 0)
+ (seq_along(x) - match(xx, xx) + 1) * x
+ }
>
> f2 <- function(x) {
+    xx <- (cumsum(!x) + 1) * x
+    (seq_along(x) - match(xx, xx) + 1) * x
+ }
>
>
> f3 <- function(x) {
+ j <- 0
+ for(i in seq_along(x)) x[i] <- if (x[i]) j <- j+1 else j <- 0
+ x
+ }
>
> set.seed(1)
> x <- sample(c(TRUE, FALSE), 100000, replace = TRUE)
> system.time(out1 <- f1(x))
   user  system elapsed
   0.10    0.02    0.12
> system.time(out2 <- f2(x))
   user  system elapsed
   0.07    0.01    0.08
> system.time(out3 <- f3(x))
   user  system elapsed
   1.65    0.00    1.72
> identical(out1, out2)
[1] TRUE
> identical(out1, out3)
[1] TRUE


On 6/19/07, Gabor Grothendieck <ggrothendieck@gmail.com> wrote:
> xx is 1 in every position of the first run of TRUE, 2 in every
> position in the 2nd run of TRUE and so on.  The parenthesized
> expression in the second line converts those to increasing
> values and multiplying it by x zaps the garbage in the positions
> that correspond to FALSE in x.
>
> xx <- cumsum(diff(c(FALSE, x)) > 0)
> (seq_along(x) - match(xx, xx) + 1) * x
>
>
> On 6/19/07, Feng, Ken <ken.feng@citi.com> wrote:
> > Hi,
> >
> > I start with an array of booleans:
> >
> >        x <- c( TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE );
> >
> > I want to define an y <- f(x) such that:
> >
> >        y <- c( 1, 2, 3, 0, 0, 1, 2, 0, 1 );
> >
> > In other words, do a cumsum when I see a TRUE, but reset to 0 if I see a FALSE.
> >
> > I know I can do this with a very slow and ugly loop or maybe use apply,
> > but I was hoping there are some R experts out there who can show me
> > a cleaner/more elegant solution?
> >
> > Thanks in advance.
> >
> > - Ken
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
> >
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

p dZe2taPbc ytP