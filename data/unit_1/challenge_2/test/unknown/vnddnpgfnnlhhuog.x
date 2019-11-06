From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 10:05:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GE5YL9016359
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 10:05:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GE3r44012705;
	Sat, 16 Jun 2007 16:04:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	FH_HOST_EQ_D_D_D_D,
	FH_HOST_EQ_D_D_D_DB autolearn=no version=3.2.0
Received: from soln-sr1256.solutionip.com (204-180-236-10.belz.com
	[204.180.236.10] (may be forged))
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GE3hDY012606
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 16:03:43 +0200
Received: from [10.135.1.57] (helo=[10.135.1.57])
	by soln-sr1256.solutionip.com with esmtp (Exim 3.34 #1)
	id 1HzYsL-0004Nx-00; Sat, 16 Jun 2007 09:03:37 -0500
Message-ID: <4673EDB4.80509@vanderbilt.edu>
Date: Sat, 16 Jun 2007 09:03:32 -0500
From: Frank E Harrell Jr <f.harrell@vanderbilt.edu>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: Tirthadeep <sabya231@gmail.com>
References: <11151210.post@talk.nabble.com>
In-Reply-To: <11151210.post@talk.nabble.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] selecting cut-off in Logistic regression using ROCR package
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

Tirthadeep wrote:
> 
> Hi,
> 
> I am using logistic regression to classify a binary psychometric data. using
> glm() and then predict.glm() i got the predicted odds ratio of the testing
> data. Next i am going to plot ROC curve for the analysis of my study.
> 
> Now what i will do:
> 
> 1. first select a cut-off (say 0.4) and classify the output of predict.glm()
> into {0,1} segment and then use it to draw ROC curve using ROCR package 
> 
> OR
> 
> 2. just use the predicted odds ratio in ROCR package to get "error rate" and
> use the minimum error rate (as new cut-off) to draw new ROC curve.
> 
> waiting for reply.
> 
> with regards and thanks.
> 
> Tirtha.

It's not clear why any cutoff or ROC curve is needed.  Please give us 
more information about why a continuous variable should be dichotomized, 
and read

@Article{roy06dic,
   author = 		 {Royston, Patrick and Altman, Spielas G. and
Sauerbrei, Willi},
   title = 		 {Dichotomizing continuous predictors in multiple
regression: a bad idea},
   journal = 	 Stat in Med,
   year = 		 2006,
   volume =		 25,
   pages =		 {127-141},
   annote =		 {continuous
covariates;dichotomization;categorization;regression;efficiency;clinical
research;residual confounding;destruction of statistical inference
when cutpoints are chosen using the response variable;varying effect
estimates from change in cutpoints;difficult to interpret effects
when dichotomize;nice plot showing effect of categorization;PBC data}
}

Frank

-- 
Frank E Harrell Jr   Professor and Chair           School of Medicine
                      Department of Biostatistics   Vanderbilt University

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

meiysscXacKVA