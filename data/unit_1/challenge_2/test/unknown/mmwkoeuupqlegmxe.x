From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 10:44:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QEi6L9012167
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 10:44:08 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QEh1H0013962;
	Tue, 26 Jun 2007 16:43:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from gtcmx1.ees.hhs.gov (gtcmx1.ees.hhs.gov [158.74.236.245])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QEgpQM013925
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 16:42:51 +0200
Received: from [158.74.246.117] by gtcmx1.ees.hhs.gov with ESMTP (
	********** UNAUTHORIZED ACCESS ****** WARNING******** Unauthorized
	access to this United States Government Computer System and software is
	prohibited by Title 18 United States Code, Section 1030,fraud and
	related activity in connection with c); Tue, 26 Jun 2007 10:42:41 -0400
X-Server-Uuid: C72C66F0-0D42-4FCE-BE16-DB7239DB0738
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 26 Jun 2007 10:42:39 -0400
Message-ID: <1F809F62E3CEA04881B4644029484B4507F72348@AVN3VS004.ees.hhs.gov>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Subscripting specified variables in a function
thread-index: Ace4AF2ODkseLLVQT+m26kzuoIkzLA==
From: "Zodet, Marc W. (AHRQ)" <Marc.Zodet@ahrq.hhs.gov>
To: r-help@stat.math.ethz.ch
X-TMWD-Spam-Summary: TS=20070626144242; SEV=2.2.2; DFV=B2007062611;
	IFV=2.0.4,4.0-9; AIF=B2007062611; RPD=5.02.0125; ENG=IBF;
	RPDID=7374723D303030312E30413031303230342E34363831323545322E303031362C73733D312C6667733D30;
	CAT=NONE; CON=NONE
X-MMS-Spam-Filter-ID: B2007062611_5.02.0125_4.0-9
X-WSS-ID: 6A9FFA6A4P81719593-02-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Subscripting specified variables in a function
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

I'm trying to create a function which will allow me to subset a data set
based on values of various specified variables.  I also want to then
apply some other function(s) (e.g., summary).

 

This is what I've tried so far....

 

> test.fx <- function(dta, expvar, expval) {

+ newdta <- subset(dta, eval(expvar)>expval)

+ summary(newdta$eval(expvar))

+ }

> 

> test.fx(fyc04s, quote(totexp04), 100)

Error in summary(newdta$eval(expvar)) : attempt to apply non-function

> 

 

The subset works fine, but the my attempt to access the specified
variable bombs.  

 

Is there a syntactical change I can make?

Is it better to attach newdta?

 

Thanks in advance for any guidance.

 

Marc

 

Marc W. Zodet, MS                           

Senior Health Statistician

Agency for Healthcare Research and Quality

Center for Financing, Access, and Cost Trends

301-427-1563 (Telephone)

301-427-1276 (Fax)

marc.zodet@ahrq.hhs.gov

 


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

"lR I