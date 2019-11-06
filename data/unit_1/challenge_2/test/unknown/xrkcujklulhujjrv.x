From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 21:18:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L1IJL9017060
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 21:18:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L1GmgZ018405;
	Thu, 21 Jun 2007 03:17:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L1GfLm018347
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 03:16:41 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I1BGY-0007ok-3u
	for r-help@stat.math.ethz.ch; Thu, 21 Jun 2007 03:15:18 +0200
Received: from adsl-214-116-221.gnv.bellsouth.net ([68.214.116.221])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 03:15:18 +0200
Received: from bolker by adsl-214-116-221.gnv.bellsouth.net with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 03:15:18 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Ben Bolker <bolker@ufl.edu>
Date: Thu, 21 Jun 2007 01:12:18 +0000 (UTC)
Lines: 20
Message-ID: <loom.20070621T030939-749@post.gmane.org>
References: <11223029.post@talk.nabble.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 68.214.116.221 (Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty))
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] how to obtain optimization with constraints
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

Lin Pan <linpan1975 <at> yahoo.com> writes:

> 
> 
> Hello All,
> 
> I have one function f(x, y, z) and wanted to optimize the function by
> changing x, y and z values. But z has to be <= sqrt(x*y). Does anybody give
> some advise on how to do it in R? thanks a lot.
> 
> Lin


   Put all the parameters on the log scale 
(so that log(z)- 0.5*log x -0.5*log y) <= 0),
then use constrOptim to set linear inequality constraints.
(This is assuming all the parameters are positive ...)

  Ben Bolker

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

 ise>5pz�sU
2rP