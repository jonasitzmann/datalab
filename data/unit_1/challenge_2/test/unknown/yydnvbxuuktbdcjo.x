From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 11:05:40 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63F5dL9030141
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 11:05:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63F4kWC032580;
	Tue, 3 Jul 2007 17:04:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63Ex1Zo030056
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 16:59:04 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I5jqG-0007Uw-RS
	for r-help@stat.math.ethz.ch; Tue, 03 Jul 2007 07:59:00 -0700
Message-ID: <11414114.post@talk.nabble.com>
Date: Tue, 3 Jul 2007 07:59:00 -0700 (PDT)
From: livia <yn19832@msn.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: yn19832@msn.com
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] EWMA in fMultivar
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


Hello, I would like to use the function EWMA() in the fMultivar Package and I
have a series of data x, which is the returns series. Basically, I would
like to get the variance estimation using EWMA.

I am trying something like EWMA(x, lambda) and I have a couple of questions:

 
Should x be the returns series or price series in my case?

When I get the result, there are the same numbers of data points as in the
returns series. I was expecting there would be one less data points than the
original data series, or are they one period lagged data?

Could anyone give me some advice? Many thanks

-- 
View this message in context: http://www.nabble.com/EWMA-in-fMultivar-tf4018921.html#a11414114
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

mhnc�-. .Dc