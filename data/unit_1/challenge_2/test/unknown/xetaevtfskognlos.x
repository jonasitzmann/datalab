From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 23:13:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5U3D4L9001918
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 23:13:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5U3BT2m005141;
	Sat, 30 Jun 2007 05:11:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fep1.cogeco.net (smtp.cogeco.net [216.221.81.25])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5U3BNio005102
	for <r-help@lists.R-project.org>; Sat, 30 Jun 2007 05:11:23 +0200
Received: from [192.168.1.103] (d141-171-229.home.cgocable.net
	[24.141.171.229])
	by fep1.cogeco.net (Postfix) with ESMTP id 3FE2D1CA8
	for <r-help@lists.R-project.org>; Fri, 29 Jun 2007 23:11:21 -0400 (EDT)
From: Andrew Muller <mullera@mcmaster.ca>
To: r-help@stat.math.ethz.ch
Organization: McMaster University/Economics
Date: Fri, 29 Jun 2007 23:11:11 -0400
Message-Id: <1183173071.30572.12.camel@happy>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Problem installing RGTK2 on ubuntu 7.04
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

Hello, all

I am trying to install RGTK2 on my Ubuntu 7.04 system. The installation
fails with a message that RGtk2 requires GTK 2.8. As far as I can tell I
have GTK+ 2.10.11 installed. Can anyone suggest a way to proceed? 

Thanks very much. 

Here is the failed installation:

> install.packages("RGtk2")
Warning in install.packages("RGtk2") : argument 'lib' is missing:
using /usr/local/lib/R/site-library
--- Please select a CRAN mirror for use in this session ---
Loading Tcl/Tk interface ... done
trying URL 'http://probability.ca/cran/src/contrib/RGtk2_2.10.11.tar.gz'
Content type 'application/x-tar' length 2329776 bytes
opened URL
==================================================
downloaded 2275Kb

* Installing *source* package 'RGtk2' ...
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for GTK... configure: error: GTK version 2.8.0 required
ERROR: configuration failed for package 'RGtk2'
** Removing '/usr/local/lib/R/site-library/RGtk2'

The downloaded packages are in
        /tmp/RtmpTMtchC/downloaded_packages
Warning message:
installation of package 'RGtk2' had non-zero exit status in:
install.packages("RGtk2") 
> 

I am using  R version 2.4.1 (2006-12-18) on a Ubuntu 7.04 system

mullera@happy:~/sandbox/R$ uname -a
Linux happy 2.6.20-16-generic #2 SMP Thu Jun 7 20:19:32 UTC 2007 i686
GNU/Linux

Andrew Muller
McMaster University/Economics
Hamilton, Ontario, Canada

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

 �o4+0hT