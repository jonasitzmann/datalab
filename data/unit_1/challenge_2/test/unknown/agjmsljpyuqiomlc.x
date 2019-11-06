From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 14:27:29 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51IRRhB013179
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 14:27:28 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51IQ1WB030090;
	Fri, 1 Jun 2007 20:26:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mulnx11.mcs.muohio.edu (mulnx11.mcs.muohio.edu [134.53.6.66])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51IPisD029850
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 20:25:51 +0200
Received: from mulnx23.mcs.muohio.edu (mulnx23.mcs.muohio.edu [134.53.6.10])
	by mulnx11.mcs.muohio.edu (Switch-3.1.8/Switch-3.1.7) with ESMTP id
	l51IPg1V024194; Fri, 1 Jun 2007 14:25:42 -0400
Received: from [134.53.9.89] (ip-134-53-9-89.dhcp.muohio.edu [134.53.9.89])
	by mulnx23.mcs.muohio.edu (Switch-3.1.8/Switch-3.1.7) with ESMTP id
	l51IPfib000342; Fri, 1 Jun 2007 14:25:41 -0400
In-Reply-To: <BAY118-F94AB6A621B4995DD6DCEFDE2C0@phx.gbl>
References: <BAY118-F94AB6A621B4995DD6DCEFDE2C0@phx.gbl>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <8C1B6A3E-1BE3-4D8D-898B-868FE03D3527@MUOhio.edu>
From: "Martin Henry H. Stevens" <HStevens@muohio.edu>
Date: Fri, 1 Jun 2007 14:25:41 -0400
To: =?ISO-8859-1?Q?emine_=F6zg=FCr_Bayman?= <eozgur10@hotmail.com>
X-Mailer: Apple Mail (2.752.2)
X-Scanned-By: MIMEDefang 2.57 on 134.53.6.66
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l51IPisD029850
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Interaction term in lmer
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l51IRRhB013179

HI Emine,
The parentheses specify a variable as random or fixed. You are using  
center for random intercepts, but fixed for interactions.
You may want
> mer(cbind( yvect, nvect-yvect) ~ trt   + ( 1 | center) + (1 |  
> trt:center),
>   family = binomial, niter = 25, method = "Laplace", control = list 
> (usePQL =
> FALSE) )

Cheers,
Hank

On Jun 1, 2007, at 2:01 PM, emine �zg�r Bayman wrote:

> Dear R users,
> I'm pretty new on using lmer package. My response is binary and I  
> have fixed
> treatment effect (2 treatments) and random center effect (7  
> centers). I want
> to test the effect of treatment by fitting 2 models:
>
> Model 1: center effect (random) only
> Model 2: trt (fixed) + center (random) + trt*center interaction.
>
> Then, I want to compare these 2 models with Likelihood Ratio Test.  
> Here are
> my lmer codes that I don't feel comfortable about their correctness.
>
> model1 <- try(lmer(cbind( yvect, nvect-yvect) ~ 1 + (1 | center),
>   family = binomial, niter = 25, method = "Laplace", control = list 
> (usePQL =
> FALSE) ))
>
> model2 <- try(lmer(cbind( yvect, nvect-yvect) ~ trt*center  + ( 1 |  
> center)
> ,
>   family = binomial, niter = 25, method = "Laplace", control = list 
> (usePQL =
> FALSE) ))
>
>
> (I have attached outputs below)
> What I don't understand is; I thought in model2 I have defined  
> center effect
> as a random effect. Then how come I got center effects and trt*center
> interactions under the fixed effects list on the output? Probably I  
> didn't
> understand how to set up these models in lmer. Could anyone help me  
> about
> this?
>
> Thanks a lot for your help...
>
> Emine
>
> model1 <- try(lmer(cbind( yvect, nvect-yvect) ~ 1 + (1 | center),
>   family = binomial, niter = 25, method = "Laplace", control = list 
> (usePQL =
> FALSE) ))
>
>> summary(model1)
> Generalized linear mixed model fit using Laplace
> Formula: cbind(yvect, nvect - yvect) ~ 1 + (1 | center)
> Family: binomial(logit link)
>      AIC      BIC    logLik deviance
> 236.817 238.0951 -116.4085  232.817
> Random effects:
> Groups Name        Variance Std.Dev.
> center (Intercept) 0.088127 0.29686
> number of obs: 14, groups: center, 7
>
> Estimated scale (compare to 1)  0.2672612
>
> Fixed effects:
>             Estimate Std. Error z value Pr(>|z|)
> (Intercept) -0.32084    0.14709 -2.1812  0.02917 *
> ---
> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
>
>
> ##################
> model2 <- try(lmer(cbind( yvect, nvect-yvect) ~ trt*center  + ( 1 |  
> center)
> ,
>   family = binomial, niter = 25, method = "Laplace", control = list 
> (usePQL =
> FALSE) ))
>
>> summary(model2)
> Generalized linear mixed model fit using Laplace
> Formula: cbind(yvect, nvect - yvect) ~ trt * center + (1 | center)
> Family: binomial(logit link)
> AIC      BIC        logLik     deviance
>   30 39.58586 -1.547024e-07 3.094048e-07
> Random effects:
> Groups Name        Variance Std.Dev.
> center (Intercept) 5e-10    2.2361e-05
> number of obs: 14, groups: center, 7
>
> Estimated scale (compare to 1)  0.2672612
>
> Fixed effects:
>               Estimate Std. Error  z value Pr(>|z|)
> (Intercept)  -1.060869   0.065372 -16.2282  < 2e-16 ***
> trt2          1.118029   0.086842  12.8743  < 2e-16 ***
> center2      -0.325428   0.504256  -0.6454  0.51869
> center3      -0.325440   0.504258  -0.6454  0.51868
> center4       0.655407   0.413449   1.5852  0.11292
> center5      -0.325433   0.504256  -0.6454  0.51869
> center6      -0.325421   0.504255  -0.6454  0.51870
> center7       0.655422   0.413448   1.5853  0.11291
> trt2:center2  0.673737   0.651313   1.0344  0.30094
> trt2:center3 -0.137183   0.651314  -0.2106  0.83318
> trt2:center4 -0.307083   0.583845  -0.5260  0.59891
> trt2:center5 -0.137203   0.651314  -0.2107  0.83316
> trt2:center6  1.654555   0.712419   2.3224  0.02021 *
> trt2:center7  0.673705   0.651311   1.0344  0.30096
> ---
>
> _________________________________________________________________
>
> Office Live http://clk.atdmt.com/MRT/go/aub0540003042mrt/direct/01/
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting- 
> guide.html
> and provide commented, minimal, self-contained, reproducible code.



Dr. Hank Stevens, Assistant Professor
338 Pearson Hall
Botany Department
Miami University
Oxford, OH 45056

Office: (513) 529-4206
Lab: (513) 529-4262
FAX: (513) 529-4243
http://www.cas.muohio.edu/~stevenmh/
http://www.muohio.edu/ecology/
http://www.muohio.edu/botany/

"E Pluribus Unum"

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

fTbrNuF-Pe_z