From r-help-bounces@stat.math.ethz.ch  Sun Jun 10 21:35:59 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5B1ZwL9008422
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 10 Jun 2007 21:35:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5B1Y9QH008682;
	Mon, 11 Jun 2007 03:34:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mta5.srv.hcvlny.cv.net (mta5.srv.hcvlny.cv.net [167.206.4.200])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5B1Xxve008536
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 03:34:00 +0200
Received: from optonline.net (mstr2a.srv.hcvlny.cv.net [10.240.4.136])
	by mta5.srv.hcvlny.cv.net
	(Sun Java System Messaging Server 6.2-6.01 (built Apr  3 2006))
	with ESMTP id <0JJG0097P70MSP90@mta5.srv.hcvlny.cv.net> for
	r-help@stat.math.ethz.ch; Sun, 10 Jun 2007 21:33:58 -0400 (EDT)
Received: from [10.240.3.205] (Forwarded-For: 24.167.10.146, [10.240.3.205])
	by mstr2.srv.hcvlny.cv.net (mshttpd);
	Mon, 11 Jun 2007 01:33:58 +0000 (GMT)
Date: Mon, 11 Jun 2007 01:33:58 +0000 (GMT)
From: adschai@optonline.net
To: r-help@stat.math.ethz.ch
Message-id: <e088e3376544.466ca686@optonline.net>
MIME-version: 1.0
X-Mailer: Sun Java(tm) System Messenger Express 6.2-6.01 (built Apr  3 2006)
Content-language: en
Content-disposition: inline
X-Accept-Language: en
Priority: normal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] How do I obtain standard error of each estimated coefficients
	in polr
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

I obtained all the coefficients that I need from polr. However, I'm wondering how I can obtain the standard error of each estimated coefficient? I saved the Hessian and do something like summary(polrObj), I don't see any standard error like when doing regression using lm. Any help would be really appreciated. Thank you!

- adschai

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

l 09c mrblJOo