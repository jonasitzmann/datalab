From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 23:45:04 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l553j3hB003553
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 23:45:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l553iXtO026499;
	Tue, 5 Jun 2007 05:44:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from mta4.srv.hcvlny.cv.net (mta4.srv.hcvlny.cv.net [167.206.4.199])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l553iKAX026340
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 05:44:23 +0200
Received: from optonline.net ([10.240.4.136]) by mta4.srv.hcvlny.cv.net
	(Sun Java System Messaging Server 6.2-6.01 (built Apr  3 2006))
	with ESMTP id <0JJ5003XV91V4MA1@mta4.srv.hcvlny.cv.net> for
	r-help@stat.math.ethz.ch; Mon, 04 Jun 2007 23:44:20 -0400 (EDT)
Received: from [10.240.3.196] (Forwarded-For: 68.203.145.210, [10.240.3.196])
	by mstr2.srv.hcvlny.cv.net (mshttpd);
	Tue, 05 Jun 2007 03:44:14 +0000 (GMT)
Date: Tue, 05 Jun 2007 03:44:14 +0000 (GMT)
From: adschai@optonline.net
To: r-help@stat.math.ethz.ch
Message-id: <e34b89e428015.4664dc0e@optonline.net>
MIME-version: 1.0
X-Mailer: Sun Java(tm) System Messenger Express 6.2-6.01 (built Apr  3 2006)
X-Accept-Language: en
Priority: normal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Question using stepAIC
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

Hi - I use stepAIC to automatically select the model. The stepAIC was applied on polr as follow:objPolr <- polr(formula=myformula, data=dat, method=METHOD);objPolr.step <- stepAIC(objPolr, trace=T);Then R complaints that it doesn't know about 'dat' when it executes the second line. Below is the exact error that I got when executing the stepAIC line above:Error in eval(expr, envir, enclos) : object "dat" not foundWould you please provide some guide to circumvent this? Thank you.- adschai

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

6KwDes
	N e