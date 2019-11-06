From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 11:10:57 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63FAuL9030195
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 11:10:56 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63FA229002335;
	Tue, 3 Jul 2007 17:10:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wr-out-0506.google.com (wr-out-0506.google.com [64.233.184.234])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63ExVUo030297
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 16:59:31 +0200
Received: by wr-out-0506.google.com with SMTP id 69so1248656wra
	for <r-help@stat.math.ethz.ch>; Tue, 03 Jul 2007 07:59:31 -0700 (PDT)
Received: by 10.142.90.8 with SMTP id n8mr445439wfb.1183474770320;
	Tue, 03 Jul 2007 07:59:30 -0700 (PDT)
Received: by 10.142.253.14 with HTTP; Tue, 3 Jul 2007 07:59:30 -0700 (PDT)
Message-ID: <4ad306f30707030759x1f756273v532e9b9fc0dc42aa@mail.gmail.com>
Date: Tue, 3 Jul 2007 10:59:30 -0400
From: "Vineet Kumar" <vineetk@cmu.edu>
To: r-help@stat.math.ethz.ch
In-Reply-To: <468A4309.5020506@williams.edu>
MIME-Version: 1.0
References: <468A4309.5020506@williams.edu>
X-Google-Sender-Auth: 38121dcab04fa1e1
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: Re: [R] generating correlated Bernoulli random variables
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: vineetk@cmu.edu
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

Thanks, all for your help!
vineet


On 7/3/07, Bernhard Klingenberg <Bernhard.Klingenberg@williams.edu> wrote:
>
> >
> > > Hi all,
> > > I was wondering how to generate samples for two RVs X1 and X2.
> > >
> > > X1 ~ Bernoulli (p1)
> > > X2 ~ Bernoulli (p2)
> > >
> > > Also, X1 and X2 are correlated with correlation \rho.
> >
>
> You can use the rmvbin() function in the bindata package, e.g.,
>
> require(bindata)
> n=10
> p1=0.5
> p2=0.3
> rho=0.2
> rmvbin(n, c(p1,p2), bincorr=(1-rho)*diag(2)+rho)
> ?rmvbin
>
> However, as pointed out before, rho is bounded below and above by some
> function of the marginal probabilities. (Try above code with rho=0.9)
> You may want to use the odds ratio (which is unrestricted) to specify
> the association between the two binary variables and then convert this
> odds ratio, for given marginal probabilities p1 and p2, into a (valid)
> correlation rho to be used in rmvbin().
>
> Here is some ad hoc code to do that:
>
> bincorr <- function(OR, p1, p2) {    #from odds ratio to binary
> correlation
>     if (OR==1) p11=p2-p2+p1*p2 else {
>         p11_1=p2-(1/2/(1-OR)*(1-p1+OR*p1+p2-OR*p2-
>               sqrt((-1+p1-OR*p1-p2+OR*p2)^2-4*(1-OR)*(p2-p1*p2))))
>         p11_2=p2-(1/2/(1-OR)*(1-p1+OR*p1+p2-OR*p2-
>               sqrt((-1+p1-OR*p1-p2+OR*p2)^2)-4*(1-OR)*(p2-p1*p2)))
>         if (p11_1>0 && p11_1<=p1 && p11_1<p2) p11=p11_1 else p11=p11_2
>     }
>     bincorr=(p11-p1*p2)/sqrt(p1*(1-p1)*p2*(1-p2))
>     return(bincorr)
> }
>
> For instance, try
>
> sapply(c(0,0.5,1,1.5,3,10,100),function(x) bincorr(x,p1,p2))
>
> to see the range of valid correlations for odds ratios between 0 and
> 100, with p1 and p2 as above.
>
>
> Bernhard Klingenberg
> Dept. of Mathematics and Statistics
> Williams College, MA
> www.williams.edu/~bklingen
>
>

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

ff-=
�,m0