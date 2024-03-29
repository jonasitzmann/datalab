From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 09:09:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PD91LD028741
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 09:09:09 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5NM8iHJ005467;
	Sun, 24 Jun 2007 00:08:48 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.173])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5NM8arC005424
	for <R-help@stat.math.ethz.ch>; Sun, 24 Jun 2007 00:08:36 +0200
Received: by ug-out-1314.google.com with SMTP id m3so961455uge
	for <R-help@stat.math.ethz.ch>; Sat, 23 Jun 2007 15:08:36 -0700 (PDT)
Received: by 10.67.99.1 with SMTP id b1mr3879034ugm.1182636516512;
	Sat, 23 Jun 2007 15:08:36 -0700 (PDT)
Received: by 10.66.239.3 with HTTP; Sat, 23 Jun 2007 15:08:36 -0700 (PDT)
Message-ID: <644e1f320706231508s13d06e02ra4c7964c8ec6b027@mail.gmail.com>
Date: Sat, 23 Jun 2007 18:08:36 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "suman Duvvuru" <duvvuru.suman@gmail.com>
In-Reply-To: <bac8a0820706231504m5f6ceff0j3f9aa700cbffac08@mail.gmail.com>
MIME-Version: 1.0
References: <bac8a0820706231504m5f6ceff0j3f9aa700cbffac08@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] Creating different matrices in a loop
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

You can use a 'list' for this:

counts=c(4,6,10);

p=1;
smat <- list()
for (i in 1:length(counts))
{

   smat[[i]] <- bmat[p:p+i-1,];
   p=p+i;
}




On 6/23/07, suman Duvvuru <duvvuru.suman@gmail.com> wrote:
>
> Hello,
>
> I have a big matrix of size (20,5) -bmat . I have to loop though the rows
> in
> the matrix and create DIFFERENT matrices each time I go through the loop.
>
> counts=c(4,6,10);
>
> p=1;
> for (i in 1:length(counts))
> {
>
>    smat=bmat[p:p+i-1,];
>    p=p+i;
> }
>
> The problem is smat overwrites itself each time inside the loop. I would
> like to have smat1, smat2, smat3 instead of a single vector smat.
> Basically
> I wanted to change the name of the matrix "smat" each time the loop runs
> so
> that i will have 3 different matrices.
>
> Any help will be very much appreciated.
>
> Thanks,
> Suman
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

   

mtn>