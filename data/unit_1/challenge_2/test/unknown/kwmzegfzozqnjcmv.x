From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 00:32:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l644WLL9005605
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 00:32:22 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l644Uoer018838;
	Wed, 4 Jul 2007 06:31:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from ipex2.johnshopkins.edu (ipex2.johnshopkins.edu [162.129.8.151])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l644UgF1018795
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 06:30:43 +0200
Received: from unknown (HELO jhem1.johnshopkins.edu) ([10.181.31.209])
	by ipex2.johnshopkins.edu with ESMTP/TLS/RC4-MD5;
	04 Jul 2007 00:30:22 -0400
X-IronPort-AV: i="4.16,495,1175486400"; 
	d="txt'?scan'208"; a="283305858:sNHT55861357498"
Received: from johnshopkins.edu ([10.181.31.209]) by jesmail.johnshopkins.edu
	(Sun Java System Messaging Server 6.2-7.05 (built Sep  5 2006))
	with ESMTP id <0JKN0074W0IO3T30@jesmail.johnshopkins.edu> for
	r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 00:30:24 -0400 (EDT)
Received: from [10.181.192.192] (Forwarded-For: [4.155.63.7])
	by jesmail.johnshopkins.edu (mshttpd); Wed, 04 Jul 2007 00:30:24 -0400
Date: Wed, 04 Jul 2007 00:30:24 -0400
From: RAVI VARADHAN <rvaradhan@jhmi.edu>
In-reply-to: <6ade6f6c0707031631r5034777bk11b3597f1e9ae37@mail.gmail.com>
To: Paul Smith <phhs80@gmail.com>
Message-id: <f69d97acd06.468aea20@johnshopkins.edu>
MIME-version: 1.0
X-Mailer: Sun Java(tm) System Messenger Express 6.2-5.03 (built May 24 2006)
Content-type: multipart/mixed; boundary="Boundary_(ID_pC0mEgLNaxr51OntXOgAfg)"
Content-language: en
X-Accept-Language: en
Priority: normal
References: <6ade6f6c0707031310m4bf83d91xb8f61264caa12645@mail.gmail.com>
	<000501c7bdb3$bbc47ac0$7c94100a@win.ad.jhu.edu>
	<6ade6f6c0707031409i5a9ba74cs4567e4aa994a0749@mail.gmail.com>
	<000d01c7bdc6$4967c460$7c94100a@win.ad.jhu.edu>
	<6ade6f6c0707031631r5034777bk11b3597f1e9ae37@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] Fine tunning rgenoud
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
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

This is a multi-part message in MIME format.

--Boundary_(ID_pC0mEgLNaxr51OntXOgAfg)
Content-type: text/plain; charset=us-ascii
Content-transfer-encoding: 7BIT
Content-disposition: inline

Paul,

Here is another approach: I wrote an R function that would generate interior points as starting values for constrOptim.  This might work better than the LP approach, since the LP approach gives you a starting value that is on the boundary of the feasible region, i.e a vertex of the polyhedron, whereas this new approach gives you points on the interior.  You can generate as many points as you wish, but the approach is brute-force and is very inefficient - it takes on the order of a 1000 tries to find one feasible point.

Hope this helps,
Ravi. 

----- Original Message -----
From: Paul Smith <phhs80@gmail.com>
Date: Tuesday, July 3, 2007 7:32 pm
Subject: Re: [R] Fine tunning rgenoud
To: R-help <r-help@stat.math.ethz.ch>


