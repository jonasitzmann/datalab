From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 20:57:03 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5E0v2L9014560
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 20:57:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E0ufI0026433;
	Thu, 14 Jun 2007 02:56:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mta1.srv.hcvlny.cv.net (mta1.srv.hcvlny.cv.net [167.206.4.196])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E0lZFp023700
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 02:47:35 +0200
Received: from optonline.net (mstr2a.srv.hcvlny.cv.net [10.240.4.136])
	by mta1.srv.hcvlny.cv.net
	(Sun Java System Messaging Server 6.2-6.01 (built Apr  3 2006))
	with ESMTP id <0JJL0050KOVAA7A0@mta1.srv.hcvlny.cv.net> for
	r-help@stat.math.ethz.ch; Wed, 13 Jun 2007 20:47:34 -0400 (EDT)
Received: from [10.240.3.214] (Forwarded-For: 24.167.9.237, [10.240.3.214])
	by mstr2.srv.hcvlny.cv.net (mshttpd);
	Thu, 14 Jun 2007 00:47:34 +0000 (GMT)
Date: Thu, 14 Jun 2007 00:47:34 +0000 (GMT)
From: adschai@optonline.net
To: r-help@stat.math.ethz.ch
Message-id: <e3deac99dda9.46709026@optonline.net>
MIME-version: 1.0
X-Mailer: Sun Java(tm) System Messenger Express 6.2-6.01 (built Apr  3 2006)
Content-language: en
Content-disposition: inline
X-Accept-Language: en
Priority: normal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] polr:  attempt to find suitable starting values failed
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

I got a problem with polr function a bit. I have this error:

attempt to find suitable starting values failed

I wonder what would be an appropriate way to solve this problem? I can try to specify some random starting value but I am afraid that it will cause the MLE to stuck at some local maxima. Is there anyway to cope with this in a more elegant way? Any help would be really appreciated. Thank you.

- adschai

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

 n, md