From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 17:39:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SLdKL9015956
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 17:39:21 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SLcDeJ002515;
	Thu, 28 Jun 2007 23:38:48 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SL4BWh020852
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 23:04:11 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I419u-0002kX-H7
	for r-help@stat.math.ethz.ch; Thu, 28 Jun 2007 23:04:10 +0200
Received: from s01060015e975d7fb.wp.shawcable.net ([24.77.75.70])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 23:04:10 +0200
Received: from spluque by s01060015e975d7fb.wp.shawcable.net with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 23:04:10 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: "Sebastian P. Luque" <spluque@gmail.com>
Date: Thu, 28 Jun 2007 16:03:56 -0500
Organization: Memorial University
Lines: 21
Message-ID: <87ir97sseb.fsf@patagonia.sebmags.homelinux.org>
References: <mailman.7.1182074404.9166.r-help@stat.math.ethz.ch>
	<6BCB4D493A447546A8126F24332056E806301A6B@school1.business.edu>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: s01060015e975d7fb.wp.shawcable.net
User-Agent: Gnus/5.110006 (No Gnus v0.6) Emacs/22.1.50 (gnu/linux)
Cancel-Lock: sha1:1qTnJL6t9nNJZV3flrFddQMffyg=
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] applying max elementwise to two vectors
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

On Thu, 28 Jun 2007 16:19:39 -0400,
"Afshartous, David" <afshart@exchange.sba.miami.edu> wrote:

> All,

> Is there one liner way to obtain the max per observation for two
> vectors?  I looked at apply and lapply but it seems that groundwork
> would have to be done before applying either of those.  The code below
> does it but seems like overkill.

> Thanks!  Dave

> x = rnorm(10) y = rnorm(10)

> ind = which(x < y) z = x z[ind] <- y[ind] ## z now contains the max's

?pmax


-- 
Seb

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

eSpcs()