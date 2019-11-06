From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 12:01:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QG17L9013121
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 12:01:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QFxqD1013290;
	Tue, 26 Jun 2007 18:00:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from postrelay-2.pdf.com (postrelay-2.pdf.com [209.128.81.153])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QFxeBS013242
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 17:59:41 +0200
Received: from postbox.pdf.com (postbox.pdf.com [10.10.8.7])
	by postrelay-2.pdf.com (Switch-3.2.5/Switch-3.2.5) with ESMTP id
	l5QG10sB008847; Tue, 26 Jun 2007 09:01:00 -0700
Received: from malt.pdf.com (malt.pdf.com [10.10.8.80])
	by postbox.pdf.com (Switch-3.2.6/Switch-3.2.6) with ESMTP id
	l5QFxXVY011066
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 26 Jun 2007 08:59:34 -0700
Received: from [10.10.10.22] (sjc-10-10-10-22.pdf.com [10.10.10.22])
	by malt.pdf.com (8.12.11/8.12.11) with ESMTP id l5QFxT67029798;
	Tue, 26 Jun 2007 08:59:33 -0700
Message-ID: <46813780.3040605@pdf.com>
Date: Tue, 26 Jun 2007 08:57:52 -0700
From: Spencer Graves <spencer.graves@pdf.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: "Daniel O'Shea" <dan.oshea@dnr.state.mn.us>
References: <46791737.537F.005A.0@dnr.state.mn.us>
In-Reply-To: <46791737.537F.005A.0@dnr.state.mn.us>
X-Spam: Internal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] nlme correlated random effects
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

      I haven't seen a reply to this, so I will offer a comment in case 
you haven't already solved the problem. 

      Have you consulted the "Mixed-Effects Bible for S-Plus / R", 
Pinheiro and Bates (2000) Mixed-Effects Models in S and S-Plus 
(Springer)?  If yes, have you worked through appropriate portions of the 
book and the companion script files available with the standard R 
distribution in "~R\library\nlme\scripts"?  I just did "grep 'pdB' *.*" 
in that directory and found 5 uses of pdBlocked, 3 in ch04.R, and 1 each 
in ch06.R and ch08.R.  Also,  RSiteSearch("pdBlocked with 2 random 
effects") produced 69 hits for me just now.  You may not find anything 
useful there, but 69 does not seem to large a list to search, and there 
seems like a reasonable chance of finding something useful there. 

      Beyond this, a recommended approach to difficult questions like 
this is to try to simplify it to the maximum extent possible.  For 
example, it sounds to me like your question, "can I use pdBlocked with 
only 2 random effects", could be answered without the complexity of 
'nlme'.  What phony data set can you generate with the minimum number of 
observations and variables that could help answer this question?  The 
process of producing such a simplified example might produce an answer 
to your question.  If it doesn't, then you can submit that simple, 
self-contained example to this list.  Doing so will increase the chances 
of a useful reply. 

      I know this doesn't answer your question, but I hope it helps. 
      Best Wishes,
      Spencer Graves

Daniel O'Shea wrote:
> I am examining the following nlme model.
>
> asymporig<-function(x,th1,th2)th1*(1-exp(-exp(th2)*x))
> mod1<-nlme(fa20~(ah*habdiv+ad*log(d)+ads*ds+ads2*ds2+at*trout)+asymporig(da.p,th1,th2),
>     fixed=ah+ad+ads+ads2+at+th1+th2~1,
>     random=th1+th2~1,
>     start=c(ah=.9124,ad=.9252,ads=.5,ads2=-.1,at=-1,th1=2.842,th2=-6.917),
>     data=pca1.grouped)
>
> However, the two random effects (th1 and th2) which describe the asymptotic relationship between richness (fa20) and area (da.p) are correlated: -0.904 with approximate 95% ci of -0.99 to -.32.
> I examined the anova of mod1 with both random effects and mod2 with just th1 and mod1 is preferred.  I also examined pdDiag(th1 + th2~1) for another model (mod3) and based on the anova the original mod1 is preferred.
>
> My question is can I use pdBlocked with only 2 random effects or should I and if so how I would specify that in the model or perhaps the 95% ci for correlation is wide enough to ignore???
>
> Dan
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

              

3n:0