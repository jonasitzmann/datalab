From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 15:53:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63JrbL9000624
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 15:53:39 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63Jr1pj015129;
	Tue, 3 Jul 2007 21:53:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_80, DKIM_POLICY_SIGNSOME,
	DKIM_SIGNED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.178])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63JqpYh015074
	for <r-help@lists.R-project.org>; Tue, 3 Jul 2007 21:52:52 +0200
Received: by wa-out-1112.google.com with SMTP id j37so2878464waf
	for <r-help@lists.R-project.org>; Tue, 03 Jul 2007 12:52:51 -0700 (PDT)
Received: by 10.114.27.20 with SMTP id a20mr6483844waa.1183492370703;
	Tue, 03 Jul 2007 12:52:50 -0700 (PDT)
Received: by 10.114.176.2 with HTTP; Tue, 3 Jul 2007 12:52:50 -0700 (PDT)
Message-ID: <7d4c2810707031252v9c30fa5wa4f397b368d2297d@mail.gmail.com>
Date: Tue, 3 Jul 2007 15:52:50 -0400
From: "Patrick C." <pcrutcher@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Non-linear constraints under Markowitz
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

I am hoping to do some portfolio optimization where I want to maximize my
possible return subject to the constraint that my variance is below a
certain value and no short positions. Is there a way I can use optim to do
this ? thanks

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

/LP3 eol5 
bv