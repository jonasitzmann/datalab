From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 12:00:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RG0SL9028975
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 12:00:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RFxQFR032247;
	Wed, 27 Jun 2007 17:59:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from school1.business.edu (school1.bus.miami.edu [129.171.56.5])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RFqj8f029036
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 17:52:46 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Wed, 27 Jun 2007 11:52:36 -0400
Message-ID: <6BCB4D493A447546A8126F24332056E8062D15C6@school1.business.edu>
In-Reply-To: <mailman.9.1182679204.26425.r-help@stat.math.ethz.ch>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: xyplot with par
Thread-Index: Ace2RrPTd8px+mSQSsKJSlvzm6LsKwCjA78w
From: "Afshartous, David" <afshart@exchange.sba.miami.edu>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5RFqj8f029036
Subject: [R] xyplot with par
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
Is there are a simple way to plot multiple xyplots on the same page
in the code below (it currently overwrites the first plot w/ the
second).
I searched the archives and saw a similar question but the answer didn't
seem to work.
thanks
dave

x1 = rnorm(10)
x2 = rnorm (10)
y1 = rnorm(10)
y2 = rnorm (10)
op = par(mfrow = c(2,1))
xyplot(y1 ~ x1)
xyplot(y2 ~ x2)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

  :blc7