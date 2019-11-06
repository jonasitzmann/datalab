From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 12:37:46 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63GbiL9031095
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 12:37:45 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63GZY3k004932;
	Tue, 3 Jul 2007 18:37:25 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from school1.business.edu (school1.bus.miami.edu [129.171.56.5])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63GZHg4004771
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 18:35:18 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 3 Jul 2007 12:35:08 -0400
Message-ID: <6BCB4D493A447546A8126F24332056E8063BC45D@school1.business.edu>
In-Reply-To: <Pine.LNX.4.64.0706281419450.21694@springer.Berkeley.EDU>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: xyplot and autokey, maintaining colors specified via "col" in key
Thread-Index: Ace5ykxJVZrg+xHrTR+1PJ5W9gHyiADxAwBQ
From: "Afshartous, David" <afshart@exchange.sba.miami.edu>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l63GZHg4004771
Subject: [R] xyplot and autokey,
	maintaining colors specified via "col" in key
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

When specifying colors to xyplot w/ a groups argument, using
auto.key no longer maintains the colors properly.  I've searched
the docs and help but haven't found exactly what I need ... I saw
a few examples in the archives involving par.settings but that doesn't
seem to do it. I also saw some people using key instead of auto.key, but
that didn't seem consistent.  Is there a quick fix to the example code
below?

cheers,
Dave

dat.ex = data.frame(  rep(c(1:6), each=6), c(rnorm(12), rnorm(12, 1),
rnorm(12, 2)), rep(c(1:6), 6),
rep(c("Drug1", "Drug2", "Placebo"), each=12) )
names(dat.ex) = c("patient.no", "outcome", "time", "drug")


## colors in xyplot agree w/ colors in key, colors not specified:
xyplot(outcome ~ time, dat.ex, groups=drug, type=c("g", "smooth"), 
auto.key = list(space = "top",  text = levels(dat.ex$drug),
points=FALSE, lines=TRUE ) )

## colors in xyplot do NOT agree w/ colors in key when colors changed:
xyplot(outcome ~ time, dat.ex, groups=drug, type=c("g", "smooth"), 
auto.key = list(space = "top",  text = levels(dat.ex$drug),
points=FALSE, lines=TRUE ),
col = c(1,2,3)  )

i.e., the key is still generated w/ the "old" colors.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

U1= 