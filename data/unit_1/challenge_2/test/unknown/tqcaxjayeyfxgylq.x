From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 23:02:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5J32qL9024575
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 23:02:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J31GAu006569;
	Tue, 19 Jun 2007 05:01:34 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.250])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J317Eu006442
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 05:01:08 +0200
Received: by an-out-0708.google.com with SMTP id b2so349095ana
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 20:01:07 -0700 (PDT)
Received: by 10.100.196.3 with SMTP id t3mr3985134anf.1182222067275;
	Mon, 18 Jun 2007 20:01:07 -0700 (PDT)
Received: by 10.100.5.9 with HTTP; Mon, 18 Jun 2007 20:01:07 -0700 (PDT)
Message-ID: <500c63990706182001h16c4539cqff1682dc1f58b8d3@mail.gmail.com>
Date: Mon, 18 Jun 2007 22:01:07 -0500
From: "M. Jankowski" <mjankowski@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <500c63990706181334v732a95ddv8dc4d376960ba0dc@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <500c63990706181334v732a95ddv8dc4d376960ba0dc@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Fwd: Help: Upgrading to R2.5 on Ubuntu (Feisty)
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

This fixed my problem: Thanks!

Did you run 'sudo apt-get update' as well so that it actually reads
the listing at CRAN / FHCRC ?

What does 'apt-cache policy r-base' show?  [ It should display the
different vertsions it knows about; if you only see 2.4.1 then you
have a problem which may just be the missing 'apt-get update' ]

Hth, Dirk

---------- Forwarded message ----------
From: M. Jankowski
Date: Jun 18, 2007 3:34 PM
Subject: Help: Upgrading to R2.5 on Ubuntu (Feisty)
To: r-help@stat.math.ethz.ch


Thank you in advance for reading this help request. I am pretty new to
R. I am experiencing some issues getting 2.5 installed on my Ubuntu
Fiesty system and
seek your advice.

To the best of my ability I followed the instructions here:

http://cran.r-project.org/bin/linux/ubuntu/README

Setting this as the last line in my sources.list:
deb http://cran.fhcrc.org/bin/linux/ubuntu feisty/

When I typed in:

mdj@lapmdj:/usr/local/lib/R/site-library$ sudo apt-get install r-base
Reading package lists... Done
Building dependency tree
Reading state information... Done
r-base is already the newest version.
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
mdj@lapmdj:/usr/local/lib/R/site-library$

But when I go to R and check my version:

> version
              _
platform       i486-pc-linux-gnu
arch           i486
os             linux-gnu
system         i486, linux-gnu
status
major          2
minor          4.1
year           2006
month          12
day            18
svn rev        40228
language       R
version.string R version 2.4.1 (2006-12-18)
>

My version is still 2.4.1. I must be missing something. What do I need
to do to get R version 2.5 installed on my ubuntu feisty (7.04)
system? Let me know if there is any additional information I need to
give to be helped out with this.

Thank you for taking a look at this,
Sincerely,
Matt

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

FCJantii0rMz �