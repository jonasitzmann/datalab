From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 01:55:56 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5S5toL9005810
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 01:55:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S5tC6n018048;
	Thu, 28 Jun 2007 07:55:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp-ext-03.mx.pitdc1.expedient.net
	(smtp-ext-03.mx.pitdc1.expedient.net [206.210.69.143])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S5t37Z017975
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <R-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 07:55:04 +0200
Received: from localhost (localhost [127.0.0.1])
	by smtp-ext-03.mx.pitdc1.expedient.net (Postfix) with ESMTP id
	A39977D2DF; Thu, 28 Jun 2007 01:55:02 -0400 (EDT)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Received: from smtp-ext-03.mx.pitdc1.expedient.net ([127.0.0.1])
	by localhost (smtp-ext-01.mx.pitdc1.expedient.net [127.0.0.1])
	(amavisd-new, port 10024)
	with LMTP id HlQEnY3UB4xA; Thu, 28 Jun 2007 01:55:02 -0400 (EDT)
Received: from [127.0.0.1] (unknown [207.114.25.170])
	by smtp-ext-03.mx.pitdc1.expedient.net (Postfix) with ESMTP id
	49FBC7D2F6; Thu, 28 Jun 2007 01:55:02 -0400 (EDT)
Message-ID: <46834D40.80802@charm.net>
Date: Thu, 28 Jun 2007 01:55:12 -0400
From: "Scot W. McNary" <smcnary@charm.net>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: suman Duvvuru <duvvuru.suman@gmail.com>
References: <BAY126-W34F737A4DA0AEFD1A8414BC90A0@phx.gbl>
	<bac8a0820706271951k2aef1cd3hba372b30f1c3787a@mail.gmail.com>
In-Reply-To: <bac8a0820706271951k2aef1cd3hba372b30f1c3787a@mail.gmail.com>
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] Correlation ratio
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

Suman,

Try this:

# some data
example(aov)

# the summary table
anova(npk.aov)

# extract sums of squares
SS <- anova(npk.aov)$"Sum Sq"

SS
#[1] 343.2950000 189.2816667   8.4016667  95.2016667  21.2816667  
33.1350000   0.4816667 185.2866667

# eta-squared for factor N
#SS factor N/SS Total
SS[2]/sum(SS)
#[1] 0.2159850

# partial eta-squared for factor N
# SS factor N/(SS Factor N + SS Residuals)
SS[2]/(sum(SS[2],SS[8]))
#[1] 0.5053328

Hope this helps,

Scot

suman Duvvuru wrote:
> Hi Bruce,
> correlation ratio (eta) is different from correlation coefficient (rho).
> While correlation coefficient captures only a linear relationship btw
> variables, correlation ratio captures both linear and non-linear
> relationships.  It is the defined as the ratio of the variance between
> arrays to the total variance.
>
> Thanks,
> Suman
>
>
> On 6/27/07, Bruce Willy <croero@hotmail.com> wrote:
>   
>>  hello
>>
>> try cor(x, y = NULL, use = "all.obs",
>>      method = c("pearson", "kendall", "spearman"))
>>
>> in the R console, you can type "?cor" to get some help on a particular
>> function
>> and help.search("correlation") if you do know the keyword
>>
>>     
>>> Date: Wed, 27 Jun 2007 18:00:05 -0400
>>> From: duvvuru.suman@gmail.com
>>> To: R-help@stat.math.ethz.ch
>>> Subject: [R] Correlation ratio
>>>
>>> Hi,
>>>
>>> I wanted to know how to compute the correlation ratio (eta) between two
>>> variables using R. Is there any function to compute the correlationratio.
>>>       
>>> Any help will be very much appreciated.
>>>
>>> Thanks,
>>> Suman
>>>
>>>       


-- 
Scot McNary
smcnary at charm dot net

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

ew na<Zel>mDx