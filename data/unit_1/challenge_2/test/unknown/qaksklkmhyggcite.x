From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 15:17:18 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RJHHL9031177
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 15:17:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RJFZnQ007573;
	Wed, 27 Jun 2007 21:16:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mwi1.de (5038.whserv.de [80.190.192.164])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RJFMjO007513
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 21:15:22 +0200
Received: from [192.168.1.32] (p5492FFA2.dip.t-dialin.net [84.146.255.162])
	by mwi1.de (mwi1.de) with ESMTP id D8989390059
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 21:13:45 +0200 (CEST)
Message-ID: <4682B74A.1090504@family-krueger.com>
Date: Wed, 27 Jun 2007 21:15:22 +0200
From: Knut Krueger <rh@family-krueger.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: "'R R-help'" <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] read.xls problem
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

Hi to all,
I have a strange problem
There was a Excel file with 5 sheets
I deleted sheet 2 and 4.
as all the times before I tried to read the sheets with
data1<- read.xls(excelfile_2,sheet=1, as.is = TRUE ,verbose=FALSE, 
perl="C:/perl/bin/perl.exe")
data2<- read.xls(excelfile_2,sheet=2, as.is = TRUE ,verbose=FALSE, 
perl="C:/perl/bin/perl.exe")
data3<- read.xls(excelfile_2,sheet=3, as.is = TRUE ,verbose=FALSE, 
perl="C:/perl/bin/perl.exe")

but only the folloing code reads the sheets well
data1<- read.xls(excelfile_2,sheet=1, as.is = TRUE ,verbose=FALSE, 
perl="C:/perl/bin/perl.exe")
data3<- read.xls(excelfile_2,sheet=3, as.is = TRUE ,verbose=FALSE, 
perl="C:/perl/bin/perl.exe")
data5<- read.xls(excelfile_2,sheet=5, as.is = TRUE ,verbose=FALSE, 
perl="C:/perl/bin/perl.exe")

Does anybody know whether this is normal?
 I never had this problem before. And if it is normal I wonder about how 
to find the sheet numbers

Regards Knut

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

tSe+