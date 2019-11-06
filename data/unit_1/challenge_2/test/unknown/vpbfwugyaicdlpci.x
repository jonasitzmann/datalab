From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 03:15:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T7FcL9021946
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 03:15:39 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T7EFhZ017743;
	Fri, 29 Jun 2007 09:14:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from gateway2.jhsph.edu (gateway2.jhsph.edu [162.129.40.72])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T7E8s3017709
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 09:14:09 +0200
X-SBRS-GW1: None
X-IronPort-AV: E=Sophos;i="4.16,473,1175486400"; d="scan'208";a="108111028"
Received: from unknown (HELO XCH-VN01.sph.ad.jhsph.edu) ([10.253.10.41])
	by gateway2.jhsph.edu with ESMTP; 29 Jun 2007 03:14:08 -0400
Received: from owa-2.sph.ad.jhsph.edu ([10.253.10.243]) by
	XCH-VN01.sph.ad.jhsph.edu with Microsoft SMTPSVC(6.0.3790.1830);
	Fri, 29 Jun 2007 03:14:07 -0400
Received: from [192.168.1.5] ([172.30.34.62]) by owa-2.sph.ad.jhsph.edu with
	Microsoft SMTPSVC(6.0.3790.1830); Fri, 29 Jun 2007 03:14:08 -0400
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <2FAF9CA2-DAC4-4610-AFE6-90E495656FA5@jhsph.edu>
To: "r-help@stat.math.ethz.ch R-help" <r-help@stat.math.ethz.ch>
From: Benilton Carvalho <bcarvalh@jhsph.edu>
Date: Fri, 29 Jun 2007 03:14:12 -0400
X-Mailer: Apple Mail (2.752.2)
X-OriginalArrivalTime: 29 Jun 2007 07:14:08.0202 (UTC)
	FILETIME=[159172A0:01C7BA1D]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Comparison: glm() vs. bigglm()
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

Hi,

Until now, I thought that the results of glm() and bigglm() would  
coincide. Probably a naive assumption?

Anyways, I've been using bigglm() on some datasets I have available.  
One of the sets has >15M observations.

I have 3 continuous predictors (A, B, C) and a binary outcome (Y).  
And tried the following:

m1 <- bigglm(Y~A+B+C, family=binomial(), data=dataset1, chunksize=10e6)
m2 <- bigglm(Y~A*B+C, family=binomial(), data=dataset1, chunksize=10e6)
imp <- m1$deviance-m2$deviance

For my surprise "imp" was negative.

I then tried the same models, using glm() instead... and as I  
expected, "imp" was positive.

I also noticed differences on the coefficients estimated by glm() and  
bigglm() - small differences, though, and CIs for the coefficients (a  
given coefficient compared across methods) overlap.

Are such incrongruences expected? What can I use to check for  
convergence with bigglm(), as this might be one plausible cause for a  
negative difference on the deviances?

Thank you very much,

-benilton

 > sessionInfo()
R version 2.5.0 (2007-04-23)
x86_64-unknown-linux-gnu

locale:
LC_CTYPE=en_US.iso885915;LC_NUMERIC=C;LC_TIME=en_US.iso885915;LC_COLLATE 
=en_US.iso885915;LC_MONETARY=en_US.iso885915;LC_MESSAGES=en_US.iso885915 
;LC_PAPER=en_US.iso885915;LC_NAME=C;LC_ADDRESS=C;LC_TELEPHONE=C;LC_MEASU 
REMENT=en_US.iso885915;LC_IDENTIFICATION=C

attached base packages:
[1] "stats"     "graphics"  "grDevices" "utils"     "datasets"   
"methods"
[7] "base"

other attached packages:
biglm
"0.4"

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

j0i:iM<lana.<0Se