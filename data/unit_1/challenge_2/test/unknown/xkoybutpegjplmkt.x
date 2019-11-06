From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 16:23:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65KNeL9030925
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 16:23:41 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65KMYRS020410;
	Thu, 5 Jul 2007 22:22:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from outboundd1.ihc.com (outboundd1.ihc.com [199.190.170.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65K7tPA014532
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 22:07:55 +0200
Received: from twemf2.co.ihc.com ([159.212.71.182])
	by outboundd1.ihc.com with esmtp (Exim 4.62)
	(envelope-from <Greg.Snow@intermountainmail.org>)
	id 1I6XcI-0006Hk-aH; Thu, 05 Jul 2007 14:07:54 -0600
Received: from 159.212.71.187 by twemf2.co.ihc.com with ESMTP (Email
	Firewall SMTP Relay (Email Firewall v6.2.1)); Thu, 05 Jul 2007 14:08:34
	-0600
X-Server-Uuid: 270B69FC-3081-48E4-B4A5-4D62F58D555B
Received: from lp-exchfe01.co.ihc.com ([10.50.128.45]) by
	gimail1.co.ihc.com with esmtp (Exim 4.62) (envelope-from
	<Greg.Snow@intermountainmail.org>) id 1I6XcD-00018E-GI; Thu, 05 Jul
	2007 14:07:49 -0600
Received: from LP-EXCHVS07.CO.IHC.COM ([10.50.128.40]) by
	lp-exchfe01.CO.IHC.COM with Microsoft SMTPSVC(6.0.3790.3959); Thu, 5
	Jul 2007 14:07:48 -0600
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Thu, 5 Jul 2007 14:07:47 -0600
Message-ID: <07E228A5BE53C24CAD490193A7381BBBAAD0DE@LP-EXCHVS07.CO.IHC.COM>
In-Reply-To: <7bff68f40707051029p6b3bff0ib0a0e7325674dcb@mail.gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] help with vector construction
Thread-Index: Ace/Kl3ZPQ0cT2IxQY21E7awN8l0GAAFYdXQ
From: "Greg Snow" <Greg.Snow@intermountainmail.org>
To: "Juan Pablo Fededa" <jpfededa@gmail.com>, r-help@stat.math.ethz.ch
X-OriginalArrivalTime: 05 Jul 2007 20:07:48.0075 (UTC)
	FILETIME=[287273B0:01C7BF40]
X-WSS-ID: 6A9390481Q4458580-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l65K7tPA014532
Subject: Re: [R] help with vector construction
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

One approach is to use the fact that vectors are automatically
replicated to the correct length when subscripting, so you can do
something like:

> my.matrix[ c(FALSE,TRUE,FALSE), 3 ] 

To get every 3rd element starting at the 2nd element, and the 3rd
column.

Hope this helps,


-- 
Gregory (Greg) L. Snow Ph.D.
Statistical Data Center
Intermountain Healthcare
greg.snow@intermountainmail.org
(801) 408-8111
 
 

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Juan 
> Pablo Fededa
> Sent: Thursday, July 05, 2007 11:30 AM
> To: r-help@stat.math.ethz.ch
> Subject: [R] help with vector construction
> 
> Hi all,
> 
> I want to make a vector with the third column of a matrix, 
> but only for the
> 2+3n rows of the matrix, with n being an entire number from 0 
> to a million.
> How can I do that in an easy way?
> Thanks in advance,
> 
> Juan Pablo
> 
> 	[[alternative HTML version deleted]]
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

2urgia F 9ie9=-