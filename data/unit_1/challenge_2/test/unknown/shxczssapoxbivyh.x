From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 22:17:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l652H7L9020056
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 22:17:08 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l652Ex5p013315;
	Thu, 5 Jul 2007 04:15:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from mta3.srv.hcvlny.cv.net (mta3.srv.hcvlny.cv.net [167.206.4.198])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l652ElVK013276
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 04:14:47 +0200
Received: from optonline.net (mstr2a.srv.hcvlny.cv.net [10.240.4.136])
	by mta3.srv.hcvlny.cv.net
	(Sun Java System Messaging Server 6.2-6.01 (built Apr  3 2006))
	with ESMTP id <0JKO00BQGOWHP2C0@mta3.srv.hcvlny.cv.net> for
	r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 22:14:46 -0400 (EDT)
Received: from [10.240.3.196] (Forwarded-For: 24.167.15.113, [10.240.3.196])
	by mstr2.srv.hcvlny.cv.net (mshttpd);
	Thu, 05 Jul 2007 02:14:41 +0000 (GMT)
Date: Thu, 05 Jul 2007 02:14:41 +0000 (GMT)
From: adschai@optonline.net
To: r-help@stat.math.ethz.ch
Message-id: <e4ada7f122a58.468c5411@optonline.net>
MIME-version: 1.0
X-Mailer: Sun Java(tm) System Messenger Express 6.2-6.01 (built Apr  3 2006)
X-Accept-Language: en
Priority: normal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] (Statistics question) - Nonlinear regression and simultaneous
	equation
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

Hi,I have a fundamental questions that I'm a bit confused. If any guru from this circle could help me out, I would really appreciate.I have a system of equations in which some of the endogs appear on right hand sides of some equations. To solve this, one needs a technique like 2SLS or FIML to circumvent inconsistency of the estimated coefficients. My question is that if I apply the nonlinear regression like SVM regression. Do I still need to worry about endogeneity? Meaning, what I only need to care is the 1st step of 2SLS. That would mean that I only need to carry out the SVM regression on all the exogs. Am I missing anything here? Thank you so much.Regards,- adschai

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

hZlhrltb prG  < 