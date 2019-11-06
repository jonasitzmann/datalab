From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 14:23:29 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BINSL9017291
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 14:23:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BIMjYd010296;
	Mon, 11 Jun 2007 20:22:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from guardian2.sph.harvard.edu (guardian.sph.harvard.edu
	[134.174.190.3])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BIMZae010238
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 20:22:36 +0200
Received: from hsph.harvard.edu (unverified [134.174.190.147]) by
	guardian2.sph.harvard.edu (Vircom SMTPRS 4.35.480.0) with ESMTP id
	<B0019753762@guardian2.sph.harvard.edu> for
	<r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 14:22:59 -0400
X-Modus-BlackList: 134.174.190.147=OK;JGOLDHAB@hsph.harvard.edu=OK
X-Modus-Trusted: 134.174.190.147=YES
Received: from SPHGWIA1-MTA by hsph.harvard.edu
	with Novell_GroupWise; Mon, 11 Jun 2007 14:23:00 -0400
Message-Id: <466D5AA7.896D.005E.0@hsph.harvard.edu>
X-Mailer: Novell GroupWise Internet Agent 7.0.1 
Date: Mon, 11 Jun 2007 14:22:47 -0400
From: "Jeremy Goldhaber-Fiebert" <JGOLDHAB@hsph.harvard.edu>
To: "Ravi Varadhan" <rvaradhan@jhmi.edu>,
   "'Spencer Graves'" <spencer.graves@pdf.com>
References: <4666A5D0.896D.005E.0@hsph.harvard.edu>
	<4666A910.896D.005E.0@hsph.harvard.edu> <46695EC8.2090602@pdf.com>
	<466D3605.896D.005E.0@hsph.harvard.edu>
	<000d01c7ac53$e9b254f0$7c94100a@win.ad.jhu.edu>
In-Reply-To: <000d01c7ac53$e9b254f0$7c94100a@win.ad.jhu.edu>
Mime-Version: 1.0
Content-Disposition: inline
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

Hi Ravi,

Thanks for your response. I tried this in Berkeley Madonna and in Matlab. In Berkeley Madonna I did not have the problem (RK4 solver). In Matlab (ode45 solver), I had the problem if I did not use their NonNegative option. My thought was that NonNegative uses something like an additional piece of logic in modifying step size (maybe something like: if stepsize * derivative + current condition is negative, then reduce step size), but I don't know.

My original application was to generate ode output for a variety of unknown parameters, comparing the output to observed data and thereby using a likelihood-based approach to identify unknown parameter combinations that are most consistent with observed data given the uncertainty. First, I wanted to get a sense of how the model performed over a range of parameters that seem plausible based on literature review. I had originally thought to do this in Matlab and built a little proof of concept searching program, but given that R is free and has many other great packages for doing optimization and statistical analysis (and is easy to setup which is great for cluster computing situations), I thought it would be better to do it in R. When I did this, I got negative values and hence sent to the list.

Once again, thanks for your help. Not sure if this clarification email will generate other suggestions or thoughts.

Best,
Jeremy

>>> "Ravi Varadhan" <rvaradhan@jhmi.edu> 6/11/2007 2:11 PM >>>
Hi Jeremy,

A smaller step size may or may not help.  If the issue is simply truncation
error, that is the error involved in discretizing the differential
equations, then a smaller step size would help.  If, however, the true
solution to the differential equation is negative, for some t, then the
numerical solution should also be negative.  If the negative solution does
not make sense, then the system of equation needs to be examined to see when
and why negative solutions arise.  Perhaps, I am just making this up - there
needs to be a "dampening function" that slows down the trajectory as it
approaches zero from its initial value. It is also possible that only
certain regions of the parameter space (note that initial conditions are
also parameters) are allowed in the sense that only there the solution is
feasible for all t.  So, in your example, the parameters might not be
realistic.  In short, if you are sure that the numerical solution is
accurate, then you need to go back to your system of equations and analyze
them carefully.  


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

       

cj
>timeT 