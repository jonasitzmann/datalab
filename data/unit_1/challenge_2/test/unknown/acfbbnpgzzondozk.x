From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 15:44:59 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55JivhB013125
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 15:44:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55Jhhrb017886;
	Tue, 5 Jun 2007 21:44:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55Jd8b0016448
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 21:39:09 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1Hves0-0001sm-1M
	for r-help@stat.math.ethz.ch; Tue, 05 Jun 2007 12:39:08 -0700
Message-ID: <10976317.post@talk.nabble.com>
Date: Tue, 5 Jun 2007 12:38:54 -0700 (PDT)
From: violeta834 <ltatiana@student.ethz.ch>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: ltatiana@student.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] logit model interpretation
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


Hello everyone

I appologize for my lack of experience in statistical methods. I am an R
user begginer and I am running a logit model using "zelig"  and "pcse"
packages. I will go to the point and is that Im having problems with
interpreting the results of my models.. It is really simple (I guess for the
most advanced scholars) however I really dont understand how to interpret
the coefficients.

here is my output

Call:
zelig(formula = newtrst ~ stfdem + stfgov + clsprty, model = "logit", 
    data = spadat)

Deviance Residuals: 
   Min      1Q  Median      3Q     Max  
-2.784   0.318   0.410   0.540   1.460  

Coefficients:
            Estimate Std. Error z value Pr(>|z|)    
(Intercept)  -0.6434     0.2427   -2.65    0.008 ** 
stfdem        0.2447     0.0441    5.55  2.8e-08 ***
stfgov        0.2050     0.0468    4.38  1.2e-05 ***
clsprty       0.4173     0.1649    2.53    0.011 *  
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1 

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 1112.46  on 1427  degrees of freedom
Residual deviance:  996.02  on 1424  degrees of freedom
AIC: 1004

Number of Fisher Scoring iterations: 5


Thanks

violeta


-- 
View this message in context: http://www.nabble.com/logit-model-interpretation-tf3873849.html#a10976317
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

7eFaID