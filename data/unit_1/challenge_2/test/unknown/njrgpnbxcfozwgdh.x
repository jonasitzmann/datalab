From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 08:30:36 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51CUZhB009674
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 08:30:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51CTdAS012386;
	Fri, 1 Jun 2007 14:30:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from dc1ex01.air.org (mail1000.air.org [38.118.77.35])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51CLUI7009475
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 14:21:31 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Fri, 1 Jun 2007 08:19:22 -0400
Message-ID: <2323A6D37908A847A7C32F1E3662C80EB5E681@dc1ex01.air.org>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] random effects in lmer
Thread-Index: AcekRVd9VvwAOHYxR8Ot4vlGzto1QAAAb6RN
References: <46602612.76E3.003F.0@danishmeat.dk>
From: "Doran, Harold" <HDoran@air.org>
To: "Rina Miehs" <rmi@danishmeat.dk>, <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: Re: [R] random effects in lmer
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

Rina

p-values are not generated as a part of the lmer object returned. If you read the ranef help it will show you two things. First, how you can get a "caterpillar plot" and second how you can get the posterior variances of the random effects. Then, you can do your test to see if they are different than zero.

Harold

-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch on behalf of Rina Miehs
Sent: Fri 6/1/2007 7:58 AM
To: r-help@stat.math.ethz.ch
Subject: [R] random effects in lmer
 
Hello
 
i have a model with two random effects. i have used lmer (package lme4)
on the model. To find the predictions of the random effects used
ranef(). How can i get p-values on theese predictions??
 
Thanks
 
Rina

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

s-a"g