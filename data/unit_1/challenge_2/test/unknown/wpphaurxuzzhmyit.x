From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 02:46:45 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L6kiL9020660
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 02:46:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L6j1Vh006769;
	Thu, 21 Jun 2007 08:45:32 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_60, DKIM_POLICY_SIGNSOME,
	DKIM_SIGNED, HTML_MESSAGE,
	RCVD_IN_BSP_TRUSTED autolearn=ham version=3.2.0
Received: from vic-MTAout3.csiro.au (vic-MTAout3.csiro.au [150.229.64.39])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L6GVov030608
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 08:16:33 +0200
X-IronPort-AV: E=Sophos;i="4.16,445,1175436000"; 
	d="scan'208,217";a="139318334"
Received: from exgw1-cbr.nexus.csiro.au ([152.83.3.66])
	by vic-ironport-int.csiro.au with ESMTP; 21 Jun 2007 16:16:28 +1000
Received: from exnswn2-syd.nexus.csiro.au ([130.155.3.32]) by
	exgw1-cbr.nexus.csiro.au with Microsoft SMTPSVC(5.0.2195.6713); 
	Thu, 21 Jun 2007 16:16:27 +1000
X-MimeOLE: Produced By Microsoft Exchange V6.0.6619.12
MIME-Version: 1.0
Date: Thu, 21 Jun 2007 16:16:27 +1000
Message-ID: <0393960FC6AFA142B0234E5CC8DA3B0C3FE337@exnswn2-syd.nexus.csiro.au>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: use ts objects within the "seas" package for seasonal stats ;
	to compare years with each other for change detection
Thread-Index: Acezy5lLOaDVjd42S+azAx4Xwdv7uQ==
From: <Jan.Verbesselt@csiro.au>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 21 Jun 2007 06:16:27.0937 (UTC)
	FILETIME=[B3C8E910:01C7B3CB]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] use ts objects within the "seas" package for seasonal stats ;
	to compare years with each other for change detection
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

Hi all,

 

Does anyone know how ts objects ts(base) can be used within the 'seas'
package? I would like to obtain seasonal statistics of regular
time-series and for example look at the result of the plot.seas.var()
function or use the change function() to look at change between periods
or time-series.

 

The nottem time-series are similar to the time-series we are analyzing
(but with data frequency=46 instead of 12 of the nottem dataset).  We
have year and day of year available but not the date (-> is there a
function to derive a date format such as e.g. 01-01-2007 from day 1,
year 2007?)

 

> 

nottem

plot(nottem)

 

 

I couldn't find anything about this on the R discussion - or www. 

 

Thanks and cheers,

Jan

 

Comp Specs are R 2.5, win XP.

 


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

nwefr
Aht