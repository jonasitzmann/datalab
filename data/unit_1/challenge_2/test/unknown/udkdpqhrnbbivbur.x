From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 17:55:56 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SLtsL9016099
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 17:55:56 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SLtCFq010029;
	Thu, 28 Jun 2007 23:55:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from school1.business.edu (school1.bus.miami.edu [129.171.56.5])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SLR7jQ030466
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 23:27:08 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Thu, 28 Jun 2007 17:26:53 -0400
Message-ID: <6BCB4D493A447546A8126F24332056E806337275@school1.business.edu>
In-Reply-To: <07E228A5BE53C24CAD490193A7381BBBA5AE7F@LP-EXCHVS07.CO.IHC.COM>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] applying max elementwise to two vectors
Thread-Index: AcewxrbfcjJcfEk5TTKV4gWGHEkOSQI+mDEgAAJtT5AAAAt0kA==
From: "Afshartous, David" <afshart@exchange.sba.miami.edu>
To: "Greg Snow" <Greg.Snow@intermountainmail.org>, <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5SLR7jQ030466
Subject: Re: [R] applying max elementwise to two vectors
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


thanks all.  yes, pmax(x,y) gets it straight away.  sorry for missing
this
when I checked the docs. 

-----Original Message-----
From: Greg Snow [mailto:Greg.Snow@intermountainmail.org] 
Sent: Thursday, June 28, 2007 5:26 PM
To: Afshartous, David; r-help@stat.math.ethz.ch
Subject: RE: [R] applying max elementwise to two vectors

Are you looking for pmax? (look at the help ?pmax and the examples and
see if that does what you want).

--
Gregory (Greg) L. Snow Ph.D.
Statistical Data Center
Intermountain Healthcare
greg.snow@intermountainmail.org
(801) 408-8111
 
 

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Afshartous, 
> David
> Sent: Thursday, June 28, 2007 2:20 PM
> To: r-help@stat.math.ethz.ch
> Subject: [R] applying max elementwise to two vectors
> 
> 
>  
> All,
> 
> Is there one liner way to obtain the max per observation for two 
> vectors?
> I looked at apply and lapply but it seems that groundwork would have 
> to be done before applying either of those.  The code below does it 
> but seems like overkill.
> 
> Thanks!
> Dave
> 
> x = rnorm(10)
> y = rnorm(10)
> 
> ind = which(x < y)
> z = x
> z[ind] <- y[ind]  ## z now contains the max's
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

                   

K<7xgb7cri