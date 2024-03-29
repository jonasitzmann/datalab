From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 07:57:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DBvIL9007183
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 07:57:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DBtmom012311;
	Wed, 13 Jun 2007 13:56:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DBtcwa012218
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 13:55:39 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HyRRp-0007mX-C7
	for r-help@stat.math.ethz.ch; Wed, 13 Jun 2007 04:55:37 -0700
Message-ID: <11097749.post@talk.nabble.com>
Date: Wed, 13 Jun 2007 04:55:37 -0700 (PDT)
From: livia <yn19832@msn.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: yn19832@msn.com
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Fitted Value Pareto Distribution
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


I would like to fit a Pareto Distribution and I am using the following codes. 

I thought the fitted (fit1) should be the fitted value for the data, is it
correct? As the result of the "fitted" turns out to be a single value for
all. 

fit=vglm(ycf1 ~ 1, pareto1(location=alpha), trace=TRUE, crit="c") 
fitted(fit) 

The result is 
fitted(fit)
            [,1]
 [1,] 0.07752694
 [2,] 0.07752694
 [3,] 0.07752694
 [4,] 0.07752694
 [5,] 0.07752694
 [6,] 0.07752694
 [7,] 0.07752694
 [8,] 0.07752694
 [9,] 0.07752694
[10,] 0.07752694
[11,] 0.07752694
[12,] 0.07752694
[13,] 0.07752694

Could anybody give me some advice? 

-- 
View this message in context: http://www.nabble.com/Fitted-Value-Pareto-Distribution-tf3914151.html#a11097749
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

xUCaDA