From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 09:49:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LDnBL9024578
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 09:49:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LDmbYE027037;
	Thu, 21 Jun 2007 15:48:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp-out.rrz.uni-koeln.de (smtp-out.rrz.uni-koeln.de
	[134.95.19.53])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LDlN6t026798
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 15:47:23 +0200
Received: from smtp.uni-koeln.de (lvr6.rrz.uni-koeln.de [134.95.19.104])
	by smtp-out.rrz.uni-koeln.de (8.13.7/8.13.7) with ESMTP id
	l5LDlKJ4000722; Thu, 21 Jun 2007 15:47:20 +0200
Received: from [134.95.47.146] ([134.95.47.146])
	by smtp.uni-koeln.de (8.12.11.20060308/8.12.11) with ESMTP id
	l5LDlKVA020857; Thu, 21 Jun 2007 15:47:20 +0200
From: "Bernd Weiss" <bernd.weiss@uni-koeln.de>
To: "Irene Mantzouni" <ima@difres.dk>
Date: Thu, 21 Jun 2007 15:47:19 +0200
MIME-Version: 1.0
Message-ID: <467A9D87.16138.1C50AD2@bernd.weiss.uni-koeln.de>
Priority: normal
In-reply-to: <68E7981938EAF54F987AD3848A0A64160109C3B4@ka-mail01.dfu.local>
References: <68E7981938EAF54F987AD3848A0A64160109C3B4@ka-mail01.dfu.local>
X-mailer: Pegasus Mail for Windows (4.41)
Content-description: Mail message body
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] meta-analysis in R
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

On 21 Jun 2007 at 12:09, Irene Mantzouni wrote:

Date sent:      	Thu, 21 Jun 2007 12:09:31 +0200
From:           	"Irene Mantzouni" <ima@difres.dk>
To:             	<r-help@stat.math.ethz.ch>
Subject:        	[R] meta-analysis in R

> I would like to combine time-series data to test for correlations
> and
> interactions using random and fixed effects meta-analysis.
> 
> So, I am looking for the right packages and documentation. 
> 
> I know about meta and rmeta packages of R. 
> 
> Are there any more? What are the diffrences in brief? 

Yes, there are some more packages for meta-analysis. 
help.search("meta-analysis") will answer your question.

Additionally, one should also mention the MiMa function, see below.

Most of the packages use a method of moments estimator; MiMa offers a 
wider range of estimation methods, e.g. ML or REML (see the MiMa 
documentation for more information).

> Can you please suggest some references that could be used as a guide
> for
> meta-analysis in R (or S-plus)? 
> 
>  

I know at least two references:

There is a chapter on meta-analysis in Everitt, Brian, und Torsten 
Hothorn, 2006: A handbook of statistical analyses using R. Boca 
Raton: Chapman & Hall/CRC. (see also <http://cran.r-
project.org/doc/vignettes/HSAUR/Ch_meta_analysis.pdf>)

See also my reply to Lucia Costanzo and my suggestion to use the  
MiMa-package  
<http://tolstoy.newcastle.edu.au/R/e2/help/07/06/19418.html>. 

HTH,

Bernd

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

	awP7