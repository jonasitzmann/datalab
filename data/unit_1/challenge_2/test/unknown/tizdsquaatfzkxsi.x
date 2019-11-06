From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 03:59:36 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l647xZL9007564
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 03:59:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l647wwb3019250;
	Wed, 4 Jul 2007 09:59:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	DKIM_SIGNED, HTML_MESSAGE,
	RCVD_IN_BSP_TRUSTED autolearn=ham version=3.2.0
Received: from act-MTAout1.csiro.au (act-MTAout1.csiro.au [150.229.7.37])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l647whAu019202
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 09:58:47 +0200
X-IronPort-AV: E=Sophos;i="4.16,495,1175436000"; 
	d="scan'208,217";a="165921847"
Received: from exgw1-cbr.nexus.csiro.au ([152.83.3.66])
	by act-ironport-int.csiro.au with ESMTP; 04 Jul 2007 17:58:40 +1000
Received: from exnswn2-syd.nexus.csiro.au ([130.155.3.32]) by
	exgw1-cbr.nexus.csiro.au with Microsoft SMTPSVC(5.0.2195.6713); 
	Wed, 4 Jul 2007 17:58:42 +1000
X-MimeOLE: Produced By Microsoft Exchange V6.0.6619.12
MIME-Version: 1.0
Date: Wed, 4 Jul 2007 17:58:41 +1000
Message-ID: <0393960FC6AFA142B0234E5CC8DA3B0C3FE3A4@exnswn2-syd.nexus.csiro.au>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: how to plot a monthplot from a ts object where all individual
	years are shown (e.g. as lines) and can be compared with a
	"average or median " year?
Thread-Index: Ace+ESN06afM/Y+LTtS1ME3ghzK2HA==
From: <Jan.Verbesselt@csiro.au>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 04 Jul 2007 07:58:42.0353 (UTC)
	FILETIME=[238D4210:01C7BE11]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] how to plot a monthplot from a ts object where all individual
	years are shown (e.g. as lines) and can be compared with a
	"average or median " year?
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

Dear R help,

 

I'm working with regular 8-daily time-series from 2000 up till now and
would like to be able to compare years with each other. E.g. by creating
a monthplot via the result of the stl() method it looks ok> but I was
wondering whether there exist other methods to plot the different years
as lines on top of each other such that years can be compared with each
other (temporal change detection)?

 

This is the type of time-series we are working with:

forest <- ts(data, frequency=46, start=c(2000,8), end=c(2006,46))

 

I tried it as follows but this is not very clear.

year0 <- window(forest, start=2000,end=c(2000,46))

year1 <- window(forest, start=2001,end=c(2001,46))

year2 <- window(forest, start=2002,end=c(2002,46))

year3 <- window(forest, start=2003,end=c(2003,46))

year4 <- window(forest, start=2004,end=c(2004,46))

year5 <- window(forest, start=2005,end=c(2005,46))

year6 <- window(forest, start=2006,end=c(2006,46))

 

plot(1:46,years[,1], col=2)

lines(1:46,years[,2], col=3)

lines(1:46,years[,3], col=4)

lines(1:46,years[,4], col=5)

lines(1:46,years[,5], col=6)

lines(1:46,years[,6], col=7)

lines(1:46,years[,7], col=8)

 

Are there other options to be able to compare years with each other in
order to detect change (e.g., per month)?

 

Thanks a lot,

J

 

R 2.5, Win XP 


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

W->D/ie.r