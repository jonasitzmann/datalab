From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 23:31:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D3VML9002648
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 23:31:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D3UulR032420;
	Wed, 13 Jun 2007 05:31:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from postrelay-2.pdf.com (postrelay-2.pdf.com [209.128.81.153])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D3UnPF032388
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 05:30:50 +0200
Received: from postbox.pdf.com (postbox.pdf.com [10.10.8.7])
	by postrelay-2.pdf.com (Switch-3.2.5/Switch-3.2.5) with ESMTP id
	l5D3VuuM007578; Tue, 12 Jun 2007 20:31:56 -0700
Received: from malt.pdf.com (malt.pdf.com [10.10.8.80])
	by postbox.pdf.com (Switch-3.2.6/Switch-3.2.6) with ESMTP id
	l5D3UkVo022993
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 12 Jun 2007 20:30:47 -0700
Received: from [10.2.8.148] ([10.2.8.132])
	by malt.pdf.com (8.12.11/8.12.11) with ESMTP id l5D3Ukgn025436;
	Tue, 12 Jun 2007 20:30:46 -0700
Message-ID: <466F648B.80900@pdf.com>
Date: Tue, 12 Jun 2007 20:29:15 -0700
From: Spencer Graves <spencer.graves@pdf.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: adschai@optonline.net
References: <e088e3376544.466ca686@optonline.net>
In-Reply-To: <e088e3376544.466ca686@optonline.net>
X-Spam: Internal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How do I obtain standard error of each estimated
 coefficients in polr
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

      I'm confused: 

      Have you considered the 'examples' in the 'polr' help file?  The 
first example ends "summary(house.plr)".  The print of this summary 
includes standard errors.  If you want those numbers for subsequent 
computations, you can try str(summary(house.plr)) or 
names(summary(house.plr)).  If you want to be more sophisticated, 
class(summary(house.plr)) says it is "summary.polr".  Then  
methods(class="summary.polr") says there exists a function 
'print.summary.polr', which is however, 'invisible'.  If you want to see 
it, "getAnywhere('print.summary.polr')" will produce the code. 

      If this does NOT answer your question, please provide commented, 
minimal, self-contained, reproducible code, as requested in the posting 
guide "www.R-project.org/posting-guide.html". 

      Hope this helps. 
      Spencer Graves

adschai@optonline.net wrote:
> Hi,
>
> I obtained all the coefficients that I need from polr. However, I'm wondering how I can obtain the standard error of each estimated coefficient? I saved the Hessian and do something like summary(polrObj), I don't see any standard error like when doing regression using lm. Any help would be really appreciated. Thank you!
>
> - adschai
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

                  

0Elni1 t>myr9
r