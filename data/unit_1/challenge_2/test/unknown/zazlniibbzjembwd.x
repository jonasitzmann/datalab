From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 14:00:29 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58I0ShB018361
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 14:00:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58HxT0D026969;
	Fri, 8 Jun 2007 19:59:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from vms044pub.verizon.net (vms044pub.verizon.net [206.46.252.44])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58HtKvC025227
	for <R-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 19:55:20 +0200
Received: from CeleronLCF.lcfltd.com ([70.106.23.203])
	by vms044.mailsrvcs.net (Sun Java System Messaging Server 6.2-6.01
	(built Apr
	3 2006)) with ESMTPA id <0JJB009GYWFOVC60@vms044.mailsrvcs.net> for
	R-help@stat.math.ethz.ch; Fri, 08 Jun 2007 12:55:01 -0500 (CDT)
Date: Fri, 08 Jun 2007 13:54:56 -0400
From: Robert A LaBudde <ral@lcfltd.com>
In-reply-to: <46699285.4040808@web.de>
To: R-help@stat.math.ethz.ch
Message-id: <0JJB009GZWFOVC60@vms044.mailsrvcs.net>
MIME-version: 1.0
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
References: <46699285.4040808@web.de>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] pnorm how to decide lower-tail true or false
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

At 01:31 PM 6/8/2007, Carmen wrote:
>Hi to all,
>maybe the last question was not clear enough.
>I did not found any hints how to decide whether it should use lower.tail
>or not.
>As it is an extra R-feature ( written in
>http://finzi.psych.upenn.edu/R/Rhelp02a/archive/66250.html )
>I do not find anything about it in any statistical books of me.
>Regards Carmen

pnorm(z, lower.tail=TRUE) (the R default) gives the probability of a 
normal variate being at or below z. This is the value commonly called 
the cumulative distribution function at the point z, or the integral 
from -Inf to z of the gaussian density.

pnorm(z, lower.tail=FALSE) gives the complement of the above, or 1 - 
cdf(z), and is the integral from z to Inf of the gaussian density.

E.g.,

 > pnorm(1.96, lower.tail=TRUE)
[1] 0.9750021
 > pnorm(1.96, lower.tail=FALSE)
[1] 0.02499790
 >

Use lower.tail=TRUE if you are, e.g., finding the probability at the 
lower tail of a confidence interval or if you want to the probability 
of values no larger than z.

Use lower.tail=FALSE if you are, e.g., trying to calculate test value 
significance or at the upper confidence limit, or you want the 
probability of values z or larger.

You should use pnorm(z, lower.tail=FALSE) instead of 1-pnorm(z) 
because the former returns a more accurate answer for large z.

This is really simple issue, and has no inherent complexity 
associated with it.
================================================================
Robert A. LaBudde, PhD, PAS, Dpl. ACAFS  e-mail: ral@lcfltd.com
Least Cost Formulations, Ltd.            URL: http://lcfltd.com/
824 Timberlake Drive                     Tel: 757-467-0954
Virginia Beach, VA 23464-3239            Fax: 757-467-2947

"Vere scire est per causas scire"

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

K nuke
nDr, 0.