From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 12:11:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63GBVL9030813
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 12:11:33 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63G9X8V026509;
	Tue, 3 Jul 2007 18:10:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SARE_UNB,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from hqmtabh4.ms.com (hqmtabh4.ms.com [205.228.12.104])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63FY8JM012132
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 17:34:09 +0200
Received: from hqmtabh4 (localhost.ms.com [127.0.0.1])
	by hqmtabh4.ms.com (output Postfix) with ESMTP id 17BA948302;
	Tue,  3 Jul 2007 11:34:08 -0400 (EDT)
Received: from ny37im01.ms.com (hqmail2.ms.com [144.14.31.40])
	by hqmtabh4.ms.com (internal Postfix) with ESMTP id E2A2391401B;
	Tue,  3 Jul 2007 11:34:07 -0400 (EDT)
Received: from PAWEXOB02.msad.ms.com (pawexob02 [205.228.46.101])
	by ny37im01.ms.com (Sendmail MTA Hub) with ESMTP id l63FY7910259;
	Tue, 3 Jul 2007 11:34:07 -0400 (EDT)
Received: from PIWEXBH02.msad.ms.com ([205.228.46.225]) by
	PAWEXOB02.msad.ms.com with Microsoft SMTPSVC(6.0.3790.1830);
	Tue, 3 Jul 2007 11:34:06 -0400
Received: from NYWEXMB23.msad.ms.com ([205.228.46.75]) by
	PIWEXBH02.msad.ms.com with Microsoft SMTPSVC(6.0.3790.1830);
	Tue, 3 Jul 2007 11:34:06 -0400
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.2929
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 3 Jul 2007 11:34:05 -0400
Message-ID: <D3AEEDA31E57474B840BEBC25A8A834401957470@NYWEXMB23.msad.ms.com>
In-Reply-To: <11414114.post@talk.nabble.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] EWMA in fMultivar
Importance: normal
Priority: normal
Thread-Index: Ace9g5z1kc9I/8B/TR+BGuMpWxqUiQAAyDRQ
References: <11414114.post@talk.nabble.com>
From: "Leeds, Mark \(IED\)" <Mark.Leeds@morganstanley.com>
To: "livia" <yn19832@msn.com>, <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 03 Jul 2007 15:34:06.0338 (UTC)
	FILETIME=[9780BE20:01C7BD87]
X-Anti-Virus: Kaspersky Anti-Virus for MailServers 5.5.15/RELEASE,
	bases: 03072007 #335245, status: clean
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l63FY8JM012132
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

there is an ewma example in ?filter I think that might be more useful
because then you can see better
What's happening in terms of the smoothing. Actually, I just looked and
it's not there. It must have been in S+.

I include my ewma below but you have to modify it because it assumes a
zoo object. Of coure,  The other
option you have is to look at the source code for the ewma function in
fMultvar.

ewma<-function(x,lambda = 1, init = (1-lambda)*.raw[good.ind][1]) {

   # work with 'non-zoo' data for speed and then recombine
   .raw <- unclass(coredata(x))

   good.ind <- !is.na(.raw)  # determine good values

   .raw[good.ind] <- filter(lambda * .raw[good.ind], filter=(1-lambda),
       method='recursive', init=coredata(init))
   zoo(.raw, index(x)) # create zoo object for return



-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of livia
Sent: Tuesday, July 03, 2007 10:59 AM
To: r-help@stat.math.ethz.ch
Subject: [R] EWMA in fMultivar


Hello, I would like to use the function EWMA() in the fMultivar Package
and I have a series of data x, which is the returns series. Basically, I
would like to get the variance estimation using EWMA.

I am trying something like EWMA(x, lambda) and I have a couple of
questions:

 
Should x be the returns series or price series in my case?

When I get the result, there are the same numbers of data points as in
the returns series. I was expecting there would be one less data points
than the original data series, or are they one period lagged data?

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
--------------------------------------------------------

This is not an offer (or solicitation of an offer) to buy/se...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



wb. 1smT-i.8eup