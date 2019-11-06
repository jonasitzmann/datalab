From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 01:27:16 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5S5RFL9005521
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 01:27:15 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S5PRiH008450;
	Thu, 28 Jun 2007 07:26:00 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S5Ogev007974
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 07:24:42 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5S5OPQI026554; 
	Thu, 28 Jun 2007 06:24:26 +0100 (BST)
Date: Thu, 28 Jun 2007 06:24:25 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Spencer Graves <spencer.graves@pdf.com>
In-Reply-To: <46831845.9070005@pdf.com>
Message-ID: <Pine.LNX.4.64.0706280618590.23081@gannet.stats.ox.ac.uk>
References: <20070627165510.25778.qmail@web53808.mail.re2.yahoo.com>
	<46831845.9070005@pdf.com>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, vinod gullu <vinodkgul@yahoo.com>
Subject: Re: [R] stepAIC on lm() where response is a matrix..
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

On Wed, 27 Jun 2007, Spencer Graves wrote:

>      I see several options for you:
>
>      1.  Write a function 'dropterm.mlm', copying 'dropterm.lm' and
> modifying it as you think appropriate.  The function 'dropterm.lm' is
> hidden in a namespace, which you can see from 'methods(dropterm)'.  To
> get it, either use getAnywhere("dropterm.lm") or "MASS:::dropterm.lm".

To do so you would have to decide what the AIC was for the mlm model.  If 
the two responses are regarded as independent, this would be easy, but mlm 
is also the basis of 'manova' models: see ?anova.mlm and ?summary.manova. 
Given Spencer's point 2, independence is not normally what people intend 
when fitting a multivariate linear model: more likely they are fitting a 
model with correlated observations not by maximum likelihood (and hence 
AIC is not appropriate).

>      2.  Use 'stepAIC' in the univariate mode.  If they both select the
> same model, it would strongly suggest that you would get the same answer
> from a multivariate version.  Fit that multivariate version and be happy.
>
>      3.  If univariate analyses produce different models and you want a
> common one, take the models you get, and interpolate manually a list of
> alternative plausible models between the two best univariate models.
> Then fit those manually and select the one with the smallest AIC.
>
>      Hope this helps.
>      Spencer Graves
>
> vinod gullu wrote:
>> dear R users,
>>
>> I have fit the lm() on a mtrix of responses.
>> i.e M1 = lm(cbind(R1,R2)~ X+Y+0). When i use
>> summary(M1), it shows details for R1 and R2
>> separately. Now i want to use stepAIC on these models.
>> But when i use stepAIC(M1) an error message  comes
>> saying that dropterm.mlm is not implemented. What is
>> the way out to use stepAIC in such cases.
>>
>> regards,

-- 
Brian D. Ripley,                  ripley@stats.ox.ac.uk
Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
University of Oxford,             Tel:  +44 1865 272861 (self)
1 South Parks Road,                     +44 1865 272866 (PA)
Oxford OX1 3TG, UK                Fax:  +44 1865 272595

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

.a�-cK3