From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 08:11:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DCBRL9007346
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 08:11:28 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DCAnrF017728;
	Wed, 13 Jun 2007 14:11:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DC6Llf016249
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 14:06:21 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HyRc1-00066m-F9
	for r-help@stat.math.ethz.ch; Wed, 13 Jun 2007 14:06:09 +0200
Received: from adsl-214-116-221.gnv.bellsouth.net ([68.214.116.221])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 14:06:09 +0200
Received: from bolker by adsl-214-116-221.gnv.bellsouth.net with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 14:06:09 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Ben Bolker <bolker@ufl.edu>
Date: Wed, 13 Jun 2007 12:05:40 +0000 (UTC)
Lines: 39
Message-ID: <loom.20070613T140103-688@post.gmane.org>
References: <e4add7bf91a5.466f50bc@optonline.net>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 68.214.116.221 (Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty))
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] specify constraints in maximum likelihood
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

 <adschai <at> optonline.net> writes:

> 
> Hi,I know only mle function but it seems that in mle one can only specify the
bound of the unknowns forming the
> likelihood function. But I would like to specify something like, a = 2b or a
<= 2b where 'a' and 'b' could be my
> parameters in the likelihood function. Any help would be really appreciated.
Thank you!- adschai
> 
> 	


 Something like a=2b (equality constraints with a simple form)
should be easy, just reparameterize your function.  e.g. if
you have minuslogl equal to  f(a,b,c) then define a new function

f2 <- function(a,c) {
   b <- a/2
   f(a,b,c)
}

For a<=2b reparameterize in terms of d=a-2b :

f2 <- function(a,c,d) {
   b <- (a-d)/2
   f(a,b,c)
}

and impose the constraint (e.g. with L-BFGS-B) of d<=0.
Actually, the second one (linear inequality constraints)
can also be done with constrOptim.

   More complex (nonlinear) constraints have to be done
with Lagrange multipliers or penalty terms
( http://www.zoo.ufl.edu/bolker/emdbook/chap7A.pdf has
some general description, at a very basic level )

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

e2sne8:/u8