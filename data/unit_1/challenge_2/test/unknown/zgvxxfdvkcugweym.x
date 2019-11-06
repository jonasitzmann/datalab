From r-help-bounces@stat.math.ethz.ch  Fri Jun 22 05:14:19 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5M9EHL9004282
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 05:14:18 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5M9DVSk003465;
	Fri, 22 Jun 2007 11:13:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from roche.bath.ac.uk (roche.bath.ac.uk [138.38.32.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5M9DLde003373
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 11:13:21 +0200
Received: from mars.maths.bath.ac.uk ([138.38.100.97])
	by roche.bath.ac.uk with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
	(envelope-from <s.wood@bath.ac.uk>) id 1I1fCj-0003fs-7H
	for r-help@stat.math.ethz.ch; Fri, 22 Jun 2007 10:13:21 +0100
Received: from mapc-0010.maths.bath.ac.uk ([138.38.99.17])
	by mars.maths.bath.ac.uk with esmtp (Exim 4.62)
	(envelope-from <s.wood@bath.ac.uk>) id 1I1fCj-0002wq-3x
	for r-help@stat.math.ethz.ch; Fri, 22 Jun 2007 10:13:21 +0100
Received: from localhost (localhost [IPv6:::1])
	by mapc-0010.maths.bath.ac.uk (Postfix) with ESMTP id F14FA24496
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 09:54:24 +0100 (BST)
From: Simon Wood <s.wood@bath.ac.uk>
To: r-help@stat.math.ethz.ch
Date: Fri, 22 Jun 2007 09:54:24 +0100
User-Agent: KMail/1.9.4
References: <467AC8B5.2040909@u.washington.edu>
In-Reply-To: <467AC8B5.2040909@u.washington.edu>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <200706220954.24787.s.wood@bath.ac.uk>
X-Scanner: 3b76ef7ab4302cf3b9ad5cb5f83ed8501832f4d9
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] mgcv: lowest estimated degrees of freedom
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

On Thursday 21 June 2007 19:51, Julian Burgos wrote:
> Dear list,
>
> I do apologize if these are basic questions.  I am fitting some GAM
> models using the mgcv package and following the model selection criteria
> proposed by Wood and Augustin (2002, Ecol. Model. 157, p. 157-177).  One
> criterion to decide if a term should be dropped from a model is if the
> estimated degrees of freedom (EDF) for the term are close to their lower
> limit.
>
> What would be the minimum number of EDF's for
> a) Univariate thin plate regression splines(TPRS) with shrinkage, i.e.
> s(...,bs="ts")
zero (that's sort of the point of the shrinkage smooths: the smoothing penalty 
can actually zero a term completely with high enough smoothing parameter).

> b) Bivariate tensor products of TPRS with shrinkage?
Also zero. The penalties for the marginal smooths can shrink terms to zero, 
and this gets inherited by the tensor product penalties. So, with high enough 
smoothing parameters, the term will be shrunk to zero (and hence have zero 
EDF).

Simon

> Simon Wood, Mathematical Sciences, University of Bath, Bath, BA2 7AY UK
> +44 1225 386603  www.maths.bath.ac.uk/~sw283

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

Z
5pq9hDsrnal=