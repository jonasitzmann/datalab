From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 21:38:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l521cphB017333
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 21:38:52 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l521bUqO029889;
	Sat, 2 Jun 2007 03:37:40 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from raptor.centroin.com (asmtp.centroin.com [64.251.27.169])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l521bHDZ029839
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Sat, 2 Jun 2007 03:37:23 +0200
Received: from 20151033057.user.veloxzone.com.br
	(20151033057.user.veloxzone.com.br [201.51.33.57])
	(authenticated bits=0)
	by raptor.centroin.com (8.14.1/8.13.6/CIP SMTP HOST) with ESMTP id
	l521bT4o089105; Fri, 1 Jun 2007 22:37:30 -0300 (BRT)
	(envelope-from albmont@centroin.com.br)
From: Alberto Vieira Ferreira Monteiro <albmont@centroin.com.br>
To: Benilton Carvalho <bcarvalh@jhsph.edu>
Date: Sat, 2 Jun 2007 01:36:27 +0000
User-Agent: KMail/1.9.3
References: <200706012320.00350.albmont@centroin.com.br>
	<DC073657-D1CE-4F83-A8CB-64C70A66BA65@jhsph.edu>
In-Reply-To: <DC073657-D1CE-4F83-A8CB-64C70A66BA65@jhsph.edu>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <200706020136.28254.albmont@centroin.com.br>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Windows source in Linux
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

Benilton Carvalho wrote:
>
> iconv on your linux box should do the work.
>
>> I have a "windows" source file.r, with the default charset of windows.
>> I can't use it in Linux as source("file.r"), because Linux's
>> default is
>> Unicode. How can I read it?
>
Soon after I posted, I found out how to do it.

source("file.r", encoding="latin1")

Anyway, thanks to the hint about iconv. I tried to find something like
that using "apropos latin", but iconv was not there.

Alberto Monteiro

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

oew a0+