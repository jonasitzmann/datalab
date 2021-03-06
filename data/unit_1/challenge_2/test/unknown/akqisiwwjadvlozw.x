From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 22:12:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l562C5hB016253
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 22:12:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5629fkx026541;
	Wed, 6 Jun 2007 04:09:52 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5629Ocu026422
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 04:09:32 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HvkxW-0007Nd-Mo
	for r-help@stat.math.ethz.ch; Wed, 06 Jun 2007 04:09:14 +0200
Received: from pcor-uf228.stanford.edu ([171.64.154.228])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 04:09:14 +0200
Received: from toby909 by pcor-uf228.stanford.edu with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 04:09:14 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: toby909@gmail.com
Date: Tue, 05 Jun 2007 19:11:17 -0700
Lines: 38
Message-ID: <f454vp$47d$1@sea.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: pcor-uf228.stanford.edu
User-Agent: Mozilla Thunderbird 1.0.6 (Windows/20050716)
X-Accept-Language: en-us, en
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] fixed effects anova in lme lmer
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

Can lme or lmer fit a plain regular fixed effects anova? Ie a model without a 
random effect, or have there be at least one random effect in order for these 
functions to work?

Trying to run such, (1) without specifying a random effect produces an error, 
(2) specifying that there is no random effect does not produce the same output 
as  an anova run in lm(); (2b) specifying that there is no random effect in lmer 
crashed R (division by zero, I think).

Just trying to see the connection of fixed and random effects anova in R. STATA 
gives me same results for both models up to the point where they differ.

Best Toby





dt1 = 
as.data.frame(cbind(c(28,35,27,21,21,36,25,18,26,38,27,17,16,25,22,18),c(1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4)))

summary(a1 <- lm(V1~factor(V2)-1, dt1))
anova(a1)

summary(a1 <- lm(V1~factor(V2), dt1))
anova(a1)

dt1$f = factor(dt1$V2)

summary(a2 <- lme(V1~f, dt1))   #1a

summary(a2 <- lme(V1~f, dt1, ~-1|f))   #2a
anova(a2)

lmer(V1~f, dt1)   #1b

lmer(V1~f+(-1|f), dt1)   #2b

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

P5/ oWw