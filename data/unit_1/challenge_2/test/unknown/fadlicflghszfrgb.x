From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 01:38:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l515cMhB005318
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 01:38:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l515bcDV011071;
	Fri, 1 Jun 2007 07:37:55 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from omta04ps.mx.bigpond.com (omta04ps.mx.bigpond.com
	[144.140.83.156])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5140jpl018557
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 06:00:46 +0200
Received: from oaamta04ps.mx.bigpond.com ([60.228.113.250])
	by omta04ps.mx.bigpond.com with ESMTP id
	<20070601040040.QHVK15631.omta04ps.mx.bigpond.com@oaamta04ps.mx.bigpond.com>
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 04:00:40 +0000
Received: from Vaio ([60.228.113.250]) by oaamta04ps.mx.bigpond.com with SMTP
	id <20070601040040.RUUY1715.oaamta04ps.mx.bigpond.com@Vaio>
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 04:00:40 +0000
Message-ID: <000d01c7a401$67c9f600$0300a8c0@Vaio>
From: "Alfonso Sammassimo" <cincinattikid@bigpond.com>
To: <r-help@stat.math.ethz.ch>
Date: Fri, 1 Jun 2007 14:00:34 +1000
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-RFC2646: Format=Flowed; Original
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] aggregate in zoo
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

Hi R-experts,

Thanks very much to Jim Holtman and Gabor on my previous question.

I am having another problem with data manipulation in zoo. The following is 
data (Z) for first business day of every month in zoo format. I am trying to 
get mean of "open" for each year. I subset Z <- Z[,2] then

> sapply(split(Z, format(index(Z), "%Y")),mean)

I get error message:

>2000 2001 2002 2003 2004 2005 2006 2007
  NA   NA   NA   NA   NA   NA   NA   NA
Warning messages:
1: argument is not numeric or logical: returning NA in: mean.default(X[[1]], 
...)
2: argument is not numeric or logical: returning NA in: mean.default(X[[2]], 
...)
etc...................

Any help on what I'm missing would be appreciated. I am particularly 
confused by the fact that the command used works fine on the original data 
file (i.e. before subsetting by first day of month). Sorry if I have 
overlooked something very simple.

<Z
                 dayofmonth    open
2000-02-01 01        1636.10
2000-03-01 01        1596.75
2000-04-03 03        1737.70
2000-05-01 01        1695.65
2000-06-01 01        1651.90
2000-07-03 03        1669.20
2000-08-01 01        1628.35
2000-09-01 01        1717.35
2000-10-02 02        1614.55
2000-11-01 01        1587.10
2000-12-01 01        1475.60
2001-01-02 02        1450.65
2001-02-01 01        1503.60
2001-03-01 01        1351.95
2001-04-02 02        1268.10
2001-05-01 01        1369.20
2001-06-01 01        1362.75
2001-07-02 02        1331.55
2001-08-01 01        1309.70
2001-09-04 04        1235.55
2001-10-01 01        1109.20
2001-11-01 01        1155.55
2001-12-03 03        1207.30

Thank you,
Alfonso Sammassimo
Melbourne, Australia

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

ftn$h 