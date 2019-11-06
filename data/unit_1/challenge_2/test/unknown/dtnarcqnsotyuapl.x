From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 19:09:15 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LN9EL9030707
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 19:09:15 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LN8Vbr013726;
	Fri, 22 Jun 2007 01:08:39 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from compton.acpub.duke.edu (compton.acpub.duke.edu [152.3.233.74])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LN8NIS013678
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 01:08:24 +0200
Received: from [152.3.243.214] (dhcp-152-3-243-214.aas.duke.edu
	[152.3.243.214]) 
	by compton.acpub.duke.edu (8.12.11.20060308/8.12.10/Duke-5.0.0) with
	ESMTP id l5LN7trH001993; Thu, 21 Jun 2007 19:07:55 -0400 (EDT)
Message-ID: <467B04E6.1000304@gmail.com>
Date: Thu, 21 Jun 2007 19:08:22 -0400
From: Roland Rau <roland.rproject@gmail.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: nicole baerg <nicole.baerg@gmail.com>
References: <247ee61e0706211451v2dd447cy6df01c16d95fb604@mail.gmail.com>
In-Reply-To: <247ee61e0706211451v2dd447cy6df01c16d95fb604@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Multinomial models
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

since you are very new to R, just a small advice: try to give a minimal 
reproducible, self-contained example. This helps quite often to spot 
some mistakes yourself. This is my own experience and has been 
experienced by others, see, for example:
library(fortunes)
fortune("Ripleyed")

  :-)

For example, mention that you are (probably?) using the package 'nnet'.

nicole baerg wrote:
> I get the coefficients. I would like, however, to get the
> coefficients, estimates, Std Erros and t-Ratios and/or z or P>[z]
Check
names(model1) #if model1 is your fitted model as you write

then you will see a list of the components the fitted object should 
have. I guess the list should look similar to this:
  [1] "n"             "nunits"        "nconn"         "conn"
  [5] "nsunits"       "decay"         "entropy"       "softmax"
  [9] "censored"      "value"         "wts"           "fitted.values"
[13] "residuals"     "lev"           "call"          "terms"
[17] "weights"       "deviance"      "rank"          "coefnames"
[21] "vcoefnames"    "contrasts"     "xlevels"       "edf"
[25] "AIC"



> 
> Also can you change the speficiation of the base category without recoding?
> 
Check
?relevel

I hope this helps,
Roland

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

zXJ2t