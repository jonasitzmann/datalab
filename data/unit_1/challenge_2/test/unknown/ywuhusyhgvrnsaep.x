From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 09:09:02 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PD91L9028741
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 09:09:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5NMDNlt007850;
	Sun, 24 Jun 2007 00:13:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: ***
X-Spam-Status: No, score=3.5 required=5.0 tests=BAYES_99,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from bonito.ulb.ac.be (mailhost.ulb.ac.be [164.15.59.220])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5NK34NP016463
	for <r-help@lists.R-project.org>; Sat, 23 Jun 2007 22:03:05 +0200
Received: from wwwdev.ulb.ac.be (resu1.ulb.ac.be [164.15.59.200])
	by bonito.ulb.ac.be (Postfix) with SMTP id 6916D495
	for <r-help@lists.R-project.org>; Sat, 23 Jun 2007 22:03:04 +0200 (CEST)
From: Kaveh Vakili <kaveh.vakili@ulb.ac.be>
To: "r-help@lists.R-project.org" <r-help@stat.math.ethz.ch>
X-sender-IP: 82.174.162.251
X-Mailer: Webmail ULB v3.0
Message-Id: <20070623200304.6916D495@bonito.ulb.ac.be>
Date: Sat, 23 Jun 2007 22:03:04 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Mailman-Approved-At: Sun, 24 Jun 2007 00:13:00 +0200
Subject: [R] approx.irts methodology question
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch


hi mailing list,

i'm not sure this is the right place to ask, so in advance forgive me for barking at the wrong tree,

in some part of a thesis i'm using a irregularly spaced time series,
to compute the ACF i used the approx.irts() function (tseries package)

my question would be, can someone direct me to some documentation on how (the approximiation formula) is it functioning as the reference manual entry for 'approx' provides no such niceties... 

my concerns are whether one can seamingly use the ARMA() coeficient obtained from an 'irts' filled by approximation.

thanks in advance,

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

iluh
cr