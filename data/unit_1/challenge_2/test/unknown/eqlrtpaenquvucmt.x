From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 00:11:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C4BSL9022122
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 00:11:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C49vKc008777;
	Tue, 12 Jun 2007 06:10:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.8 required=5.0 tests=AWL, BAYES_95, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web7611.mail.in.yahoo.com (web7611.mail.in.yahoo.com
	[202.86.4.30])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5C49nSN008744
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 06:09:50 +0200
Received: (qmail 76008 invoked by uid 60001); 12 Jun 2007 04:09:48 -0000
X-YMail-OSG: 53zMcTUVM1lmp6h6DDsF9VSKP4HC21OpSdw2U6qnRU8OwdI8Ki2UBDKQegpdRZVdk.R2mD0MHGBdc3ZyuoJCqLn68amLuXHtFnp3BeXoi2BsaXLMLvE-
Received: from [72.50.183.105] by web7611.mail.in.yahoo.com via HTTP;
	Tue, 12 Jun 2007 09:39:48 IST
X-Mailer: YahooMailRC/651.33 YahooMailWebService/0.7.41.16
Date: Tue, 12 Jun 2007 09:39:48 +0530 (IST)
From: ramakanth reddy <ramakanth_99@yahoo.co.in>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Message-ID: <595744.75948.qm@web7611.mail.in.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] question about data availale in .RData file using the biobase
	package
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

Hi all

I am analyzing micro array data and I have R workspace images as my source of the data(.Rdata format).That was in the biobase package format,so I used some commands from the bio base package manual and could write the data into excel files.

The data I am working on is the cancer data.

I could get microarray information and recurrence information by using commands like

x<-pData(oncogene)

y<-exprs(oncogene)

I think the survival information should also be in the .RData file.How can i know what all information is available in the give file.

Please let me know any commands that show what type of information is available in the given file from a bio base package.


Thank You

rama kanth




      Download prohibited? No problem! To chat from any browser without download, Click Here: http://in.messenger.yahoo.com/webmessengerpromo.php

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



y>.ifhhT 