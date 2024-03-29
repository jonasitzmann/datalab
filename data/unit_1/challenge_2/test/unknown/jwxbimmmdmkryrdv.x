From r-help-bounces@stat.math.ethz.ch  Sun Jun 17 16:15:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5HKF6L9010184
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 16:15:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HKD1sE021306;
	Sun, 17 Jun 2007 22:13:37 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from vms048pub.verizon.net (vms048pub.verizon.net [206.46.252.48])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HKCsgY021247
	for <R-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 22:12:54 +0200
Received: from CeleronLCF.lcfltd.com ([70.106.23.203])
	by vms048.mailsrvcs.net (Sun Java System Messaging Server 6.2-6.01
	(built Apr
	3 2006)) with ESMTPA id <0JJS00BNHQT94S73@vms048.mailsrvcs.net> for
	R-help@stat.math.ethz.ch; Sun, 17 Jun 2007 15:12:46 -0500 (CDT)
Date: Sun, 17 Jun 2007 16:12:43 -0400
From: Robert A LaBudde <ral@lcfltd.com>
In-reply-to: <e46e9d2413a88.46756f63@optonline.net>
To: R-help@stat.math.ethz.ch
Message-id: <0JJS00BNIQTA4S73@vms048.mailsrvcs.net>
MIME-version: 1.0
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
References: <e2a29c0889f4.46733d60@optonline.net>
	<0JJP007MLJXIS3N3@vms042.mailsrvcs.net>
	<e426e6d0d3af.46738e9f@optonline.net>
	<0JJQ00D91HBS55B4@vms044.mailsrvcs.net>
	<e46e9d2413a88.46756f63@optonline.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] [Not R question]: Better fit for order probit model
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

At 01:29 PM 6/17/2007, adschai wrote:
>Thank you so much Robert. Please find the information below.
>
>The scale 1-10 are subjective physical condition ratings scored by 
>inspection engineers at the site. 1-5 are in very bad conditions 
>(bridge close down to seriously deteriorated). The rest from 6-10 
>are categorized as good condition.However, the proportion of samples 
>in my data are as follows. Bridges with 1-5 scale covers about 2-3% 
>of total population. The majority of the bridges are in 7-8. 
>Certainly, I have enough data for model estimation but the mix of 
>the proportion is good. I attached the detail of condition rating 
>scale at the end of this message.
><snip>

My guess is that you really have two distributions here: 1) Bridges 
that are basically under proper supervision and repair (Categories 
6-10), and those that are not Categories 1-5). These two classes 
would probably have dramatically different relations to the 
covariates your are using.

So my recommendation would be to consider splitting your response 
into two classes (0/1), each with 5 sub categories.

Keeping the two classes merged together in a single group is 
equivalent to merging two different distributions with a weighting 
factor. This may be causing a bimodal distribution which is giving 
you problems.

You could try your modeling on each of the two classes separately 
before continuing with your full dataset modeling. You may learn 
something useful to help you with your problems.

For the full model, you would need to include a full set of 
interaction terms with "class".
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

        

iuZ-nPcrho/