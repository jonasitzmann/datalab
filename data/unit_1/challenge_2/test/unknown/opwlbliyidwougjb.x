From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 06:55:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EAswL9020403
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 06:54:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EArxUn008222;
	Thu, 14 Jun 2007 12:54:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mercury.noc.soton.ac.uk (mercury.noc.soton.ac.uk
	[139.166.240.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EAZ78l032455
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@r-project.org>; Thu, 14 Jun 2007 12:35:08 +0200
Received: from [139.166.245.10] (245-10.noc.soton.ac.uk [139.166.245.10])
	by mercury.noc.soton.ac.uk (8.12.11.20060308/8.12.11) with ESMTP id
	l5EAYxjU031573; Thu, 14 Jun 2007 11:34:59 +0100
In-Reply-To: <691542.62452.qm@web52901.mail.re2.yahoo.com>
References: <691542.62452.qm@web52901.mail.re2.yahoo.com>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <64A6930D-62AB-4A07-9F95-9FC2241611F0@noc.soton.ac.uk>
From: Robin Hankin <r.hankin@noc.soton.ac.uk>
Date: Thu, 14 Jun 2007 11:34:58 +0100
To: ivivi mwaniki <jvivben@yahoo.com>
X-Mailer: Apple Mail (2.752.2)
X-NOCS-MailScanner-Information: Please contact the ISP for more information
X-MailScanner-NOCS: Found to be clean
X-MailScanner-NOCS-SpamCheck: not spam (whitelisted),
	SpamAssassin (score=-2.244, required 5, autolearn=not spam,
	ALL_TRUSTED -1.80, AWL -0.44)
X-MailScanner-NOCS-From: r.hankin@noc.soton.ac.uk
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R program <r-help@r-project.org>
Subject: Re: [R] besselK
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

Hello

AFAIK, R has no capability for evaluating Bessel functions for  
complex arguments.

Bessel functions for complex arguments are difficult to evaluate  
numerically.
Some Bessel functions require cut lines or consideration of Riemann  
surfaces.

The GSL library (for which the gsl package is an R wrapper) does
not include such functionality although the issue has arisen
on the GSL email list a couple of times over the last few years.

Writing R functionality for Bessel functions (and in particular
the Airy function) is on my List of Things To Do, but
don't hold your breath  . . .

best wishes


Robin




On 14 Jun 2007, at 10:31, ivivi mwaniki wrote:

> Assistance,
> besselK- complex number problem
>  Im a student  intrested in using R in my learning and research  
> work in option pricing however i have a problem with besselK  
> function In R.
>  Would you assit me in computing the besselK of third kind of a  
> complex number in R.
>  Any code or suggestion will be highly appriceiated
>  eg
>  besselK(2,10)  works well.. but
>  besselK(2,10i) doesnt work !!
>
>  im supprised it works in MATLAB but NOT in R.
>  rgds
>  ivivi mwaniki
>  student kenya
>
>
> ---------------------------------
> Don't pick lemons.
>
> 	[[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting- 
> guide.html
> and provide commented, minimal, self-contained, reproducible code.

--
Robin Hankin
Uncertainty Analyst
National Oceanography Centre, Southampton
European Way, Southampton SO14 3ZH, UK
  tel  023-8059-7743

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

>yw.rt0<