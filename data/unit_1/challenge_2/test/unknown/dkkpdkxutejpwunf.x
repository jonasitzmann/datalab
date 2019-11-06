From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 07:48:57 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51BmuhB009180
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 07:48:56 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51BmMcv028254;
	Fri, 1 Jun 2007 13:48:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from uu01msg-exb01.soliscom.uu.nl (uu01msg-exb01.soliscom.uu.nl
	[131.211.4.82])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51BRlMT017766
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 13:27:47 +0200
x-mimeole: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Fri, 1 Jun 2007 13:27:46 +0200
Message-ID: <94E133D09AA24D43BF6341B675C01A33A4F556@uu01msg-exb01.soliscom.uu.nl>
In-Reply-To: <10910748.post@talk.nabble.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] tapply
Thread-Index: AcekPqzSBavVaawRQKSlorc8PQGgTQAAC+eA
References: <10910748.post@talk.nabble.com>
From: "Bojanowski, M.J.  \(Michal\)" <M.J.Bojanowski@uu.nl>
To: "livia" <yn19832@msn.com>, <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l51BRlMT017766
Subject: Re: [R] tapply
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

I'm not sure what is the 'pvalue' function (it's not found in base nor
stats packages) but
this should give you what you want:

# some example
re <- rnorm(100)
reg <- rep(1:3, length=100)
ast <- rep(1:2, length=100)

tapply( re, list(reg, ast), function(v) shapiro.test(v)$p.value )

# or neater by defining a function
p.shapiro <- function(v) shapiro.test(v)$p.value
tapply( re, list(reg, ast), p.shapiro )



hth,

michal

> Hello, I want to conduct normality test to a series of data 
> and get the
> p-value for each subset. I am using the following codes, but 
> it does not
> work.
> 
> tapply(re, list(reg, ast), pvalue(shapiro.test))
> 
> Could anyone give me some advice? Many thanks.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

z etd� 