From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 01:22:59 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T5MvL9020180
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 01:22:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T5M65v016895;
	Fri, 29 Jun 2007 07:22:16 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from bay0-omc1-s41.bay0.hotmail.com (bay0-omc1-s41.bay0.hotmail.com
	[65.54.246.113])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T5Lw3U016865
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 07:21:59 +0200
Received: from hotmail.com ([65.55.140.104]) by bay0-omc1-s41.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Thu, 28 Jun 2007 22:21:57 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Thu, 28 Jun 2007 22:21:57 -0700
Message-ID: <BAY135-F2482060D9F6557D933551AC7080@phx.gbl>
Received: from 65.55.140.123 by by135fd.bay135.hotmail.msn.com with HTTP;
	Fri, 29 Jun 2007 05:21:55 GMT
X-Originating-IP: [38.118.77.7]
X-Originating-Email: [sell_mirage_ne@hotmail.com]
X-Sender: sell_mirage_ne@hotmail.com
From: "Taka Matzmoto" <sell_mirage_ne@hotmail.com>
To: r-help@stat.math.ethz.ch
Date: Fri, 29 Jun 2007 00:21:55 -0500
Mime-Version: 1.0
X-OriginalArrivalTime: 29 Jun 2007 05:21:57.0608 (UTC)
	FILETIME=[69D24E80:01C7BA0D]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] extracting df and MS values from aov
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
Content-Type: multipart/mixed; boundary="===============1817140474=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1817140474==
Content-Type: text/plain; format=flowed

Dear R users,
I would like to extract df and Mean Sq values. I tried several things (e.g., 
str(model1), names(model1)) but I can't find a way to extract these values.  
I also tried to search using
RSiteSearch. Any help will be appreciated. Thanks Taka,

model1<-aov(dv~iv.1*iv.2*iv.3)

summary(model1)

                           Df Sum Sq Mean Sq
iv.1                   1  3.200   3.200
iv.2                   9 62.200   6.911
iv.3                   3 37.450  12.483
iv.1:iv.2             9 12.050   1.339
iv.1:iv.3             3  7.500   2.500
iv.2:iv.3            27 56.300   2.085
iv.1:iv.2:iv.3      27 25.250   0.935

_________________________________________________________________
PC Magazine�s 2007 editors� choice for best Web mail�award-winning Windows 
Live Hotmail.


--===============1817140474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1817140474==--

           

< x4y