From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 03:50:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l647oAL9007496
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 03:50:11 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l647nNxi015606;
	Wed, 4 Jul 2007 09:49:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from wr-out-0506.google.com (wr-out-0506.google.com [64.233.184.225])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l647mHkw015242
	for <r-help@lists.r-project.org>; Wed, 4 Jul 2007 09:48:18 +0200
Received: by wr-out-0506.google.com with SMTP id 55so1323108wri
	for <r-help@lists.r-project.org>; Wed, 04 Jul 2007 00:48:17 -0700 (PDT)
Received: by 10.78.134.12 with SMTP id h12mr3947330hud.1183535295770;
	Wed, 04 Jul 2007 00:48:15 -0700 (PDT)
Received: by 10.78.21.5 with HTTP; Wed, 4 Jul 2007 00:48:15 -0700 (PDT)
Message-ID: <b9065fc0707040048v1c24635bl164bd85f1bf7db62@mail.gmail.com>
Date: Wed, 4 Jul 2007 09:48:15 +0200
From: "Paul Lemmens" <paul.lemmens@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Adding data to existing plot with new=TRUE does not appear to
	work
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

Dear all,

I am trying to shove a number of cmdscale() results into a single plot
(k=1 so I'm trying to get multiple columns in the plot).  From ?par I
learned that I can/should set new=TRUE in either par() or the plot
function itself. However with the following reduced code, I get only a
plot with a column of data points with x==2.

plot(1,10, xlim=range(0,3), ylim=range(0,10), type='n')
aa <- rep(1,10)
bb <- 1:10
plot(aa,bb, xlim=range(0,3), ylim=range(0,10), new=TRUE)
aa <- rep(2,10)
plot(aa,bb, xlim=range(0,3), ylim=range(0,10), new=TRUE)

Also, when I insert a op <- par(new=TRUE) either before or immediately
after the first plot statement (the type='n' one) in the above code
fragment, the resulting graph still only shows one column of data.

Have I misinterpreted the instructions or the functionality of new=TRUE?

Thank you,
Paul Lemmens

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

l3ctha 3li6h;