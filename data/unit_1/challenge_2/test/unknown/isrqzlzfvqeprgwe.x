From r-help-bounces@stat.math.ethz.ch  Sun Jun 17 19:07:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5HN79L9011401
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 19:07:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HN5f4H017827;
	Mon, 18 Jun 2007 01:05:54 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.176])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HN5Rl9017717
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 01:05:28 +0200
Received: by wa-out-1112.google.com with SMTP id j37so2072050waf
	for <r-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 16:05:26 -0700 (PDT)
Received: by 10.114.178.1 with SMTP id a1mr5505537waf.1182121526496;
	Sun, 17 Jun 2007 16:05:26 -0700 (PDT)
Received: by 10.115.49.7 with HTTP; Sun, 17 Jun 2007 16:05:26 -0700 (PDT)
Message-ID: <da0aac0706171605i2572e107v22b68684cebc01a1@mail.gmail.com>
Date: Sun, 17 Jun 2007 19:05:26 -0400
From: "Economics Guy" <economics.guy@gmail.com>
To: r-help <r-help@stat.math.ethz.ch>,
   "David Barron" <mothsailor@googlemail.com>
In-Reply-To: <815b70590706171505m25966f5x5fb2d87e2102b12f@mail.gmail.com>
MIME-Version: 1.0
References: <da0aac0706171346t4e1b8181k6d071d8fdaac16d3@mail.gmail.com>
	<815b70590706171505m25966f5x5fb2d87e2102b12f@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: Re: [R] Storing output vector form a loop as a matrix
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

That gives:

Error in output.matrix[, i] <- as.vector(output.vector) :
        number of items to replace is not a multiple of replacement length

But I think that is close.

Thanks,

EG

On 6/17/07, David Barron <mothsailor@googlemail.com> wrote:
>
> I'm not sure I've completely understood this, but would this do what you
> want:
>
>
> for (i in 1:N){
>
> aa <- sample(a, replace=TRUE)
>
> c <-data.frame(b,aa)
>
> output <- by(c, aa, function(x) sum(x$b))
>
> output.matrix[,i] <- as.vector(output)
> }
>
>
>
> On 17/06/07, Economics Guy <economics.guy@gmail.com> wrote:
> > Based on help files and searching the archives and help from the
> listserv I
> > have managed to build my monte carlo program.
> >
> > However I cannot get the proper syntax for running the loop and storing
> the
> > output of each loop (which is a vector) into a matrix.
> >
> > I took out some of the crazy code I was writing, but here is what I
> have:
> >
> > --------------------
> >
> > rm(list = ls(all = TRUE))
> > # removes everything
> >
> > a <-c("A","C","B","A","B","C")
> >
> > b <-c(10,20,30,40,50,60)
> >
> > c <-data.frame(a,b)
> >
> > N=10 #Number of Loops
> >
> > output.matrix <- matrix(0.0,3,N)
> >
> > #I need to START LOOP HERE
> >
> > a <- sample(a, replace=TRUE)
> >
> > c <-data.frame(b,a)
> >
> > output.vector <- by(c, a, function(x) sum(x$b))
> >
> > output.vector <- as.vector(output)
> >
> > output.vector <- data.frame(output)
> >
> > #END LOOP here
> >
> >
> > --------------------------
> >
> > What I would like to have at the end is the "output.matrix" contain as a
> > column the  "output.vector" from  each iteration. The actual data frame
> I
> > will be running has 60,000 observations and I am going to run 20000
> > iterations so speed is important too.
> >
> > Thanks so much
> >
> > EG
> >
> >         [[alternative HTML version deleted]]
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
> >
>
>
> --
> =================================
> David Barron
> Said Business School
> University of Oxford
> Park End Street
> Oxford OX1 1HP
>

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

rQL :e;s>wWn