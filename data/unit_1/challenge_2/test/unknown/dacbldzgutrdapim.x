From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:43:51 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PChoL9028378
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:43:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5N9bWGI009228;
	Sat, 23 Jun 2007 11:37:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5N9Ojug004905
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Sat, 23 Jun 2007 11:24:46 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I21qH-0003hA-Ue
	for r-help@stat.math.ethz.ch; Sat, 23 Jun 2007 11:23:42 +0200
Received: from p54A0BDB9.dip0.t-ipconnect.de ([84.160.189.185])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Sat, 23 Jun 2007 11:23:41 +0200
Received: from dieter.menne by p54A0BDB9.dip0.t-ipconnect.de with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Sat, 23 Jun 2007 11:23:41 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Dieter Menne <dieter.menne@menne-biomed.de>
Date: Sat, 23 Jun 2007 09:22:41 +0000 (UTC)
Lines: 21
Message-ID: <loom.20070623T112016-976@post.gmane.org>
References: <LPEJLJACLINDNMBMFAFIAEEDCIAA.dieter.menne@menne-biomed.de>
	<467CE4D6.1000902@optonline.net>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 84.160.189.185 (Mozilla/5.0 (Windows; U; Windows NT 5.0; de;
	rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] latex of ftable (Hmisc?)
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

Chuck Cleland <ccleland <at> optonline.net> writes:

>   How about a Sweave approach?  Something like this in the *.Rnw file:
> 
> \documentclass[letter]{article}
... 
> 
> ftable(symptom ~ treatment + sex)
> 
>  <at> 
> 
> \end{document}
> 
>   Then Sweave() the *.Rnw file to produce a *.tex file in the working
> directory.

Well, this IS for Sweave, and I currently use that solution as a surrogate, but
it definitively not a good looking table for a report.

Dieter

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

b DP3