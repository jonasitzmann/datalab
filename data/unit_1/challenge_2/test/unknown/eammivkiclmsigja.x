From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 17:12:27 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ELCPL9026544
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 17:12:26 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ELBck0008765;
	Thu, 14 Jun 2007 23:11:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from gromsgom01.pfizer.com (gromsgo.pfizer.com [148.168.224.84])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ELBMc4008642
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 23:11:23 +0200
Received: from groamrexc01.amer.pfizer.com (groamrexc01.amer.pfizer.com
	[172.30.8.168])
	by gromsgom01.pfizer.com (8.13.7/8.13.7) with ESMTP id l5ELBHOu002683; 
	Thu, 14 Jun 2007 17:11:17 -0400
Received: from groamrexc01.amer.pfizer.com ([172.30.8.238]) by
	groamrexc01.amer.pfizer.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 14 Jun 2007 17:11:16 -0400
Received: from groamrexm03.amer.pfizer.com ([10.128.42.23]) by
	groamrexc01.amer.pfizer.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 14 Jun 2007 17:11:16 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Thu, 14 Jun 2007 17:11:09 -0400
Message-ID: <71257D09F114DA4A8E134DEAC70F25D308A690EB@groamrexm03.amer.pfizer.com>
In-Reply-To: <07E228A5BE53C24CAD490193A7381BBBA21E92@LP-EXCHVS07.CO.IHC.COM>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] R vs. Splus in Pharma/Devices Industry
Thread-Index: Aceuw0q/9Hsz/G1JQoqQ0IXuueAtjAAAM4VwAADPYvA=
From: "Kuhn, Max" <Max.Kuhn@pfizer.com>
To: "Greg Snow" <Greg.Snow@intermountainmail.org>, <Cody_Hamilton@edwards.com>,
   <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 14 Jun 2007 21:11:16.0533 (UTC)
	FILETIME=[8BCA4650:01C7AEC8]
X-Proofpoint-Virus-Version: vendor=fsecure engine=4.65.5502:2.3.11, 1.2.37,
	4.0.164 definitions=2007-06-14_03:2007-06-12, 2007-06-14,
	2007-06-14 signatures=0
X-Proofpoint-Spam-Reason: safe
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5ELBMc4008642
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

Greg,

Thanks for the kind words about odfWeave.

> These reports are usually put out as internal webpages for various
> people in the organization to look at, so we could either go the
> odfWeave approach and generate pdf files (not as automated as I would
> like)

I agree that automating the conversion should be easier. My wish would
be that the OO binary had a flag to convert from one format to another.

On Linux, there is a bash script that uses the open office binaries to
do the conversion at the command line by Nathan Coulter at

   http://sourceforge.net/projects/ooconvert/

Also, there is a Java class called jooconvert out there (if memory
serves) that has similar functionality.

Max



----------------------------------------------------------------------
LEGAL NOTICE\ Unless expressly stated otherwise, this messag...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

enjee0-