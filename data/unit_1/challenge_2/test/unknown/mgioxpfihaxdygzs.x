From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 13:40:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59HeYL9012122
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 13:40:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59HdEDI001507;
	Sat, 9 Jun 2007 19:39:27 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from mta2.srv.hcvlny.cv.net (mta2.srv.hcvlny.cv.net [167.206.4.197])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59Hd6tZ001473
	for <r-help@stat.math.ethz.ch>; Sat, 9 Jun 2007 19:39:06 +0200
Received: from optonline.net (mstr2a.srv.hcvlny.cv.net [10.240.4.136])
	by mta2.srv.hcvlny.cv.net
	(Sun Java System Messaging Server 6.2-6.01 (built Apr  3 2006))
	with ESMTP id <0JJD0023WQD5AU30@mta2.srv.hcvlny.cv.net> for
	r-help@stat.math.ethz.ch; Sat, 09 Jun 2007 13:39:06 -0400 (EDT)
Received: from [10.240.3.215] (Forwarded-For: 24.167.10.146, [10.240.3.215])
	by mstr2.srv.hcvlny.cv.net (mshttpd);
	Sat, 09 Jun 2007 17:39:05 +0000 (GMT)
Date: Sat, 09 Jun 2007 17:39:05 +0000 (GMT)
From: adschai@optonline.net
To: r-help@stat.math.ethz.ch
Message-id: <e3c3a44b4b0.466ae5b9@optonline.net>
MIME-version: 1.0
X-Mailer: Sun Java(tm) System Messenger Express 6.2-6.01 (built Apr  3 2006)
X-Accept-Language: en
Priority: normal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] How to plot vertical line
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

Hi,I have a result from polr which I fit a univariate variable (of ordinal data) with probit function. What I would like to do is to overlay the plot of my fitted values with the different intercept for each level in my ordinal data. I can do something like:lines(rep(intercept1, 1000), seq(from=0,to=max(fit),by=max(fit)/1000))where my intercept1 is, for example, the intercept that breaks between y=1 and y=2 labels and the max(fit) is the maximum of overall fitted values or maximum of all ordinal y labels. I'm wondering if there is better way to do this? If you could let me know, I would really appreciated. Thank you.- adschai

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

i-S N0lastn2 awy