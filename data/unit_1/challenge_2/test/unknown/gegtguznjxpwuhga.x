From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 08:27:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65CRUL9025925
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 08:27:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65CQYuH002721;
	Thu, 5 Jul 2007 14:26:54 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=AWL, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE, SARE_BAYES_5x8,
	SARE_UNB autolearn=no version=3.2.0
Received: from hqmtabh1.ms.com (hqmtabh1.ms.com [205.228.12.101])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65CP9KC001932
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 14:25:10 +0200
Received: from hqmtabh1 (localhost.ms.com [127.0.0.1])
	by hqmtabh1.ms.com (output Postfix) with ESMTP id 9F3A8483F7
	for <r-help@stat.math.ethz.ch>; Thu,  5 Jul 2007 08:25:09 -0400 (EDT)
Received: from ny16im02.ms.com (pimail3.ms.com [144.14.206.243])
	by hqmtabh1.ms.com (internal Postfix) with ESMTP id 7A2C0180010
	for <r-help@stat.math.ethz.ch>; Thu,  5 Jul 2007 08:25:09 -0400 (EDT)
Received: from PIWEXOB01.msad.ms.com (piwexob01 [144.14.3.72])
	by ny16im02.ms.com (Sendmail MTA Hub) with ESMTP id l65CP5F11319
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 08:25:05 -0400 (EDT)
Received: from PIWEXBH02.msad.ms.com ([205.228.46.225]) by
	PIWEXOB01.msad.ms.com with Microsoft SMTPSVC(6.0.3790.1830);
	Thu, 5 Jul 2007 08:24:57 -0400
Received: from NYWEXMB27.msad.ms.com ([205.228.46.121]) by
	PIWEXBH02.msad.ms.com with Microsoft SMTPSVC(6.0.3790.1830);
	Thu, 5 Jul 2007 08:24:57 -0400
x-mimeole: Produced By Microsoft MimeOLE V6.00.3790.2929
MIME-Version: 1.0
Date: Thu, 5 Jul 2007 08:24:57 -0400
Message-ID: <755261CA22782948B1C42ACDC83912A104614119@NYWEXMB27.msad.ms.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Importance: normal
Priority: normal
Thread-Topic: converting list to an array
Thread-Index: Ace+/3+Abe1j0uO4TZe/Wb8Iq/iPBQ==
From: "Aydemir, Zava \(FID\)" <Zava.Aydemir@morganstanley.com>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 05 Jul 2007 12:24:57.0531 (UTC)
	FILETIME=[7FE9B8B0:01C7BEFF]
X-Anti-Virus: Kaspersky Anti-Virus for MailServers 5.5.15/RELEASE,
	bases: 05072007 #336503, status: clean
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] converting list to an array
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
 
I have a list myList (see below) that consists of id's $'7',....,$'10'
and each id has an individual array, the length of which can vary from
id to id.
 
How can I convert this list into an array, ie. stacking the individual
arrays into one large array?
 
 
Thanks
 
Zava
 
 
myList:
 
$`7`
[1] 20050201 20050301 20050401 20050501
 
$`8`
[1] 20050201 20050301 20050401 20050501
 
$`9`
[1] 20050201 20050301 20050401 20050501
 
$`10`
[1] 20050101 20050201 20050301 20050401 20050501
--------------------------------------------------------

This is not an offer (or solicitation of an offer) to buy/se...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

u6;vwnawedibm