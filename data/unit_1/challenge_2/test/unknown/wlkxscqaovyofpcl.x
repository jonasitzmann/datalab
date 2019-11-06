From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 22:23:57 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l572NthB028854
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 22:23:56 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l572MwEq007737;
	Thu, 7 Jun 2007 04:23:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from postrelay-2.pdf.com (postrelay-2.pdf.com [209.128.81.153])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l572Mhp3007621
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 04:22:45 +0200
Received: from postbox.pdf.com (postbox.pdf.com [10.10.8.7])
	by postrelay-2.pdf.com (Switch-3.2.5/Switch-3.2.5) with ESMTP id
	l572Ng6I007272; Wed, 6 Jun 2007 19:23:42 -0700
Received: from malt.pdf.com (malt.pdf.com [10.10.8.80])
	by postbox.pdf.com (Switch-3.2.6/Switch-3.2.6) with ESMTP id
	l572McDA001281
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 6 Jun 2007 19:22:39 -0700
Received: from [10.2.8.148] ([10.2.8.132])
	by malt.pdf.com (8.12.11/8.12.11) with ESMTP id l572MZHx008640;
	Wed, 6 Jun 2007 19:22:36 -0700
Message-ID: <46676B99.2070205@pdf.com>
Date: Wed, 06 Jun 2007 19:21:13 -0700
From: Spencer Graves <spencer.graves@pdf.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: "bunny , lautloscrew.com" <bunny@lautloscrew.com>
References: <772B523A-3B9D-4B36-B63E-63B68A223A35@lautloscrew.com>
In-Reply-To: <772B523A-3B9D-4B36-B63E-63B68A223A35@lautloscrew.com>
X-Spam: Internal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] factor analysis
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l572NthB028854

      I haven't seen an answer to this post, so I thought I would try to 
generate a response. 

      Regarding your first question (Can i use this factor analysis 
somehow despite the poor cumulative variance of the first three factors 
?), I would ask, "for what purpose?"  And, "What are the alternatives?" 

      The second question on the null hypothesis can be answered by 
looking at the degrees of freedom:  That will often identify the null 
hypothesis for a test with a chi-square statistic.  Let p = number of 
original variables, which I assume is 10 in your case as you list 10 
eigenvalues.  Let f = number of factors = 3 in your case.  The degrees 
of freedom is the number of free parameters estimated in a model.  With 
two nested models, the degrees of freedom is the difference in the 
numbers of parameters estimated in the two models. 

      I can think of several obvious hypotheses, in this case:  The two 
extremes are that there are no significant correlations and that a 
saturated model is required.  The former requires no parameters to 
estimate the correlation matrix, while the latter requires choose(p, 2) 
= 45 with p = 10.  To estimate a model with only one factor requires p 
parameters, one for the eigenvalue and (p-1) for the eigenvector / 
direction / factor loadings.  (The sums of squares of the elements of 
each eigenvector = 1.  The factor loadings = the eigenvector times the 
square root of the corresponding eigenvalue.)  Thus, the free parameters 
for a one-factor model = 10.  If this hypothesis compared one factor to 
none, the degrees of freedom would be 10 - 0 = 10.  Similarly, if the 
null hypothesis were saturated, the degrees of freedom would be 45 - 10 
= 35. 

      Next consider a 2-factor model.  In addition to the p coefficients 
estimated for one factor, we must estimate an additional p-1, one 
eigenvalue and p-2 for a unit vector orthogonal to the one we already 
have.  This is 19 degrees of freedom.  Similarly for a 3-factor model, 
we must estimate an additional p-2 parameter, one eigenvalue plus p-3 
for a unit vector orthogonal to the two we already have.  This gives us 
19 + 8 = 27.  Finally a 4-factor model would require estimating p-3 
additional parameters for a total of 34. 

      Now compare the degrees of freedom for the 3-factor model with all 
the others just listed to find one where the difference is the number 
you got, 18.  If we do this we find that 45 - 27 = 18.  From this, we 
conclude that the null hypothesis is the saturated model, i.e., no 
factor structure identifiable from these data. 

      As a check, let's look at your 4-factor model:  45 - 34 = 11.  
This says that your 4-factor model is NOT significantly different from a 
saturated model, i.e., it is adequate.  Returning to the 3-factor model, 
the low p-value in that case says that 3 factors is not enough:  4 
factors provides a more accurate representation. 

      Does this make sense? 

      Note, however, that the above assumes your observations are all 
statistically independent.  If that's not the case, then the assumptions 
behind this test are not satisfied.  Similarly, if the observations are 
not normally distributed, you can't trust this test.  I often check 
normality using 'qqnorm'.  However, if your observations were collected 
in batches, for example, then I would not expect them to be independent. 

      Finally, even though this analysis suggest that a 4-factor model 
is better, I might still use the 3-factor model if it gave me something 
I could interpret and the 4-factor model didn't. 

      Hope this helps. 
      Spencer Graves
p.s.  I might have answered this a day or two earlier, but the lack of a 
simple, self-contained example meant that I would have to work harder to 
understand your question and craft an answer.      

bunny , lautloscrew.com wrote:
> Hi there,
>
> i�ve trouble understanding the factanal output of R.
> i am running a a FA on a dataset with 10 variables.
>
> i plotted eigenvalues to finde out how many factors to try.
> i think the "elbow" is @ 3 factors.
> here are my eigenvalues: 2.6372766 1.5137754 1.0188919 0.8986154  
> 0.8327583 0.7187473 0.6932792 0.5807489 0.5709594 0.5349477
> (of the correlation matrix)
>
> i guess this is basically what screeplot does as well.
>
> and here�s my problem:
> unfortunately the cumulative variance @ 3 factors is only .357
> there are no crossloadings and the interpretation of the factors and  
> their loadings definetely make sense so far.
>
> Can i use this factor analysis somehow despite the poor cumulative  
> variance of the first three factors ?
> changing the rotation didnt help much.
>
> The test of the hypothesis says the following:
>
> Test of the hypothesis that 3 factors are sufficient.
> The chi square statistic is 46.58 on 18 degrees of freedom.
> The p-value is 0.000244
>
> does this mean the Hnull is that 3 factors are sufficient and i cant  
> recject ?
>
>
> 4 factors say:
> Test of the hypothesis that 4 factors are sufficient.
> The chi square statistic is 10.82 on 11 degrees of freedom.
> The p-value is 0.458
>
> Unfortunately ?factanal does not tell me what the Hnull is in this  
> case ?
>
> Thx a lot in advance for some advice
>
> matthias
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

VCmMgJCa