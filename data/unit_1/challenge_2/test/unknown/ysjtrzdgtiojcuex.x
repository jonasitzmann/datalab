From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 12:10:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FGA6L9004192
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 12:10:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FG8hr4016980;
	Fri, 15 Jun 2007 18:08:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from outboundd1.ihc.com (outboundd1.ihc.com [199.190.170.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FFgbFE005874
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 17:42:38 +0200
Received: from twemf1.co.ihc.com ([159.212.71.180])
	by outboundd1.ihc.com with esmtp (Exim 4.62)
	(envelope-from <Greg.Snow@intermountainmail.org>)
	id 1HzDwZ-0001Ya-cI; Fri, 15 Jun 2007 09:42:35 -0600
Received: from 159.212.71.80 by twemf1.co.ihc.com with ESMTP (Email
	Firewall SMTP Relay (Email Firewall v6.2.1)); Fri, 15 Jun 2007 09:42:36
	-0600
X-Server-Uuid: 0CCC7504-CEE2-47B5-B80E-0BE86FBE3DA5
Received: from lp-exchfe01.co.ihc.com ([10.50.128.45]) by
	gimail3.co.ihc.com with esmtp (Exim 4.62) (envelope-from
	<Greg.Snow@intermountainmail.org>) id 1HzDwT-0007Ts-Mt; Fri, 15 Jun
	2007 09:42:29 -0600
Received: from LP-EXCHVS07.CO.IHC.COM ([10.50.128.40]) by
	lp-exchfe01.CO.IHC.COM with Microsoft SMTPSVC(6.0.3790.3959); Fri, 15
	Jun 2007 09:42:28 -0600
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Fri, 15 Jun 2007 09:42:28 -0600
Message-ID: <07E228A5BE53C24CAD490193A7381BBBA21F63@LP-EXCHVS07.CO.IHC.COM>
In-Reply-To: <71257D09F114DA4A8E134DEAC70F25D308A690EB@groamrexm03.amer.pfizer.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] R vs. Splus in Pharma/Devices Industry
Thread-Index: Aceuw0q/9Hsz/G1JQoqQ0IXuueAtjAAAM4VwAADPYvAAJvagQA==
From: "Greg Snow" <Greg.Snow@intermountainmail.org>
To: "Kuhn, Max" <Max.Kuhn@pfizer.com>, Cody_Hamilton@edwards.com,
   r-help@stat.math.ethz.ch
X-OriginalArrivalTime: 15 Jun 2007 15:42:28.0831 (UTC)
	FILETIME=[C79396F0:01C7AF63]
X-WSS-ID: 6A6C6CE61OC1845635-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5FFgbFE005874
Subject: Re: [R] R vs. Splus in Pharma/Devices Industry
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

I am happy to say nice things about odfWeave.  Before it was released I
was looking at the RTF spec to see if I could write an RTF driver for
sweave.  But the task was a bit daunting and I doubt that I would have
had time for it.  So, I was (and still am) exited when odfWeave came
out.  It is a big time saver for  me and I have shown it to several
other people as well.

I have looked at ooconvert, but unfortunately the current version is
limited to *nix, and I am currently in a MS windows world.  I tried
getting it to run under cygwin at one point, but did not succeed at the
time.  Once it is available more generally, I will just set up Makefiles
so that I can automatically produce either .doc or .pdf documents from
my templates and data.

Thanks for the great package,

-- 
Gregory (Greg) L. Snow Ph.D.
Statistical Data Center
Intermountain Healthcare
greg.snow@intermountainmail.org
(801) 408-8111
 
 

> -----Original Message-----
> From: Kuhn, Max [mailto:Max.Kuhn@pfizer.com] 
> Sent: Thursday, June 14, 2007 3:11 PM
> To: Greg Snow; Cody_Hamilton@edwards.com; r-help@stat.math.ethz.ch
> Subject: RE: [R] R vs. Splus in Pharma/Devices Industry
> 
> Greg,
> 
> Thanks for the kind words about odfWeave.
> 
> > These reports are usually put out as internal webpages for various 
> > people in the organization to look at, so we could either go the 
> > odfWeave approach and generate pdf files (not as automated 
> as I would
> > like)
> 
> I agree that automating the conversion should be easier. My 
> wish would be that the OO binary had a flag to convert from 
> one format to another.
> 
> On Linux, there is a bash script that uses the open office 
> binaries to do the conversion at the command line by Nathan Coulter at
> 
>    http://sourceforge.net/projects/ooconvert/
> 
> Also, there is a Java class called jooconvert out there (if memory
> serves) that has similar functionality.
> 
> Max
> 
> 
> 
> ----------------------------------------------------------------------
> LEGAL NOTICE
> Unless expressly stated otherwise, this message is 
> confidential and may be privileged.  It is intended for the 
> addressee(s) only.  Access to this E-mail by anyone else is 
> unauthorized.  If you are not an addressee, any disclosure or 
> copying of the contents of this E-mail or any action taken 
> (or not taken) in reliance on it is unauthorized and may be 
> unlawful.  If you are not an addressee, please inform the 
> sender immediately.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

tapF tiRToDnOG4