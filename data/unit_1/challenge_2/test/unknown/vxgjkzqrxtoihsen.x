From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 14:32:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PIWbL9032455
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 14:32:39 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PIViwE003773;
	Mon, 25 Jun 2007 20:32:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PIIX8c031840
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 20:18:34 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I2t8p-0000di-UV
	for r-help@stat.math.ethz.ch; Mon, 25 Jun 2007 20:18:23 +0200
Received: from p54A09413.dip0.t-ipconnect.de ([84.160.148.19])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 20:18:23 +0200
Received: from dieter.menne by p54A09413.dip0.t-ipconnect.de with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 20:18:23 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Dieter Menne <dieter.menne@menne-biomed.de>
Date: Mon, 25 Jun 2007 18:18:08 +0000 (UTC)
Lines: 22
Message-ID: <loom.20070625T201612-975@post.gmane.org>
References: <LPEJLJACLINDNMBMFAFIMEEICIAA.dieter.menne@menne-biomed.de>
	<71257D09F114DA4A8E134DEAC70F25D308C0401F@groamrexm03.amer.pfizer.com>
	<loom.20070625T180859-191@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 84.160.148.19 (Mozilla/5.0 (Windows; U; Windows NT 5.0; de;
	rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] eps in odfWeave
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

Dieter Menne <dieter.menne <at> menne-biomed.de> writes:

> 
> library(odfWeave)
> plotInfo <- getImageDefs()
> plotInfo$type = "eps"
> plotInfo$plotWidth = 4
> plotInfo$plotHeight = 4
> plotInfo$device = "postscript"
> plotInfo$args = list( horizontal = FALSE,onefile = FALSE, paper = "special")
> setImageDefs(plotInfo)
> demoFile <- system.file("examples", "simple.odt", package ="odfWeave")
> odfWeave(demoFile, "c:/simpleOut.odt")
> 
> -----
> Error in check(options) : invalid value for 'type' : eps

Sorry, Max, my error (as you noted in private email). From an earlier attempt I
had forgotten to remove the incorrect <<....type="eps">> in the code.

Dieter

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

rwWyTr4ue.orA