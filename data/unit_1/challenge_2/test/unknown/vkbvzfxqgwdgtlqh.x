From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 15:08:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CJ84L9030714
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 15:08:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CJ7S0u010417;
	Tue, 12 Jun 2007 21:07:45 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CJ6tco010174
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 21:06:55 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HyBhQ-0004UK-CU
	for r-help@stat.math.ethz.ch; Tue, 12 Jun 2007 21:06:40 +0200
Received: from p54A0976F.dip0.t-ipconnect.de ([84.160.151.111])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 21:06:40 +0200
Received: from dieter.menne by p54A0976F.dip0.t-ipconnect.de with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 21:06:40 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Dieter Menne <dieter.menne@menne-biomed.de>
Date: Tue, 12 Jun 2007 19:06:30 +0000 (UTC)
Lines: 21
Message-ID: <loom.20070612T210503-115@post.gmane.org>
References: <LPEJLJACLINDNMBMFAFIKEBICIAA.dieter.menne@menne-biomed.de>
	<f8e6ff050706121131s4b0aeb30y8de662ddd7323092@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 84.160.151.111 (Mozilla/5.0 (Windows; U; Windows NT 5.0; de;
	rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Stacked barchart color
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

hadley wickham <h.wickham <at> gmail.com> writes:

> 
> On 6/12/07, Dieter Menne <dieter.menne <at> menne-biomed.de> wrote:
> > Dear Latticer,
> >
> > I want to give individual colors to all elements in a simple stacked
> > barchart. I know why the example below does not work (and it is a excellent
> > default), but is there any workaround for this?
> >
> 
> You can do this with ggplot2 (http://had.co.nz/ggplot2) as follows:
> 
> library(ggplot2)
... 

Thanks, Hadley and Deepayan. Hadley's version required the latest update of
ggplot2 (0.5.1).

Dieter

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

o7FN lqI 4