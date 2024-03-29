From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 18:37:50 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59MbnL9015126
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 18:37:50 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59MaBMb024474;
	Sun, 10 Jun 2007 00:36:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.171])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59Ma5m5024437
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 00:36:06 +0200
Received: by ug-out-1314.google.com with SMTP id 36so1134213uga
	for <r-help@stat.math.ethz.ch>; Sat, 09 Jun 2007 15:36:05 -0700 (PDT)
Received: by 10.78.186.9 with SMTP id j9mr1692173huf.1181428565445;
	Sat, 09 Jun 2007 15:36:05 -0700 (PDT)
Received: by 10.78.25.15 with HTTP; Sat, 9 Jun 2007 15:36:05 -0700 (PDT)
Message-ID: <9d3ef91d0706091536o4f2d94f6p9dc93759ae564b7c@mail.gmail.com>
Date: Sun, 10 Jun 2007 00:36:05 +0200
From: "Shiazy Fuzzy" <shiazy@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <0JJD0072TY3QKAF0@vms048.mailsrvcs.net>
MIME-Version: 1.0
Content-Disposition: inline
References: <9d3ef91d0706090957i6440187auf13a46ed5b556912@mail.gmail.com>
	<0JJD0072TY3QKAF0@vms048.mailsrvcs.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] What ECDF function?
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

On 6/9/07, Robert A LaBudde <ral@lcfltd.com> wrote:
> At 12:57 PM 6/9/2007, Marco wrote:
> ><snip>
> >2.I found various version of P-P plot  where instead of using the
> >"ecdf" function use ((1:n)-0.5)/n
> >   After investigation I found there're different definition of ECDF
> >(note "i" is the rank):
> >   * Kaplan-Meier: i/n
> >   * modified Kaplan-Meier: (i-0.5)/n
> >   * Median Rank: (i-0.3)/(n+0.4)
> >   * Herd Johnson i/(n+1)
> >   * ...
> >   Furthermore, similar expressions are used by "ppoints".
> >   So,
> >   2.1 For P-P plot, what shall I use?
> >   2.2 In general why should I prefer one kind of CDF over another one?
> ><snip>
>
> This is an age-old debate in statistics. There are many different
> formulas, some of which are optimal for particular distributions.
>
> Using i/n (which I would call the Kolmogorov method), (i-1)/n or
> i/(n+1) is to be discouraged for general ECDF modeling. These
> correspond in quality to the rectangular rule method of integration
> of the bins, and assume only that the underlying density function is
> piecewise constant. There is no disadvantage to using these methods,
> however, if the pdf has multiple discontinuities.
>
> I tend to use (i-0.5)/n, which corresponds to integrating with the
> "midpoint rule", which is a 1-point Gaussian quadrature, and which is
> exact for linear behavior with derivative continuous. It's simple,
> it's accurate, and it is near optimal for a wide range of continuous
> alternatives.
>

Hmmm I'm a bit confused, but very interested!
So you don't use the R "ecdf", do you?

> The formula (i- 3/8)/(n + 1/4) is optimal for the normal
> distribution. However, it is equal to (i-0.5)/n to order 1/n^3, so
> there is no real benefit to using it. Similarly, there is a formula
> (i-.44)/(N+.12) for a Gumbel distribution. If you do know for sure
> (don't need to test) the form of the distribution, you're better off
> fitting that distribution function directly and not worrying about the edf.
>
> Also remember that edfs are not very accurate, so the differences
> between these formulae are difficult to justify in practice.
>

I will bear in min! My first interpretation was that using some
different from i/n (e.g. i/(n+1)),
let to better individuate tail differences (maybe...)

Regards,

-- Marco

> ================================================================
> Robert A. LaBudde, PhD, PAS, Dpl. ACAFS  e-mail: ral@lcfltd.com
> Least Cost Formulations, Ltd.            URL: http://lcfltd.com/
> 824 Timberlake Drive                     Tel: 757-467-0954
> Virginia Beach, VA 23464-3239            Fax: 757-467-2947
>
> "Vere scire est per causas scire"
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

           

2agk7rlhotf-