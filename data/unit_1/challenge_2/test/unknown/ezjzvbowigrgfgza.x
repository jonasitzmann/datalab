From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 09:43:38 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63DhaL9029210
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 09:43:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63DgRbi029333;
	Tue, 3 Jul 2007 15:42:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from mail.rhotrading.com (WEBMAIL.RHOTRADING.COM [66.9.177.36])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63DgFeB029258
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 15:42:16 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 3 Jul 2007 08:42:14 -0500
Message-ID: <F9F2A641C593D7408925574C05A7BE77395243@rhopost.rhotrading.com>
In-Reply-To: <11409874.post@talk.nabble.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Exponentially Weighted Moving Average
Thread-Index: Ace9YIFa7uch7aR1QiyHYzeTk7BoVQAFvxiw
References: <11409874.post@talk.nabble.com>
From: <davidr@rhotrading.com>
To: "livia" <yn19832@msn.com>, <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l63DgFeB029258
Subject: Re: [R] Exponentially Weighted Moving Average
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

You could use rollFun from fMultivar package.
You need to define your EWMA function separately.
(Usually the EWMA moves along with a constant window size, though ....)

David L. Reiner
Rho Trading Securities, LLC
550 W. Jackson Blvd #1000
Chicago, IL 60661-5704
 
312-244-4610 direct
312-244-4500 main
312-244-4501 fax
 

-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of livia
Sent: Tuesday, July 03, 2007 5:51 AM
To: r-help@stat.math.ethz.ch
Subject: [R] Exponentially Weighted Moving Average


Hi, I have got a series of data "x" and some parameter "a", and I would
like
to take some Exponentially Weighted Moving Average to the data in the
following fomula, and obtain the return series y

y1=a^265*x[2]+a^264*x[3]+a^263*x[4]+...+a^0*x[267]

y2=a^264*x[4]+a^263*x[5]+a^263*x[6]+...+a^0*x[268]

....

y265=a^1*x[530]+a^0*x[531]

y266=a^0*x[532]

Could anyone give me some advice how can I achieve this?
Many thanks

-- 
View this message in context:
http://www.nabble.com/Exponentially-Weighted-Moving-Average-tf4017572.ht
ml#a11409874
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide
http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

2ip4