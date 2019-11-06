From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 09:56:34 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EDuXL9022466
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 09:56:33 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EDtkpU010784;
	Thu, 14 Jun 2007 15:56:08 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EDk5ec006381
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 15:46:06 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HypTd-0002Ku-O6
	for r-help@stat.math.ethz.ch; Thu, 14 Jun 2007 15:35:06 +0200
Received: from adsl-214-116-221.gnv.bellsouth.net ([68.214.116.221])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 15:35:05 +0200
Received: from bolker by adsl-214-116-221.gnv.bellsouth.net with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 15:35:05 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Ben Bolker <bolker@ufl.edu>
Date: Thu, 14 Jun 2007 13:21:51 +0000 (UTC)
Lines: 60
Message-ID: <loom.20070614T145744-497@post.gmane.org>
References: <691542.62452.qm@web52901.mail.re2.yahoo.com>
	<64A6930D-62AB-4A07-9F95-9FC2241611F0@noc.soton.ac.uk>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 68.214.116.221 (Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty))
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
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

Robin Hankin <r.hankin <at> noc.soton.ac.uk> writes:

> 
> Hello
> 
> AFAIK, R has no capability for evaluating Bessel functions for  
> complex arguments.
> 
> Bessel functions for complex arguments are difficult to evaluate  
> numerically.
> Some Bessel functions require cut lines or consideration of Riemann  
> surfaces.
> 
> The GSL library (for which the gsl package is an R wrapper) does
> not include such functionality although the issue has arisen
> on the GSL email list a couple of times over the last few years.
> 
> Writing R functionality for Bessel functions (and in particular
> the Airy function) is on my List of Things To Do, but
> don't hold your breath  . . .
> 
> best wishes
> 
> Robin
> 
> On 14 Jun 2007, at 10:31, ivivi mwaniki wrote:
> 
> > Assistance,
> > besselK- complex number problem
> >  Im a student  intrested in using R in my learning and research  
> > work in option pricing however i have a problem with besselK  
> > function In R.
> >  Would you assit me in computing the besselK of third kind of a  
> > complex number in R.
> >  Any code or suggestion will be highly appriceiated
> >  eg
> >  besselK(2,10)  works well.. but
> >  besselK(2,10i) doesnt work !!
> >
> >  im supprised it works in MATLAB but NOT in R.
> >  rgds
> >  ivivi mwaniki
> >  student kenya
> >
> >

   I have some code for complex Bessel functions which consists
of R wrappers for C++ code: the licensing a little obscure -- the code is
ultimately from "Computation of Special Functions", Zhang and Jin, John Wiley
and Sons, 1996.  The FORTRAN routines are available from
http://jin.ece.uiuc.edu/routines/routines.html ; Chris Bond
http://www.crbond.com/math.htm has made a C++ translation
available.  Both versions are copyrighted: Zhang and Jin
say "we give permission to the user who downloads these routines to incorporate
any of these routines into his or her programs provided that the copyright is
acknowledged".  The code seems to work for my purposes, but hasn't
been thoroughly tested.

  I can send my crude versions to anyone who would like it.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

e�jxt