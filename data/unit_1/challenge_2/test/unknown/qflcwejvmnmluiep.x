From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 05:30:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L9UCL9022310
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 05:30:13 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L9SYmP029650;
	Thu, 21 Jun 2007 11:28:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from mail-ext2.istat.it (mail-ext2.istat.it [193.204.90.24])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L9SPuR029566
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 11:28:25 +0200
Received: from TMMAILEXT1 ([10.18.220.25])
	by mail-ext2.istat.it (Sun Java System Messaging Server 6.2-7.05 (built
	Sep 5 2006)) with ESMTP id <0JJZ003JFBNCVZ10@mail-ext2.istat.it> for
	r-help@stat.math.ethz.ch; Thu, 21 Jun 2007 11:28:24 +0200 (CEST)
Received: from mail-int1.istat.it ([192.168.1.2]) by TMMAILEXT1 with InterScan
	Message Security Suite; Thu, 21 Jun 2007 11:28:20 +0200
Received: from [10.18.99.142] by mail-int1.istat.it
	(Sun Java System Messaging Server 6.2-7.05 (built Sep  5 2006))
	with ESMTPA id <0JJZ0026ZBNAZD10@mail-int1.istat.it> for
	r-help@stat.math.ethz.ch; Thu, 21 Jun 2007 11:28:22 +0200 (CEST)
Date: Thu, 21 Jun 2007 11:28:22 +0200
From: Giulio Barcaroli <barcarol@istat.it>
To: r-help@stat.math.ethz.ch
Message-id: <467A44B6.80308@istat.it>
Organization: ISTAT
MIME-version: 1.0
Content-type: multipart/mixed; boundary="Boundary_(ID_ALtyqhsBzmcStaJe0JokJw)"
User-Agent: Mozilla Thunderbird 1.5.0.12 (Windows/20070509)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Content-Filtered-By: Mailman/MimeDel 2.1.9
Subject: [R]  [R-pkgs] RGtk2 2.10.x series available
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
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

This is a multi-part message in MIME format.

--Boundary_(ID_ALtyqhsBzmcStaJe0JokJw)
Content-type: text/plain; charset=ISO-8859-15
Content-transfer-encoding: 7BIT

I installed version 2.10.9-1 of RGtk2, but when I tried to load it I
received the following message:

> local({pkg <- select.list(sort(.packages(all.available = TRUE)))

+ if(nchar(pkg)) library(pkg, character.only=TRUE)})

Error in dyn.load(x, as.logical(local), as.logical(now)) : 

        unable to load shared library 'C:/Programmi/R/R-2.5.0/library/RGtk2/libs/RGtk2.dll':

  LoadLibrary failure:  impossible to find the specified procedure

Error: package/namespace load failed for 'RGtk2'

> 

I checked in the directory

C:/Programmi/R/R-2.5.0/library/RGtk2/libs/

and the RGtk2.dll module does exist.
Any indication about how to solve this problem?
Giulio Barcaroli

--Boundary_(ID_ALtyqhsBzmcStaJe0JokJw)
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--Boundary_(ID_ALtyqhsBzmcStaJe0JokJw)--



6 0l/T0dlI