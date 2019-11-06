From r-help-bounces@stat.math.ethz.ch  Sun Jun 17 19:44:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5HNhxL9011668
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 19:44:00 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HNgQYn029365;
	Mon, 18 Jun 2007 01:42:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.170])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HNgIO0029314
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 01:42:18 +0200
Received: by ug-out-1314.google.com with SMTP id m3so461668uge
	for <r-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 16:42:18 -0700 (PDT)
Received: by 10.66.243.2 with SMTP id q2mr4622777ugh.1182123738568;
	Sun, 17 Jun 2007 16:42:18 -0700 (PDT)
Received: by 10.66.237.13 with HTTP; Sun, 17 Jun 2007 16:42:18 -0700 (PDT)
Message-ID: <644e1f320706171642l516022bfxf45a0d8a7f4ab4e6@mail.gmail.com>
Date: Sun, 17 Jun 2007 19:42:18 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "Economics Guy" <economics.guy@gmail.com>
In-Reply-To: <da0aac0706171346t4e1b8181k6d071d8fdaac16d3@mail.gmail.com>
MIME-Version: 1.0
References: <da0aac0706171346t4e1b8181k6d071d8fdaac16d3@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
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

I think this does it for you:

> a <-c("A","C","B","A","B","C")
>
> b <-c(10,20,30,40,50,60)
>
> C <-data.frame(a,b)  # don't use 'c' as it is a primitive function - canbe
confusing
>
> N=10 #Number of Loops
>
>
>
> output.matix <- replicate(N, function(x){
+     .samp <- C[sample(nrow(C), replace=TRUE), ]
+     tapply(.samp$b, .samp$a, sum)
+ })
> # transpose if you want samples in columns
> output.matrix <- t(output.matrix)
> output.matrix
  [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
A   10  130  100   40   50   40   30   50   50    50
B  130   60   50  110  100  160  110  130   60   150
C   40   NA   60   80  120   60   NA   60   80    20
>



On 6/17/07, Economics Guy <economics.guy@gmail.com> wrote:
>
> Based on help files and searching the archives and help from the listserv
> I
> have managed to build my monte carlo program.
>
> However I cannot get the proper syntax for running the loop and storing
> the
> output of each loop (which is a vector) into a matrix.
>
> I took out some of the crazy code I was writing, but here is what I have:
>
> --------------------
>
> rm(list = ls(all = TRUE))
> # removes everything
>
> a <-c("A","C","B","A","B","C")
>
> b <-c(10,20,30,40,50,60)
>
> c <-data.frame(a,b)
>
> N=10 #Number of Loops
>
> output.matrix <- matrix(0.0,3,N)
>
> #I need to START LOOP HERE
>
> a <- sample(a, replace=TRUE)
>
> c <-data.frame(b,a)
>
> output.vector <- by(c, a, function(x) sum(x$b))
>
> output.vector <- as.vector(output)
>
> output.vector <- data.frame(output)
>
> #END LOOP here
>
>
> --------------------------
>
> What I would like to have at the end is the "output.matrix" contain as a
> column the  "output.vector" from  each iteration. The actual data frame I
> will be running has 60,000 observations and I am going to run 20000
> iterations so speed is important too.
>
> Thanks so much
>
> EG
>
>        [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>



-- 
Jim Holtman
Cincinnati, OH
+1 513 646 9390

What is the problem you are trying to solve?

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

n;hr3DuQOa