From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 11:54:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63FsIL9030603
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 11:54:19 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63FrXIx020586;
	Tue, 3 Jul 2007 17:53:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from mail.rhotrading.com (WEBMAIL.RHOTRADING.COM [66.9.177.36])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63FrRfe020564
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 17:53:27 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 3 Jul 2007 10:53:26 -0500
Message-ID: <F9F2A641C593D7408925574C05A7BE7739525F@rhopost.rhotrading.com>
In-Reply-To: <11414114.post@talk.nabble.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] EWMA in fMultivar
Thread-Index: Ace9g71mJtcK5KRnR/KV83jOac4hYAABeByA
References: <11414114.post@talk.nabble.com>
From: <davidr@rhotrading.com>
To: "livia" <yn19832@msn.com>, <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l63FrRfe020564
Subject: Re: [R] EWMA in fMultivar
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

To calculate variance (assuming zero mean, as is usual), you would use
returns^2. 
You will have to examine the code by typing EWMA to see what it's doing
and how to change it. The code is clear enough that you could make your
own version to achieve what you want.
HTH,

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
Sent: Tuesday, July 03, 2007 9:59 AM
To: r-help@stat.math.ethz.ch
Subject: [R] EWMA in fMultivar


Hello, I would like to use the function EWMA() in the fMultivar Package
and I
have a series of data x, which is the returns series. Basically, I would
like to get the variance estimation using EWMA.

I am trying something like EWMA(x, lambda) and I have a couple of
questions:

 
Should x be the returns series or price series in my case?

When I get the result, there are the same numbers of data points as in
the
returns series. I was expecting there would be one less data points than
the
original data series, or are they one period lagged data?

Could anyone give me some advice? Many thanks

-- 
View this message in context:
http://www.nabble.com/EWMA-in-fMultivar-tf4018921.html#a11414114
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

    

KMvaoor