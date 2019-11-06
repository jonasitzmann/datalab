From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 12:24:17 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65GOFL9028459
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 12:24:16 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65GNKfE027511;
	Thu, 5 Jul 2007 18:23:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from school1.business.edu (school1.bus.miami.edu [129.171.56.5])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65GI2q0025511
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 18:18:03 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Thu, 5 Jul 2007 12:17:55 -0400
Message-ID: <6BCB4D493A447546A8126F24332056E8063E886E@school1.business.edu>
In-Reply-To: <mailman.11.1183111206.10613.r-help@stat.math.ethz.ch>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: summarizing dataframe at variable/factor levels
Thread-Index: Ace6Oqb/n1Pw3fPoRMCjvcbzPoJ51wE4+U9A
From: "Afshartous, David" <afshart@exchange.sba.miami.edu>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l65GI2q0025511
Subject: [R] summarizing dataframe at variable/factor levels
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

Is there an efficient way to apply say "mean" or "median" to a dataframe

according to say all combinations of two variables in the dataframe?
Below is a simple example and the outline of a "manual" solution that
will work but is not very efficient
(could also generalize this to a function).  Searched the archives and
docs but didn't see anything close to this question.

Cheers,
dave

dat.ex = data.frame(  rep(c(1:6), each=6), c(rnorm(12), rnorm(12, 1),
rnorm(12, 2)), rnorm(36, 5), rep(c(1:6), 6),
rep(c("Drug1", "Drug2", "Placebo"), each=12) )
names(dat.ex) = c("patient.no", "outcome", "x", "time", "drug")

mean of first 2 time pts on Drug1:
mean.time.1.drug.1 = mean( dat.ex[dat.ex$time==1 & dat.ex$drug=="Drug1",
c(2,3)])
mean.time.2.drug.1 = mean( dat.ex[dat.ex$time==2 & dat.ex$drug=="Drug1",
c(2,3)])

dat.ex.reduced = as.data.frame(rbind(mean.time.1.drug.1,
mean.time.2.drug.1))
dat.ex.reduced$Drug = c("Drug1", "Drug1")  ## add back Drug variable and
time variable
dat.ex.reduced$time = c(1,2)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

oqitZ/4q//=