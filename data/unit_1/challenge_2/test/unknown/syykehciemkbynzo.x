From r-help-bounces@stat.math.ethz.ch  Sun Jun 10 06:51:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5AAoxL9001633
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 10 Jun 2007 06:51:00 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AAnYVj029489;
	Sun, 10 Jun 2007 12:49:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.171])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AAnSuu029460
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 12:49:28 +0200
Received: by ug-out-1314.google.com with SMTP id 36so1182768uga
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 03:49:28 -0700 (PDT)
Received: by 10.66.237.9 with SMTP id k9mr2735204ugh.1181472568114;
	Sun, 10 Jun 2007 03:49:28 -0700 (PDT)
Received: by 10.67.28.5 with HTTP; Sun, 10 Jun 2007 03:49:27 -0700 (PDT)
Message-ID: <971536df0706100349j6e9a5edco3adb5473915fe335@mail.gmail.com>
Date: Sun, 10 Jun 2007 06:49:27 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "gallon li" <gallon.li@gmail.com>
In-Reply-To: <54f7e7c30706100145tbc893bawb79f43bed1af0d64@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <54f7e7c30706100145tbc893bawb79f43bed1af0d64@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] find position
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

Try

match(0.4, a)

Also see ?match and the nomatch= argument, in particular. If your
numbers are only equal to within an absolute tolerance, tol, as
discussed in the R FAQ
   http://cran.r-project.org/doc/FAQ/R-FAQ.html#Why-doesn_0027t-R-think-these-numbers-are-equal_003f
you may need:

   tol <- 1e-6
   match(TRUE, abs(a-0.4) < tol)

or

   which(abs(a-0.4) < tol)[1]  # tol from above

and analogously if a relative tolerance is required.

On 6/10/07, gallon li <gallon.li@gmail.com> wrote:
> find the position of the first value who equals certain number in a vector:
>
> Say a=c(0,0,0,0,0.2, 0.2, 0.4,0.4,0.5)
>
> i wish to return the index value in a for which the value in the vector is
> equal to 0.4 for the first time. in this case, it is 7.
>
>        [[alternative HTML version deleted]]
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

  

j i . A=