From r-help-bounces@stat.math.ethz.ch  Fri Jul  6 03:37:23 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l667bML9004479
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 6 Jul 2007 03:37:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l667aUsI001288;
	Fri, 6 Jul 2007 09:36:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=AWL, BAYES_80, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.181])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l667QVvm029921
	for <r-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 09:26:31 +0200
Received: by py-out-1112.google.com with SMTP id p76so244274pyb
	for <r-help@stat.math.ethz.ch>; Fri, 06 Jul 2007 00:26:31 -0700 (PDT)
Received: by 10.65.159.3 with SMTP id l3mr633431qbo.1183706790739;
	Fri, 06 Jul 2007 00:26:30 -0700 (PDT)
Received: by 10.65.126.2 with HTTP; Fri, 6 Jul 2007 00:26:30 -0700 (PDT)
Message-ID: <33846cd50707060026x282af85bv7ab4de96fc597a95@mail.gmail.com>
Date: Fri, 6 Jul 2007 12:56:30 +0530
From: "Tavpritesh Sethi" <tavpritesh@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Multiple stripcharts?
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

Hi all,
I have 205 rows with measurements for three categories of people. I want to
generate stripplots for each of these rows. How can I do it without having
to do them one by one. I am giving a sample dataset:-

     A
 B
 C
 A
 B
 C
 A
 B
 C
 A
 B
 C
 10.34822
 10.18426
 9.837874
 9.65047
 8.020482
 9.17312
 6.349595
 13.55664
 5.286697
 11.85409
 2.827027
 7.002696
 11.54984
 12.14591
 14.88955
 12.26134
 11.74262
 11.13481
 15.11849
 14.97857
 14.12973
 14.23219
 15.36582
 15.4698
 10.59222
 11.22417
 13.34279
 12.2538
 11.02348
 11.59403
 9.933778
 10.45499
 8.884345
 8.465186
 9.72647
 10.44469


THanks,
Tavpritesh

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

t /L