> On 7/4/07, Ravi Varadhan <rvaradhan@jhmi.edu> wrote:
>  > It should be easy enough to check that your solution is valid (i.e. 
> a local
>  > minimum):  first, check to see if the solution satisfies all the
>  > constraints; secondly, check to see if it is an interior point 
> (i.e. none of
>  > the constraints become equality); and finally, if the solution is an
>  > interior point, check to see whether the gradient there is close to 
> zero.
>  > Note that if the solution is one of the vertices of the polyhedron, 
> then the
>  > gradient may not be zero.
>  
>  I am having bad luck: all constraints are satisfied, but the solution
>  given by constrOptim is not interior; the gradient is not equal to
>  zero.
>  
>  Paul
>  
>  
>  > -----Original Message-----
>  > From: r-help-bounces@stat.math.ethz.ch
>  > [ On Behalf Of Paul Smith
>  > Sent: Tuesday, July 03, 2007 5:10 PM
>  > To: R-help
>  > Subject: Re: [R] Fine tunning rgenoud
>  >
>  > On 7/3/07, Ravi Varadhan <rvaradhan@jhmi.edu> wrote:
>  > > You had indicated in your previous email that you are having trouble
>  > finding
>  > > a feasible starting value for constrOptim().  So, you basically 
> need to
>  > > solve a system of linear inequalities to obtain a starting point. 
>  Have
>  > you
>  > > considered using linear programming? Either simplex() in the "boot"
>  > package
>  > > or solveLP() in "linprog" would work.  It seems to me that you 
> could use
>  > any
>  > > linear objective function in solveLP to obtain a feasible 
> starting point.
>  > > This is not the most efficient solution, but it might be worth a 
> try.
>  > >
>  > > I am aware of other methods for generating n-tuples that satisfy 
> linear
>  > > inequality constraints, but AFAIK those are not available in R.
>  >
>  > Thanks, Ravi. I had already conceived the solution that you suggest,
>  > actually using "lpSolve". I am able to get a solution for my problem
>  > with constrOptim, but I am not enough confident that the solution is
>  > right. That is why I am trying to get a solution with rgenoud, but
>  > unsuccessfully until now.
>  >
>  > Paul
>  >
>  >
>  >
>  > > -----Original Message-----
>  > > From: r-help-bounces@stat.math.ethz.ch
>  > > [ On Behalf Of Paul Smith
>  > > Sent: Tuesday, July 03, 2007 4:10 PM
>  > > To: R-help
>  > > Subject: [R] Fine tunning rgenoud
>  > >
>  > > Dear All,
>  > >
>  > > I am trying to solve the following maximization problem, but I cannot
>  > > have rgenoud giving me a reliable solution.
>  > >
>  > > Any ideas?
>  > >
>  > > Thanks in advance,
>  > >
>  > > Paul
>  > >
>  > > ----------------------------
>  > > library(rgenoud)
>  > >
>  > > v <- 0.90
>  > > O1 <- 10
>  > > O2 <- 20
>  > > O0 <- v*O1+(1-v)*O2
>  > >
>  > > myfunc <- function(x) {
>  > >   U0 <- x[1]
>  > >   U1 <- x[2]
>  > >   U2 <- x[3]
>  > >   q0 <- x[4]
>  > >   q1 <- x[5]
>  > >   q2 <- x[6]
>  > >   p <- x[7]
>  > >
>  > >   if (U0 < 0)
>  > >     return(-1e+200)
>  > >   else if (U1 < 0)
>  > >     return(-1e+200)
>  > >   else if (U2 < 0)
>  > >     return(-1e+200)
>  > >   else if ((U0-(U1+(O1-O0)*q1)) < 0)
>  > >     return(-1e+200)
>  > >   else if ((U0-(U2+(O2-O0)*q2)) < 0)
>  > >     return(-1e+200)
>  > >   else if ((U1-(U0+(O0-O1)*q0)) < 0)
>  > >     return(-1e+200)
>  > >   else if ((U1-(U2+(O2-O1)*q2)) < 0)
>  > >     return(-1e+200)
>  > >   else if((U2-(U0+(O0-O2)*q0)) < 0)
>  > >     return(-1e+200)
>  > >   else if((U2-(U1+(O1-O2)*q1)) < 0)
>  > >     return(-1e+200)
>  > >   else if(p < 0)
>  > >     return(-1e+200)
>  > >   else if(p > 1)
>  > >     return(-1e+200)
>  > >   else if(q0 < 0)
>  > >     return(-1e+200)
>  > >   else if(q1 < 0)
>  > >     return(-1e+200)
>  > >   else if(q2 < 0)
>  > >     return(-1e+200)
>  > >   else
>  > >
>  > return(p*(sqrt(q0)-(O0*q0+U0))+(1-p)*(v*(sqrt(q1)-(O1*q1+U1))+(1-v)*(sqrt(q2
>  > > )-(O2*q2+U2))))
>  > >
>  > > }
>  > >
>  > genoud(myfunc,nvars=7,max=T,pop.size=6000,starting.values=runif(7),wait.gene
>  > > rations=150,max.generations=300,boundary.enforcement=2)
>  > >
>  > > ______________________________________________
>  > > R-help@stat.math.ethz.ch mailing list
>  > > 
>  > > PLEASE do read the posting guide
>  > 
>  > > and provide commented, minimal, self-contained, reproducible code.
>  > >
>  >
>  > ______________________________________________
>  > R-help@stat.math.ethz.ch mailing list
>  > 
>  > PLEASE do read the posting guide 
>  > and provide commented, minimal, self-contained, reproducible code.
>  >
>  
>  ______________________________________________
>  R-help@stat.math.ethz.ch mailing list
>  
>  PLEASE do read the posting guide 
>  and provide commented, minimal, self-contained, reproducible code. 

--Boundary_(ID_pC0mEgLNaxr51OntXOgAfg)
Content-type: text/plain; NAME=lineq_R.txt
Content-transfer-encoding: 7BIT
Content-disposition: attachment; filename=lineq_R.txt

lineq <- function(a){
r <- rep(NA,14)
v <- a[1]
O1 <- a[2]
O2 <- a[3]
O0 <- v*O1 + (1-v)*O2 

r <- rep(-1,14)

kount <- 0

while (any(r < 0)) {
kount <- kount + 1 
x <- runif(7)
U0 <- x[1]
U1 <- x[2]
U2 <- x[3]
q0 <- x[4]
q1 <- x[5]
q2 <- x[6]
p <- x[7]

r[1] <- U0
r[2] <- U1
r[3] <- U2
r[4] <- U0 - (U1 + (O1 - O0)*q1)
r[5] <- U0 - (U2 + (O2 - O0)*q2)
r[6] <- U1 - (U0 + (O0 - O1)*q0)
r[7] <- U1 - (U2 + (O2 - O1)*q2)
r[8] <- U2 - (U0 + (O0 - O2)*q0)
r[9] <- U2 - (U1 + (O1 - O2)*q1)
r[10] <- p
r[11] <- 1-p
r[12] <- q0
r[13] <- q1
r[14] <- q2
}

list(x0=x, kount=kount, r=sign(r)) 
}

a <- c(0.9,10,20)
ans <- lineq(a)
ans$x0   #  interior point

--Boundary_(ID_pC0mEgLNaxr51OntXOgAfg)
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--Boundary_(ID_pC0mEgLNaxr51OntXOgAfg)--

                   

idp.a8