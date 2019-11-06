From r-help-bounces@stat.math.ethz.ch  Sat Jun 30 00:20:59 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5U4KvL9002430
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 30 Jun 2007 00:20:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5U4K9Nu023999;
	Sat, 30 Jun 2007 06:20:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from sccrmhc11.comcast.net (sccrmhc11.comcast.net [63.240.77.81])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5U4JqgE023851
	for <r-help@stat.math.ethz.ch>; Sat, 30 Jun 2007 06:19:52 +0200
Received: from basebud.nulle.part
	(c-67-174-13-164.hsd1.il.comcast.net[67.174.13.164])
	by comcast.net (sccrmhc11) with ESMTP
	id <20070630041950011001jmdve>; Sat, 30 Jun 2007 04:19:51 +0000
Received: from edd by basebud.nulle.part with local (Exim 4.67)
	(envelope-from <edd@debian.org>)
	id 1I4UR4-00015Y-1G; Fri, 29 Jun 2007 23:19:50 -0500
MIME-Version: 1.0
Message-ID: <18053.55782.9765.869977@basebud.nulle.part>
Date: Fri, 29 Jun 2007 23:19:50 -0500
To: Andrew Muller <mullera@mcmaster.ca>
In-Reply-To: <1183173071.30572.12.camel@happy>
References: <1183173071.30572.12.camel@happy>
X-Mailer: VM 7.19 under Emacs 21.4.1
From: Dirk Eddelbuettel <edd@debian.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Problem installing RGTK2 on ubuntu 7.04
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


On 29 June 2007 at 23:11, Andrew Muller wrote:
| I am trying to install RGTK2 on my Ubuntu 7.04 system. The installation
| fails with a message that RGtk2 requires GTK 2.8. As far as I can tell I
| have GTK+ 2.10.11 installed. Can anyone suggest a way to proceed? 

Something is not right in your example below. Do you have the required -dev
packages installed?  For Debian's r-cran-rgtk2 (which you could install from
Ubuntu, albeit in a slightly older version, via 'sudo apt-get install
r-cran-rgtk2'), I use the following Build-Depends:

  libgtk2.0-dev (>= 2.10.12-1), libglade2-dev, libpango1.0-dev, libcairo2-dev
 
If you have all that installed, it should just work fine (and I do use the
direct-from-CRAN method on my computers at work, and have just upgraded RGtk2
there a few days ago).

| I am using  R version 2.4.1 (2006-12-18) on a Ubuntu 7.04 system

FYI there are Ubuntu backports at CRAN. You could get R 2.5.0 without any
effort, and presumably in a few days R 2.5.1 once the porters build the
package as I've put 2.5.1 into Debian.

Hth, Dirk

-- 
Hell, there are no rules here - we're trying to accomplish something. 
                                                  -- Thomas A. Edison

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

 3"9syryvteon_"