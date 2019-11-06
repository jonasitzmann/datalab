From r-help-bounces@stat.math.ethz.ch  Sat Jun  2 10:53:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52Er6hB024627
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 10:53:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l52Epjoj015332;
	Sat, 2 Jun 2007 16:51:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from dc1ex01.air.org (mail1000.air.org [38.118.77.35])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l52EpaoL015290
	for <r-help@stat.math.ethz.ch>; Sat, 2 Jun 2007 16:51:37 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Sat, 2 Jun 2007 10:50:02 -0400
Message-ID: <2323A6D37908A847A7C32F1E3662C80EB5E683@dc1ex01.air.org>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] What is the maximum size of a matrix?
Thread-Index: Acekm4JxmbpmxuMVTy+Y3UZmnyxi1QAico7X
References: <2323A6D37908A847A7C32F1E3662C80EBA0702@dc1ex01.air.org>
	<1180736611.5233.9.camel@localhost.localdomain>
From: "Doran, Harold" <HDoran@air.org>
To: <marc_schwartz@comcast.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] What is the maximum size of a matrix?
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

Thanks for the clarification, Marc. Also, I should correct my error below. I wrote excel's limit is 16^2. But, it is 2^16 -1


-----Original Message-----
From: Marc Schwartz [mailto:marc_schwartz@comcast.net]
Sent: Fri 6/1/2007 6:23 PM
To: Doran, Harold
Cc: Guanrao Chen; r-help@stat.math.ethz.ch
Subject: Re: [R] What is the maximum size of a matrix?
 
Harold,

Actually there is a maximum size, even if one had sufficient memory.

Since a matrix is a vector with a dim attribute, and these objects are
indexed using integers, the maximum sized vector one 'could' create is:

> .Machine$integer.max
[1] 2147483647

which is:

> 2^31 - 1
[1] 2147483647

and that does not differ on 64 bit systems.

HTH,

Marc Schwartz


On Fri, 2007-06-01 at 17:36 -0400, Doran, Harold wrote:
> There is no maximum size. This will be driven by (at least) two issues.
> First, how much memory you have on your own computer and second what
> data you have in each cell. For instance, an integer takes less memory
> than a floating point.
> 
> Other spreadsheet programs like excel limit the number of rows to 16^2
> irrespective of memory, but that is not true here.
> 
> Harold
> 
> 
> > -----Original Message-----
> > From: r-help-bounces@stat.math.ethz.ch 
> > [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Guanrao Chen
> > Sent: Friday, June 01, 2007 5:06 PM
> > To: r-help@stat.math.ethz.ch
> > Subject: [R] What is the maximum size of a matrix?
> > 
> > hi, Rers
> > 
> > I tried to find out the max size (# of rows, # of
> > columns) of a matrix that is allowed by R but failed.
> > 
> > Can anybody let me know?
> > 
> > Thanks!
> > Guanrao
> > 



	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

tm3nONtaexac