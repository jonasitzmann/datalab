From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 10:15:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LEF6L9024918
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 10:15:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LEEW7n005626;
	Thu, 21 Jun 2007 16:14:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mxout2.cac.washington.edu (mxout2.cac.washington.edu
	[140.142.33.4])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LE151n032198
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 16:01:07 +0200
Received: from homer24.u.washington.edu (homer24.u.washington.edu
	[140.142.15.10])
	by mxout2.cac.washington.edu (8.13.7+UW06.06/8.13.7+UW07.05) with ESMTP
	id l5LE13Uk015487
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 21 Jun 2007 07:01:03 -0700
Received: from localhost (tlumley@localhost)
	by homer24.u.washington.edu (8.13.7+UW06.06/8.13.7+Submit) with ESMTP
	id l5LE13dw011887; Thu, 21 Jun 2007 07:01:03 -0700
Date: Thu, 21 Jun 2007 07:01:03 -0700 (PDT)
From: Thomas Lumley <tlumley@u.washington.edu>
To: nlei@sfu.ca
In-Reply-To: <200706210827.l5L8Reac017771@rm-rstar.sfu.ca>
Message-ID: <Pine.LNX.4.64.0706210700120.10660@homer24.u.washington.edu>
References: <200706210827.l5L8Reac017771@rm-rstar.sfu.ca>
MIME-Version: 1.0
X-PMX-Version: 5.3.1.294258, Antispam-Engine: 2.5.1.298604,
	Antispam-Data: 2007.6.21.64233
X-Uwash-Spam: Gauge=IIIIIII, Probability=7%, Report='__CT 0, __CT_TEXT_PLAIN 0,
	__HAS_MSGID 0, __MIME_TEXT_ONLY 0, __MIME_VERSION 0,
	__SANE_MSGID 0'
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] model selection criteria in "regsubsets"
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


The calculations are in summary.regsubsets.

Sending three copies of questions like this does not increase the chance 
of a response.

 	-thomas


On Thu, 21 Jun 2007, nlei@sfu.ca wrote:

> Hi All,
> 
> I used "regsubsets" in package "leaps" to do the model subset selection.
> I noticed the "bic" and "cp" criterias are both included in this
> function. But seems like they are not calculated by
> 
> "bic=-n*log(RSS/n)-(p+1)*log(n)" 
> and 
> "cp=(RSS/sigma_hat^2)-(n-2*p-2)" 
> 
> Could you please let me know what formula used for these two criterias?
> 
> Thank you !
> 
> Linda
>

Thomas Lumley			Assoc. Professor, Biostatistics
tlumley@u.washington.edu	University of Washington, Seattle

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

;hn
x