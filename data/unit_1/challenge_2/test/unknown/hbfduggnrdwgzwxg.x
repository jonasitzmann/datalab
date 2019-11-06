From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 04:11:10 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5I8B9L9015554
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 04:11:09 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5I8AN3J012147;
	Mon, 18 Jun 2007 10:10:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from uni-bonn.de (mail.uni-bonn.de [131.220.15.112])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5I89k3C012000
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 10:09:46 +0200
Received: from [131.220.125.125] ([131.220.125.125] verified)
	by uni-bonn.de (CommuniGate Pro SMTP 5.0.8)
	with ESMTP id 48969312 for r-help@stat.math.ethz.ch;
	Mon, 18 Jun 2007 10:09:45 +0200
Message-ID: <46763DCB.7020607@uni-bonn.de>
Date: Mon, 18 Jun 2007 10:09:47 +0200
From: Thomas Hoffmann <thomas.hoffmann@uni-bonn.de>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] merging dataframes with diffent rownumbers
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

Dear R-Helpers,

I have following problem:

I do have two data frames dat1 and dat2 with a commen column BNUM (long 
integer). dat1 has a larger number of BNUM than dat2 and different rows 
of dat2 have equal BNUM. The numbers of rows in dat1 and dat2 is not 
equal.  I applied the  tapply-function to dat2 with BNUM as index. I 
would like to add the columns from dat1 to the results of

b.sum <- tapply(dat2, BNUM, sum).

However the BNUM of b.sum are only a subset of the dat1.

Does anybody knows a elegant way to solve the problem?
Thanks in advance

Thomas H.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

Yoh0gtq 177< 