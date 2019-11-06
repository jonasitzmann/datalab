From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 18:59:19 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DMxIL9013518
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 18:59:19 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DMwOTI027187;
	Thu, 14 Jun 2007 00:58:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from ipex2.johnshopkins.edu (ipex2.johnshopkins.edu [162.129.8.151])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DMwFd6027108
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 00:58:16 +0200
Received: from dom-59mfy81.monument1.jhmi.edu (HELO DOM59MFY81)
	([10.16.148.124]) by ipex2.johnshopkins.edu with ESMTP/TLS/RC4-MD5;
	13 Jun 2007 18:58:15 -0400
X-BrightmailFiltered: true
X-Brightmail-Tracker: AAAAAA==
X-IronPort-AV: i="4.16,418,1175486400"; 
	d="scan'208"; a="278334343:sNHT39426228"
From: "Ravi Varadhan" <rvaradhan@jhmi.edu>
To: "'kavindra malik'" <kavindra_malik@yahoo.com>,
   "'Charles C. Berry'" <cberry@tajo.ucsd.edu>
References: <Pine.LNX.4.64.0706131426060.24825@tajo.ucsd.edu>
	<219034.18761.qm@web62502.mail.re1.yahoo.com>
Date: Wed, 13 Jun 2007 18:58:15 -0400
Message-ID: <000b01c7ae0e$53589d40$7c94100a@win.ad.jhu.edu>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
In-reply-to: <219034.18761.qm@web62502.mail.re1.yahoo.com>
Thread-Index: AceuB82O1AXF28wvRpamDDb+WbnQLgAAe3Og
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Normal and Poisson tail area expectations in R
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


More interesting is the Poisson convolution. I don't know if there is an
analytic solution to this.  I looked at Jolley's "Summation of Series" and
Abramowitz and Stegun, but no help there.  It seems that discrete FFT
technique should work. Does anyone know the answer?

Ravi.
----------------------------------------------------------------------------
-------

Ravi Varadhan, Ph.D.

Assistant Professor, The Center on Aging and Health

Division of Geriatric Medicine and Gerontology 

Johns Hopkins University

Ph: (410) 502-2619

Fax: (410) 614-9625

Email: rvaradhan@jhmi.edu

Webpage:  http://www.jhsph.edu/agingandhealth/People/Faculty/Varadhan.html

 

----------------------------------------------------------------------------
--------

-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of kavindra malik
Sent: Wednesday, June 13, 2007 5:45 PM
To: Charles C. Berry
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Normal and Poisson tail area expectations in R

Thank you very much. This solves the problem I was trying to solve. I am new
to R and am learning. A great lesson in the power of R...

"Charles C. Berry" <cberry@tajo.ucsd.edu> wrote: On Wed, 13 Jun 2007,
kavindra malik wrote:

> I am interested in R functions for the following integrals / sums
(expressed best I can in text)  -
>
> Normal: G_u(k) =  Integration_{Lower limit=k}^{Upper limit=infinity} [(u
-k) f(u) d(u)], where where u is N(0,1), and f(u) is the density function.
>
> Poisson: G(lambda,k) = Sum_{Lower limit=k}^{Upper limit=infinity} [(x-k)
p(x, lambda)] where P(x,lambda) is the Poisson prob function with parameter
lambda.
>
> The Normal expression is very commonly used in inventory management to 
> determine safety stocks (and its tabular values can be found in some 
> texts) - and I am also looking for Poisson and/or Gamma as that'd fit 
> the situation better.
>
> I am wondering if there are standard functions in R that might allow me to
get these values, instead of needing to do the numerical integration, etc.
myself.

Not that I know of, but it is not difficult to do the integration:

> k <- 1.1 # for example
> integrate(function(x) (x-k)*dnorm(x),lower=k,upper=Inf)
0.06861951 with absolute error < 5.5e-07
>

see

  ?integrate
  ?qnorm
  ?qpois
  ?qgamma

>                                                    Thank you very much.
>
>
>
> ---------------------------------
> Sucker-punch spam with award-winning protection.
>
>  [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

Charles C. Berry                            (858) 534-2098
                                             Dept of Family/Preventive
Medicine
E mailto:cberry@tajo.ucsd.edu             UC San Diego
http://famprevmed.ucsd.edu/faculty/cberry/  La Jolla, San Diego 92093-0901




       
---------------------------------


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

In02nc 