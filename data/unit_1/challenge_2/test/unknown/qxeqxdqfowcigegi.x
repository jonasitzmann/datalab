From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 02:45:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l586jehB011832
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 02:45:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l586i6sQ029677;
	Fri, 8 Jun 2007 08:44:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l586g64M028950
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 08:42:08 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HwYAg-0007kY-1k
	for r-help@stat.math.ethz.ch; Thu, 07 Jun 2007 23:42:06 -0700
Message-ID: <11021315.post@talk.nabble.com>
Date: Thu, 7 Jun 2007 23:42:06 -0700 (PDT)
From: "Tom.O" <tom.olsson@dnbnor.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: tom.olsson@dnbnor.com
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Barplots: Editing the frequency x-axis names
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


Hi
I have a timeSeries object (X) with monthly returns. I want to display the
returns with a barplot, which I can fix easily. But my problem is labaling
the x-axis, if I use the positions from the timeseries It gets very messy. I
have tried rotating and changing the font size but it doesn't do the trick.
I think the optimal solution for my purpose is too only display every second
or third date, pherhaps only use every 12 month. But how do I do that?

Thanks Tom
-- 
View this message in context: http://www.nabble.com/Barplots%3A-Editing-the-frequency-x-axis-names-tf3888029.html#a11021315
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

 oor/c 2