From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 03:10:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5J7AQL9026272
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 03:10:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J795O9009037;
	Tue, 19 Jun 2007 09:09:25 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J77WiO008265;
	Tue, 19 Jun 2007 09:08:54 +0200
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.245])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J77Rom008241
	for <r-packages@stat.math.ethz.ch>; Tue, 19 Jun 2007 09:07:28 +0200
Received: by an-out-0708.google.com with SMTP id b2so357360ana
	for <r-packages@stat.math.ethz.ch>;
	Tue, 19 Jun 2007 00:07:27 -0700 (PDT)
Received: by 10.100.108.11 with SMTP id g11mr4037754anc.1182236846926;
	Tue, 19 Jun 2007 00:07:26 -0700 (PDT)
Received: by 10.100.44.6 with HTTP; Tue, 19 Jun 2007 00:07:26 -0700 (PDT)
Message-ID: <f8e6ff050706190007v2c236c2dn3ddb5de02d4b879d@mail.gmail.com>
Date: Tue, 19 Jun 2007 09:07:26 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: r-packages@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-BeenThere: r-packages@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Subject: [R] [R-pkgs] ggplot2 0.5.2
X-BeenThere: r-help@stat.math.ethz.ch
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

ggplot2
===================================

ggplot2 is a plotting system for R, based on the grammar of graphics,
which tries to take the good parts of base and lattice graphics and
none of the bad parts. It takes care of many of the fiddly details
that make plotting a hassle (like drawing legends) as well as
providing a powerful model of graphics that makes it easy to produce
complex multi-layered graphics.

Find out more at http://had.co.nz/ggplot2

Changes in version 0.5.2 ------------------------------

* add argument to position dodge so it's now possible to accurately
dodge things with different widths to their physical widths
* added median summary
* new examples:
	* logistic regression example in stat_smooth
* bugs fixed:
	* evaluation of arguments to layer is no longer delayed
	* can use categorical xseq with stat_smooth
	* x and y axes named incorrectly (thanks to Dieter Menne for spotting this)
	* can now pass position objects to qplot
	* y jitter calculated correctly, and jittered data rescales axis now
	* removed silly legend from quantile plot
	* extra arguments not being passed on to geoms/stats
	* fixed bug in stat_summary when summarising a factor
	* fixed bugs in stat_summary, geom_ribbon, and coord_trans examples

_______________________________________________
R-packages mailing list
R-packages@stat.math.ethz.ch
https://stat.ethz.ch/mailman/listinfo/r-packages

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

 wZ0tx	tnp  yI