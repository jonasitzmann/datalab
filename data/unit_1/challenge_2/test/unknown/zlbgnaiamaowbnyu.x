From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 07:36:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55BZxhB008237
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 07:36:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55BYc9q006153;
	Tue, 5 Jun 2007 13:34:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55BYU8F006135
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 13:34:31 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HvXJ0-0004eT-4Z
	for r-help@stat.math.ethz.ch; Tue, 05 Jun 2007 04:34:30 -0700
Message-ID: <10967630.post@talk.nabble.com>
Date: Tue, 5 Jun 2007 04:34:30 -0700 (PDT)
From: livia <yn19832@msn.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: yn19832@msn.com
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] plot histogram and print
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


I have got a dataset with two factors, and I would like to print the
histograms of the variable "return" for each combination of the two factors.
I do not know how can I name the figure title to sth like "main="alevel
&blevel"" according to the data.

par(ask=TRUE)

myhistogram <- function(x)
{
hist (x, freq = FALSE)
lines (density(x), col = "red") 
rug (x)
}
tapply(return, list(a, b), myhistogram)

Could anyone help me with this? Many thanks.
-- 
View this message in context: http://www.nabble.com/plot-histogram-and-print-tf3871150.html#a10967630
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            


4j�5
4Rtt�20