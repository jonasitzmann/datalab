From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 13:38:49 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FHcmL9004958
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 13:38:49 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FHc668018712;
	Fri, 15 Jun 2007 19:38:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=AWL, BAYES_99,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from out4.smtp.messagingengine.com (out4.smtp.messagingengine.com
	[66.111.4.28])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FHTBMG015209
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 19:29:11 +0200
Received: from compute1.internal (compute1.internal [10.202.2.41])
	by out1.messagingengine.com (Postfix) with ESMTP id 3A699C4B;
	Fri, 15 Jun 2007 13:29:10 -0400 (EDT)
Received: from web5.messagingengine.com ([10.202.2.214])
	by compute1.internal (MEProxy); Fri, 15 Jun 2007 13:29:10 -0400
Received: by web5.messagingengine.com (Postfix, from userid 99)
	id 19EC124FC7; Fri, 15 Jun 2007 13:29:10 -0400 (EDT)
Message-Id: <1181928550.18770.1195374609@webmail.messagingengine.com>
X-Sasl-Enc: MzxUOh+XZviSfnLQfQGt/aOubtzS9MtA2ZjqWHCshGjn 1181928550
From: "Nicholas Lewin-Koh" <nikko@hailmail.net>
To: r-help@stat.math.ethz.ch
Content-Disposition: inline
MIME-Version: 1.0
X-Mailer: MessagingEngine.com Webmail Interface
Date: Fri, 15 Jun 2007 13:29:10 -0400
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] complex contrasts and logistic regression
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

Hi,
I am doing a retrospective analysis on a cohort from a designed trial,
and I am fitting
the model

fit<-glmD(survived ~ Covariate*Therapy + confounder,myDat,X=TRUE,
Y=TRUE, family=binomial()) 

My covariate has three levels ("A","B" and "C") and therapy has two
(treated and control), confounder is a continuous variable.
Also patients were randomized to treatment in the trial, but Covariate
is something that is measured
posthoc and can vary in the population.
 
I am trying to wrap my head around how to calculate a few quantities
from the model
and get reasonable confidence intervals for them, namely I would like to
test

H0: gamma=0, where gamma is the regression coefficient of the odds
ratios of surviving
             under treatment vs control at each level of Covariate
             (adjusted for the confounder)

and I would like to get the odds of surviving at each level of Covariate
under treatment and control
for each level of covariate adjusted for the confounder. I have looked
at contrast in the Design 
library but I don't think it gives me the right quantity, for instance 

contrast(fit,list(covariate="A", Therapy="Treated",
confounder=median(myDat$confounder), X=TRUE)
( "A" is the baseline level of Covariate) 

gives me beta0 + beta_Treated + beta_confounder*68  

Is this correctly interpreted as the conditional odds of dying? 
As to the 1st contrast I am not sure how to get it, would it be using
type = 'average' with some weights 
in contrast? The answers are probably staring me in the face, i am just
not seeing them today.

Nicholas

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

>ls/