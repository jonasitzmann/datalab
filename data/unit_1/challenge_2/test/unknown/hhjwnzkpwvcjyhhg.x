From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 07:06:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62B6vL9012807
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 07:06:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62B6OfG001924;
	Mon, 2 Jul 2007 13:06:33 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_80, DKIM_POLICY_SIGNSOME,
	DKIM_SIGNED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wx-out-0506.google.com (wx-out-0506.google.com [66.249.82.231])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62B6G38001845
	for <r-help@lists.R-project.org>; Mon, 2 Jul 2007 13:06:16 +0200
Received: by wx-out-0506.google.com with SMTP id t16so1010782wxc
	for <r-help@lists.R-project.org>; Mon, 02 Jul 2007 04:06:15 -0700 (PDT)
Received: by 10.90.68.15 with SMTP id q15mr4659120aga.1183374375501;
	Mon, 02 Jul 2007 04:06:15 -0700 (PDT)
Received: by 10.90.88.17 with HTTP; Mon, 2 Jul 2007 04:06:15 -0700 (PDT)
Message-ID: <8fc9ea000707020406m5dc77a51j3a7163362b22864d@mail.gmail.com>
Date: Mon, 2 Jul 2007 12:06:15 +0100
From: "Florian Dubuisson" <florian.dubuisson@googlemail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Problem with the function plot and multipage
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

Hello,

I want to print graphs after running a gam function (gam needs the package
mgcv)
I want to print the results of the function in a .jpg or in a .png. I would
like to print it in many files (because in one file the graphs is too small
and can't be read)
For the moment, I run this script :
mymodel<-gam(species~var...)
jpeg(file="my_file.jpeg")
plot(mymodel,pages=2)
dev.off()

I use pages=2 but I need to press return and I don't want.
I also want to print only one or two graph per page (to read each graph
easily)

Is there an option of plot (or another function) to print graphs in many
pages and without pressing return ?

Thanks a lot for your answers
Cheers,
Florian

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

vbl T:/z