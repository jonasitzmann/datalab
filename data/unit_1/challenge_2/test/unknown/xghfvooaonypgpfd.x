From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 02:51:04 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l586p2hB011869
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 02:51:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l586oKs2031718;
	Fri, 8 Jun 2007 08:50:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS, SUBJECT_FUZZY_TION,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l586oDDQ031678
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 08:50:14 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HwYIX-0007tT-5p
	for r-help@stat.math.ethz.ch; Thu, 07 Jun 2007 23:50:13 -0700
Message-ID: <11021390.post@talk.nabble.com>
Date: Thu, 7 Jun 2007 23:50:13 -0700 (PDT)
From: spime <sabya23@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: sabya23@gmail.com
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] How to partition sample space
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


Hi R-users,

I need your help in the following problem. Suppose we have a regression
problem containing 25 predictor variables of 1000 individuals. I want to
divide the data matrix ( 1000 x 25 ) into two partitions for training (70%)
and testing(30%). For this reason, i sample 70% of data into another
training matrix and remaining 30% into testing matrix using pseudorandom
numbers (for future analysis).

I need some efficient solution so that we can generate both matrix with
minimal time. 

Thanks in advance.

Sabyasachi
-- 
View this message in context: http://www.nabble.com/How-to-partition-sample-space-tf3888059.html#a11021390
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

/M<bAa