From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 07:11:26 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51BBPhB008821
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 07:11:26 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51BAkX6009073;
	Fri, 1 Jun 2007 13:10:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51B0pOL005452
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 13:00:53 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1Hu4sE-0006pX-5p
	for r-help@stat.math.ethz.ch; Fri, 01 Jun 2007 04:00:50 -0700
Message-ID: <10910748.post@talk.nabble.com>
Date: Fri, 1 Jun 2007 04:00:50 -0700 (PDT)
From: livia <yn19832@msn.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: yn19832@msn.com
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] tapply
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


Hello, I want to conduct normality test to a series of data and get the
p-value for each subset. I am using the following codes, but it does not
work.

tapply(re, list(reg, ast), pvalue(shapiro.test))

Could anyone give me some advice? Many thanks.
-- 
View this message in context: http://www.nabble.com/tapply-tf3851631.html#a10910748
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

pd
ie gtV