From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 00:18:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l574IchB029779
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 00:18:38 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l574HshA018633;
	Thu, 7 Jun 2007 06:18:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from postrelay-1.pdf.com (postrelay-1.pdf.com [209.128.81.152])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l574Hk2S018598
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <R-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 06:17:47 +0200
Received: from postbox.pdf.com (postbox.pdf.com [10.10.8.7])
	by postrelay-1.pdf.com (Switch-3.2.5/Switch-3.2.5) with ESMTP id
	l574GZKj000379; Wed, 6 Jun 2007 21:16:35 -0700
Received: from malt.pdf.com (malt.pdf.com [10.10.8.80])
	by postbox.pdf.com (Switch-3.2.6/Switch-3.2.6) with ESMTP id
	l574HiJv027388
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 6 Jun 2007 21:17:44 -0700
Received: from [10.2.8.148] ([10.2.8.132])
	by malt.pdf.com (8.12.11/8.12.11) with ESMTP id l574HfVl030988;
	Wed, 6 Jun 2007 21:17:41 -0700
Message-ID: <46678693.8090006@pdf.com>
Date: Wed, 06 Jun 2007 21:16:19 -0700
From: Spencer Graves <spencer.graves@pdf.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: shirley zhang <shirley0818@gmail.com>
References: <6fb73d020706050829nc05c587s17fa85a56f796864@mail.gmail.com>
In-Reply-To: <6fb73d020706050829nc05c587s17fa85a56f796864@mail.gmail.com>
X-Spam: Internal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] Can I treat subject as fixed effect in linear model
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

      The short answer is that you could fit that fixed-effect model 
using 'lm', for example.  That would make sense if you wanted to make 
inference only about that particular group of 20 subjects AND you 
thought it was inappropriate to consider that their contribution to a 
model would follow a normal distribution. 

      If you want to make inference beyond that group of 20 subjects, 
then the fixed effect analysis is not appropriate.  If you thought it 
was inappropriate to think that individual adjustments for each subject 
were normally distributed, then the question is how far from normal 
might they be. 

      I don't think Model2 is "illegal" in the sense that you are not 
likely to be sent to prison for using it.  However, I wouldn't do it.  
I'd make use your Model 1 and make all the plots that seem consistent 
with that model, as described in Pinheiro and Bates (2000) Mixed-Effects 
Models in S and S-Plus (Springer).  If the plots (or something else) 
suggested that some of my assumptions were inappropriate, then I'd 
consider other alternative models.  However, that could be a lot of 
work, and I wouldn't undertake such an effort without some pretty strong 
justification. 

      Hope this helps. 
      Spencer

shirley zhang wrote:
> Hi,
>
> There are 20 subjects grouped by Gender, each subject has 2 tissues
> (normal vs. cancer).
>
> In fact, it is a 2-way anova (factors: Gender and tissue) with tissue
> nested in subject. I've tried the following:
>
> Model 1: lme(response ~ tissue*Gender, random = ~1|subject)
> Model 2: response ~ tissue*Gender + subject
> Model 3: response ~ tissue*Gender
>
>
> It seems like Model 1 is the correct one since my experiment design is
> nested design. However, can anybody tell me whether Model2 is
> completely illegal?
>
> Thanks
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

         

.xo2SdaaD