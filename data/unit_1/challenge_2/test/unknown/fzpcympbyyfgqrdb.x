From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 11:45:02 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EFj0L9023635
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 11:45:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EFiFLn019235;
	Thu, 14 Jun 2007 17:44:32 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from outboundd1.ihc.com (outboundd1.ihc.com [199.190.170.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EF3cnO002867
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 17:03:41 +0200
Received: from twemf1.co.ihc.com ([159.212.71.180])
	by outboundd1.ihc.com with esmtp (Exim 4.62)
	(envelope-from <Greg.Snow@intermountainmail.org>)
	id 1HyqrJ-0005tk-aC; Thu, 14 Jun 2007 09:03:37 -0600
Received: from 159.212.71.188 by twemf1.co.ihc.com with ESMTP (Email
	Firewall SMTP Relay (Email Firewall v6.2.1)); Thu, 14 Jun 2007 09:02:39
	-0600
X-Server-Uuid: 0CCC7504-CEE2-47B5-B80E-0BE86FBE3DA5
Received: from lp-exchfe01.co.ihc.com ([10.50.128.45]) by
	gimail2.co.ihc.com with esmtp (Exim 4.62) (envelope-from
	<Greg.Snow@intermountainmail.org>) id 1Hyqr6-0002Zk-Jz; Thu, 14 Jun
	2007 09:03:24 -0600
Received: from LP-EXCHVS07.CO.IHC.COM ([10.50.128.40]) by
	lp-exchfe01.CO.IHC.COM with Microsoft SMTPSVC(6.0.3790.3959); Thu, 14
	Jun 2007 09:03:22 -0600
Received: from 10.50.128.46 ([10.50.128.46]) by LP-EXCHVS07.CO.IHC.COM (
	[10.50.128.36]) with Microsoft Exchange Server HTTP-DAV ; Thu, 14 Jun
	2007 15:03:16 +0000
MIME-Version: 1.0
From: "Greg Snow" <Greg.Snow@intermountainmail.org>
Message-ID: <0cc501c7ae95$23533b92$2e80320a@CO.IHC.COM>
Date: Thu, 14 Jun 2007 09:03:26 -0600
X-MimeOLE: Produced By Microsoft Exchange V6.5
Thread-Topic: [R] [OT]Web-Based Data Brushing
Thread-Index: AceulSNTSYwreZ9OQSaVWkvjBB0LtQ==
Importance: normal
X-Priority: 3
To: "Roy Mendelssohn" <Roy.Mendelssohn@noaa.gov>, r-help@stat.math.ethz.ch
X-OriginalArrivalTime: 14 Jun 2007 15:03:22.0984 (UTC)
	FILETIME=[26EDFE80:01C7AE95]
X-WSS-ID: 6A6F87051OC1799203-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5EF3cnO002867
Subject: Re: [R] [OT]Web-Based Data Brushing
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

There is the TkBrush function in the TeachingDemos package for R.  It is not web based.

-----Original Message-----
From: "Roy Mendelssohn" <Roy.Mendelssohn@noaa.gov>
To: "r-help@stat.math.ethz.ch" <r-help@stat.math.ethz.ch>
Sent: 6/12/07 10:26 AM
Subject: [R] [OT]Web-Based Data Brushing

I apologize for the off-topic post, but my Google search did not turn  
up much and I thought people on this list my have knowledge of this.   
I am looking for examples of  data brushing  (i.e. dynmaic linked  
plots) either on a web site, or in a web-based application, such as  
an AJAX app.  Even better if there is a way to do this in R.

Thanks for any help.

-Roy M.

**********************
"The contents of this message do not reflect any position of the U.S.  
Government or NOAA."
**********************
Roy Mendelssohn
Supervisory Operations Research Analyst
NOAA/NMFS
Environmental Research Division	
Southwest Fisheries Science Center
1352 Lighthouse Avenue
Pacific Grove, CA 93950-2097

e-mail: Roy.Mendelssohn@noaa.gov (Note new e-mail address)
voice: (831)-648-9029
fax: (831)-648-8440
www: http://www.pfeg.noaa.gov/

"Old age and treachery will overcome youth and skill."

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

96xkAl=7:@e