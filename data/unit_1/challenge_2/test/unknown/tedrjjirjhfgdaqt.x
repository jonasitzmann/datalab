From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 13:43:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58HhlhB018213
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 13:43:48 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58Hgweh020131;
	Fri, 8 Jun 2007 19:43:13 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No,
	score=0.0 required=5.0 tests=DKIM_POLICY_SIGNSOME autolearn=no
	version=3.2.0
Received: from front1.acsu.buffalo.edu (coldfront.acsu.buffalo.edu
	[128.205.6.89])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l58HgYCA019922
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 19:42:35 +0200
Received: (qmail 8860 invoked from network); 8 Jun 2007 17:42:33 -0000
Received: from mailscan4.acsu.buffalo.edu (128.205.6.136)
	by front1.acsu.buffalo.edu with SMTP; 8 Jun 2007 17:42:33 -0000
Received: (qmail 23435 invoked from network); 8 Jun 2007 17:42:32 -0000
Received: from h565sb.pharm.buffalo.edu (HELO ?127.0.0.1?) (128.205.185.221)
	by smtp1.acsu.buffalo.edu with SMTP; 8 Jun 2007 17:42:32 -0000
Message-ID: <4669950A.90001@buffalo.edu>
Date: Fri, 08 Jun 2007 13:42:34 -0400
From: =?ISO-8859-1?Q?S=E9bastien_Bihorel?= <sbihorel@buffalo.edu>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Antivirus: avast! (VPS 000748-0, 07/06/2007), Outbound message
X-Antivirus-Status: Clean
X-UB-Relay: (h565sb.pharm.buffalo.edu)
X-PM-EL-Spam-Prob: : 7%
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Batch processing in Windows
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

Hi,

I am a complete newbe to R, so the following problem will probably be 
trivial for most of you guys:  I get an error message every time I try 
to run a R file directly from the DOS shell.

My R file (test.R) is intended to create a basic graph and has a very 
simple code:

x<-rep(1:10,1)
y<-rep(1:10,1)
plot(x,y)

I am using the following command to call this file directly from the c:/ 
root:
C:/>R CMD BATCH e:/Documents Seb/3_/test.R

And here is the error message (Translated from french to english):
'R' is not recognized as an internal or external command, an executable 
script or a command file

My OS is a french Windows XP sp2 and I am using R version 2.5.0. I 
wonder if the problem comes from an installation problem...

Thank you in advance for your help.

Sebastien

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

eT6nNeyacQeD