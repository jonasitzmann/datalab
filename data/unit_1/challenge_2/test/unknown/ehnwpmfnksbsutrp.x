From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 16:57:38 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SKvWL9015486
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 16:57:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SKuVpd017628;
	Thu, 28 Jun 2007 22:56:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from school1.business.edu (school1.bus.miami.edu [129.171.56.5])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SKJulo003414
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 22:19:57 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Thu, 28 Jun 2007 16:19:39 -0400
Message-ID: <6BCB4D493A447546A8126F24332056E806301A6B@school1.business.edu>
In-Reply-To: <mailman.7.1182074404.9166.r-help@stat.math.ethz.ch>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: applying max elementwise to two vectors
Thread-Index: AcewxrbfcjJcfEk5TTKV4gWGHEkOSQI+mDEg
From: "Afshartous, David" <afshart@exchange.sba.miami.edu>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5SKJulo003414
Subject: [R] applying max elementwise to two vectors
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

 
All,

Is there one liner way to obtain the max per observation for two
vectors?
I looked at apply and lapply but it seems that groundwork would have to
be done before applying either of those.  The code below does it but
seems
like overkill.

Thanks!
Dave

x = rnorm(10)
y = rnorm(10)

ind = which(x < y)
z = x
z[ind] <- y[ind]  ## z now contains the max's

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

nd r C"g.B#oo