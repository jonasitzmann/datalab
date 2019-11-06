From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 14:07:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63I7uL9032078
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 14:07:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63I76ra005724;
	Tue, 3 Jul 2007 20:07:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from outboundd1.ihc.com (outboundd1.ihc.com [199.190.170.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63I6k1B005515
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 20:06:47 +0200
Received: from twemf1.co.ihc.com ([159.212.71.180])
	by outboundd1.ihc.com with esmtp (Exim 4.62)
	(envelope-from <Greg.Snow@intermountainmail.org>)
	id 1I5mlw-000668-c5; Tue, 03 Jul 2007 12:06:44 -0600
Received: from 159.212.71.188 by twemf1.co.ihc.com with ESMTP (Email
	Firewall SMTP Relay (Email Firewall v6.2.1)); Tue, 03 Jul 2007 12:06:17
	-0600
X-Server-Uuid: 0CCC7504-CEE2-47B5-B80E-0BE86FBE3DA5
Received: from lp-exchfe02.co.ihc.com ([10.50.128.46]) by
	gimail2.co.ihc.com with esmtp (Exim 4.62) (envelope-from
	<Greg.Snow@intermountainmail.org>) id 1I5mlp-0007eb-Jg; Tue, 03 Jul
	2007 12:06:37 -0600
Received: from LP-EXCHVS07.CO.IHC.COM ([10.50.128.40]) by
	lp-exchfe02.CO.IHC.COM with Microsoft SMTPSVC(6.0.3790.3959); Tue, 3
	Jul 2007 12:06:36 -0600
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 3 Jul 2007 12:06:36 -0600
Message-ID: <07E228A5BE53C24CAD490193A7381BBBAACF13@LP-EXCHVS07.CO.IHC.COM>
In-Reply-To: <755261CA22782948B1C42ACDC83912A1046140A2@NYWEXMB27.msad.ms.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] vertically concatenating data frames
Thread-Index: Ace9nA0tkgxpM/GmTV+H+dky515sXgAAL8PA
From: "Greg Snow" <Greg.Snow@intermountainmail.org>
To: "Aydemir, Zava (FID)" <Zava.Aydemir@morganstanley.com>,
   r-help@stat.math.ethz.ch
X-OriginalArrivalTime: 03 Jul 2007 18:06:36.0894 (UTC)
	FILETIME=[E5A8C7E0:01C7BD9C]
X-WSS-ID: 6A944F931O4468165-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l63I6k1B005515
Subject: Re: [R] vertically concatenating data frames
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

Use rbind instead of c:

> df <- rbind(df1,df2)

Hope this helps,

-- 
Gregory (Greg) L. Snow Ph.D.
Statistical Data Center
Intermountain Healthcare
greg.snow@intermountainmail.org
(801) 408-8111
 
 

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of 
> Aydemir, Zava (FID)
> Sent: Tuesday, July 03, 2007 12:01 PM
> To: r-help@stat.math.ethz.ch
> Subject: [R] vertically concatenating data frames
> 
> Hi,
>  
> what is the recommended way to vertically concatenate 2 data 
> frames with the same column names but different number of rows?
>  
> My problem is something along these lines:
>  
> df1 <- data.frame(var1=var1,var2=var2,var3=var3)  # nrow(df1)=1000
> df2 <- data.frame(var1=var4,var2=var5,var3=var6)  # nrow(df2)=2000
>  
> I tried df <- c(df1,df2), no success. stack does not seem to 
> be appropriate either for my problem.
>  
>  
> Thanks
>  
> Zava
> --------------------------------------------------------
> 
> This is not an offer (or solicitation of an offer) to 
> buy/se...{{dropped}}
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

                 

tzDpc<lr