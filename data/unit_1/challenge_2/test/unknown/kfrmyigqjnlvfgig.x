From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 14:31:52 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65IVoL9029752
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 14:31:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65IU7N1009998;
	Thu, 5 Jul 2007 20:30:32 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, FORGED_HOTMAIL_RCVD2,
	SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65ICHLd003540
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 20:12:18 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I6VoL-00053x-Ma
	for r-help@stat.math.ethz.ch; Thu, 05 Jul 2007 20:12:13 +0200
Received: from 64-17-77-144.co.warpdriveonline.com ([64.17.77.144])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 05 Jul 2007 20:12:13 +0200
Received: from gerifalte28 by 64-17-77-144.co.warpdriveonline.com with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 05 Jul 2007 20:12:13 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: "Francisco J. Zagmutt" <gerifalte28@hotmail.com>
Date: Thu, 05 Jul 2007 12:11:53 -0600
Lines: 51
Message-ID: <468D3469.8040703@hotmail.com>
References: <21add9100707040020r3e3378e6o6d34d8fe73192e40@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
Cc: r-help@stat.math.ethz.ch
X-Gmane-NNTP-Posting-Host: 64-17-77-144.co.warpdriveonline.com
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
In-Reply-To: <21add9100707040020r3e3378e6o6d34d8fe73192e40@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] probabilty plot
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

Hi Zeng,

I just glanced at the link, but I think this is what you are after:

x=rnorm(1000)#1000 random samples from N(0,1)
y=rlnorm(1000)#1000 random samples from Lognormal(0,1)
fx=ecdf(x)#Empirical cumulative density function of x
fy=ecdf(y)#Empirical cumulative density function of y

#Histogram of data
hist(x)
hist(y)

n=seq(-4,30,.1)#Quantiles to be applied to the F(x)

plot(fx(n), fy(n))#Probability plot

If you are testing data against a known distribution (i.e. Normal) you 
may want to use the distribution function for that distribution (i.e. 
pnorm for the Normal distr) instead of the ecdf since that will provide 
you with an exact answer. i.e.

plot(pnorm(n), fy(n))


Now, QQ plots are usually more useful to compare distributions since 
they are more sensitive to small discrepancies in the data.  Take a look 
at qqplot and qqnorm for examples of how to create qqplots in R

I hope this helps.

Francisco


along zeng wrote:
> Hi all,
>    I am a freshman of R,but I am interested  in it! Those days,I am
> learning   pages on NIST,with url
> http://www.itl.nist.gov/div898/handbook/eda/section3/probplot.htm,
> I am meeting  a problem about probability plot and I don't know how to
> plot a data set with R.
> Could somebody tell me the answer,and a example is the best!  I will
> look forward to your answer.
>  Thank you very much.
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

             

wH4e.63LeUFi