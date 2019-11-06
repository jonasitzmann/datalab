From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 16:34:44 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BKYgL9018509
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 16:34:43 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BKY6wL023428;
	Mon, 11 Jun 2007 22:34:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from ipex1.johnshopkins.edu (ipex1.johnshopkins.edu [162.129.8.141])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BJtepL009531
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 21:55:41 +0200
Received: from dom-59mfy81.monument1.jhmi.edu (HELO DOM59MFY81)
	([10.16.148.124]) by ipex1.johnshopkins.edu with ESMTP/TLS/RC4-MD5;
	11 Jun 2007 15:55:39 -0400
X-BrightmailFiltered: true
X-Brightmail-Tracker: AAAAAA==
X-IronPort-AV: i="4.16,409,1175486400"; 
	d="scan'208"; a="152460340:sNHT62378820"
From: "Ravi Varadhan" <rvaradhan@jhmi.edu>
To: "'Jeremy Goldhaber-Fiebert'" <JGOLDHAB@hsph.harvard.edu>,
   "'Spencer Graves'" <spencer.graves@pdf.com>
References: <4666A5D0.896D.005E.0@hsph.harvard.edu>
	<4666A910.896D.005E.0@hsph.harvard.edu> <46695EC8.2090602@pdf.com>
	<466D3605.896D.005E.0@hsph.harvard.edu>
Date: Mon, 11 Jun 2007 15:55:38 -0400
Message-ID: <002301c7ac62$7bd04e10$7c94100a@win.ad.jhu.edu>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
Thread-index: AcesQm9ktzgHmNasSq2UQV/jz/dryQAEv0yQ
In-reply-to: <466D3605.896D.005E.0@hsph.harvard.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Fwd: Using odesolve to produce non-negative solutions
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

Jeremy,

You should examine the steady-state solution to your system of equations, by
setting the time-derivatives to zero and then solving/analyzing the
resulting algebraic equations.  This should give you some insights.  

Let us say you have 3 groups, A,B, and C, with initial conditions:
N_A(t=0) = N_{A0}, N_B(t=0) = N_{B0}, and N_C(t=0) = N_{C0}, and that people
transition in and out of these 3 states (one of the states could even be
absorbing, e.g. death), but it is true for any time t that N_A(t) + N_B(t) +
N_C(t) = N_{A0} + N_{B0} + N_{C0}.  Furthermore, you have 3 diff-equations
that describe the rate of change of N_A, N_B, and N_C, for t > 0.  If it
happens that one of the N's, say N_A, becomes negative, you could set it
equal to zero.  But then you have to figure out how to re-adjust N_B and N_C
so that they add up to the initial total count.  After re-adjustment, you
also have to think about whether the resulting system of equations are
valid, when there are no A people.

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
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Jeremy
Goldhaber-Fiebert
Sent: Monday, June 11, 2007 11:47 AM
To: Spencer Graves
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Fwd: Using odesolve to produce non-negative solutions

Hi Spencer,

Thank you for your response. I also did not see anything on the lsoda help
page which is the reason that I wrote to the list.

>From your response, I am not sure if I asked my question clearly.

I am modeling a group of people (in a variety of health states) moving
through time (and getting infected with an infectious disease). This means
that the count of the number of people in each state should be positive at
all times. 

What appears to happen is that lsoda asks for a derivative at a given point
in time t and then adjusts the state of the population. However, perhaps due
to numerical instability, it occasionally lower the population count below 0
for one of the health states (perhaps because it's step size is too big or
something). 

I have tried both the logarithm trick and also changing the relative and
absolute tolerance inputs but I still get the problem for certain
combinations of parameters and initial conditions. 

It occurs both under MS Windows XP Service Pack 2 and on a Linux cluster so
I am pretty sure it is not platform specific.

My real question to the group is if there is not a work around in lsoda are
there other ode solvers in R that will allow the constraint of solutions to
the ODEs remain non-negative?

Best regards,
Jeremy
      

>>> Spencer Graves <spencer.graves@pdf.com> 6/8/2007 9:51 AM >>>
On the 'lsoda' help page, I did not see any option to force some 
or all parameters to be nonnegative. 

      Have you considered replacing the parameters that must be 
nonnegative with their logarithms?  This effective moves the 0 lower 
limit to (-Inf) and seems to have worked well for me in the past.  
Often, it can even make the log likelihood or sum of squares surface 
more elliptical, which means that the standard normal approximation for 
the sampling distribution of parameter estimates will likely be more 
accurate. 

      Hope this helps. 
      Spencer Graves
p.s.  Your example seems not to be self contained.  If I could have 
easily copied it from your email and run it myself, I might have been 
able to offer more useful suggestions. 

Jeremy Goldhaber-Fiebert wrote:
> Hello,
>
> I am using odesolve to simulate a group of people moving through time and
transmitting infections to one another. 
>
> In Matlab, there is a NonNegative option which tells the Matlab solver to
keep the vector elements of the ODE solution non-negative at all times. What
is the right way to do this in R?
>
> Thanks,
> Jeremy
>
> P.S., Below is a simplified version of the code I use to try to do this,
but I am not sure that it is theoretically right 
>
> dynmodel <- function(t,y,p) 
> { 
> ## Initialize parameter values
>
> 	birth <- p$mybirth(t)
> 	death <- p$mydeath(t)
> 	recover <- p$myrecover
> 	beta <- p$mybeta
> 	vaxeff <- p$myvaxeff
> 	vaccinated <- p$myvax(t)
>
> 	vax <- vaxeff*vaccinated/100
>
> ## If the state currently has negative quantities (shouldn't have), then
reset to reasonable values for computing meaningful derivatives
>
> 	for (i in 1:length(y)) {
> 		if (y[i]<0) {
> 			y[i] <- 0
> 		}
> 	}
>
> 	S <- y[1]
> 	I <- y[2]
> 	R <- y[3]
> 	N <- y[4]
>
> 	shat <- (birth*(1-vax)) - (death*S) - (beta*S*I/N)
> 	ihat <- (beta*S*I/N) - (death*I) - (recover*I)
> 	rhat <- (birth*(vax)) + (recover*I) - (death*R)
>
> ## Do we overshoot into negative space, if so shrink derivative to bring
state to 0 
> ## then rescale the components that take the derivative negative
>
> 	if (shat+S<0) {
> 		shat_old <- shat
> 		shat <- -1*S
> 		scaled_transmission <- (shat/shat_old)*(beta*S*I/N)
> 		ihat <- scaled_transmission - (death*I) - (recover*I)
> 		
> 	}	
> 	if (ihat+I<0) {
> 		ihat_old <- ihat
> 		ihat <- -1*I
> 		scaled_recovery <- (ihat/ihat_old)*(recover*I)
> 		rhat <- scaled_recovery +(birth*(vax)) - (death*R)
> 	
> 	}	
> 	if (rhat+R<0) {
> 		rhat <- -1*R
> 	}	
>
> 	nhat <- shat + ihat + rhat
>
> 	if (nhat+N<0) {
> 		nhat <- -1*N	
> 	}	
>
> ## return derivatives
>
> 	list(c(shat,ihat,rhat,nhat),c(0))
>
> }
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help 
> PLEASE do read the posting guide
http://www.R-project.org/posting-guide.html 
> and provide commented, minimal, self-contained, reproducible code.
>

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

           

3e Aoe