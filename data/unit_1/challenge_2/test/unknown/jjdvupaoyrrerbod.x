From r-help-bounces@stat.math.ethz.ch  Sun Jun 10 17:10:19 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ALAGL9006488
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 10 Jun 2007 17:10:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AL8ngu015882;
	Sun, 10 Jun 2007 23:09:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail36.syd.optusnet.com.au (mail36.syd.optusnet.com.au
	[211.29.133.76])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AL8Ykh015799
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 23:08:37 +0200
Received: from c220-237-183-166.frank1.vic.optusnet.com.au
	(c220-237-183-166.frank1.vic.optusnet.com.au [220.237.183.166])
	by mail36.syd.optusnet.com.au (8.13.1/8.13.1) with ESMTP id
	l5AL8V1J026299
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 11 Jun 2007 07:08:32 +1000
Received: from c220-237-183-166.frank1.vic.optusnet.com.au (localhost
	[127.0.0.1])
	by c220-237-183-166.frank1.vic.optusnet.com.au (8.13.8/8.13.8) with
	ESMTP id l5AL8Glv030654; Mon, 11 Jun 2007 07:08:17 +1000 (EST)
	(envelope-from A.Robinson@ms.unimelb.edu.au)
Received: (from andrewr@localhost)
	by c220-237-183-166.frank1.vic.optusnet.com.au (8.13.8/8.13.8/Submit)
	id l5AL8E7B030651; Mon, 11 Jun 2007 07:08:14 +1000 (EST)
	(envelope-from A.Robinson@ms.unimelb.edu.au)
X-Authentication-Warning: c220-237-183-166.frank1.vic.optusnet.com.au: andrewr
	set sender to A.Robinson@ms.unimelb.edu.au using -f
Date: Mon, 11 Jun 2007 07:08:14 +1000
From: Andrew Robinson <A.Robinson@ms.unimelb.edu.au>
To: Rense Nieuwenhuis <r.nieuwenhuis@student.ru.nl>
Message-ID: <20070610210814.GN63160@ms.unimelb.edu.au>
References: <93CCF428-8493-4716-908C-EFE87EDC48F9@student.ru.nl>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93CCF428-8493-4716-908C-EFE87EDC48F9@student.ru.nl>
User-Agent: Mutt/1.4.2.2i
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] {nlme} Multilevel estimation heteroscedasticity
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

Rense,

how about 

weights = varPower(form = ~ schavg)

or 

weights = varConstPower(form = ~ schavg)

or even 

weights = varPower(form = ~ schavg | type)

Yuo might find Pinheiro and Bates (2000) to be a valuable investment.

I hope that this helps,

Andrew


On Sun, Jun 10, 2007 at 04:35:58PM +0200, Rense Nieuwenhuis wrote:
> Dear All,
> 
> I'm trying to model heteroscedasticity using a multilevel model. To  
> do so, I make use of the nlme package and the weigths-parameter.  
> Let's say that I hypothesize that the exam score of students  
> (normexam) is influenced by their score on a standardized LR test  
> (standLRT). Students are of course nested in "schools". These  
> variables are contained in the Exam-data in the mlmRev package.
> 
> library(nlme)
> library(mlmRev)
> lme(fixed = normexam ~ standLRT,
> 	data = Exam,
> 	random = ~ 1 | school)
> 
> 
> If I want to model only a few categories of variance, all works fine.  
> For instance, should I (for whatever reason) hypothesize that the  
> variance on the normexam-scores is larger in mixed schools than in  
> boys-schools, I'd use weights = varIdent(form = ~ 1 | type), leading to:
> 
> heteroscedastic <- lme(fixed = normexam ~ standLRT,
> 	data = Exam,
> 	weights = varIdent(form = ~ 1 | type),
> 	random = ~ 1 | school)
> 
> This gives me nice and clear output, part of which is shown below:
> Variance function:
> Structure: Different standard deviations per stratum
> Formula: ~normexam | type
> Parameter estimates:
>       Mxd     Sngl
> 1.000000 1.034607
> Number of Observations: 4059
> Number of Groups: 65
> 
> 
> Though, should I hypothesize that the variance on the normexam- 
> variable is larger on schools that have a higher average score on  
> intake-exams (schavg), I run into troubles. I'd use weights = varIdent 
> (form = ~ 1 | schavg), leading to:
> 
> heteroscedastic <- lme(fixed = normexam ~ standLRT,
> 	data = Exam,
> 	weights = varIdent(form = ~ 1 | schavg),
> 	random = ~ 1 | school)
> 
> This leads to estimation problems. R tells me:
> Error in lme.formula(fixed = normexam ~ standLRT, data = Exam,  
> weights = varIdent(form = ~1 |  :
> 	nlminb problem, convergence error code = 1; message = iteration  
> limit reached without convergence (9)
> 
> Fiddling with maxiter and setting an unreasonable tolerance doesn't  
> help. I think the origin of this problem lies within the large number  
> of categories on "schavg" (65), that may make estimation troublesome.
> 
> This leads to my two questions:
> - How to solve this estimation-problem?
> - Is is possible that the varIdent (or more general: VarFunc) of lme  
> returns a single value, representing a co?ffici?nt along which  
> variance is increasing / decreasing?
> 
> - In general: how can a variance-component / heteroscedasticity be  
> made dependent on some level-2 variable (school level in my examples) ?
> 
> Many thanks in advance,
> 
> Rense Nieuwenhuis
> 	[[alternative HTML version deleted]]
> 

> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.


-- 
Andrew Robinson  
Department of Mathematics and Statistics            Tel: +61-3-8344-9763
University of Melbourne, VIC 3010 Australia         Fax: +61-3-8344-4599
http://www.ms.unimelb.edu.au/~andrewpr
http://blogs.mbs.edu/fishing-in-the-bay/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

1omtc