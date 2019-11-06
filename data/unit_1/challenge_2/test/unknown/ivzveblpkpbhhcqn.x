From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 10:59:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58ExWhB016693
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 10:59:33 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58EwmlU018510;
	Fri, 8 Jun 2007 16:58:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from sccrmhc12.comcast.net (sccrmhc12.comcast.net [63.240.77.82])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58ERpgr006504
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 16:27:52 +0200
Received: from basebud.nulle.part
	(c-67-174-13-164.hsd1.il.comcast.net[67.174.13.164])
	by comcast.net (sccrmhc12) with ESMTP
	id <2007060814275001200ejrkqe>; Fri, 8 Jun 2007 14:27:50 +0000
Received: from edd by basebud.nulle.part with local (Exim 4.63)
	(envelope-from <edd@debian.org>)
	id 1HwfRN-0002I9-FE; Fri, 08 Jun 2007 09:27:49 -0500
MIME-Version: 1.0
Message-ID: <18025.26469.373816.79670@basebud.nulle.part>
Date: Fri, 8 Jun 2007 09:27:49 -0500
To: "Tim Keitt" <tkeitt@gmail.com>
In-Reply-To: <6262c54c0706071522s72d0102bt98e43a94626b6b7e@mail.gmail.com>
References: <6262c54c0706071522s72d0102bt98e43a94626b6b7e@mail.gmail.com>
X-Mailer: VM 7.19 under Emacs 21.4.1
From: Dirk Eddelbuettel <edd@debian.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Ubu edgy + latest CRAN R + Rmpi = no go
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


On 7 June 2007 at 17:22, Tim Keitt wrote:
| I'm just curious if anyone else has had problems with this
| configuration. I added the CRAN repository to apt and installed 2.5.0
| with apt-get. I then did an install.packages("Rmpi") on cluster nodes.
| Rmpi loads and lamhosts() shows the nodes, but mpi.spawn.Rslaves()
| fails (something to do with temp files?). Rmpi works fine with the

I have had similar issues at work. If you fix the lam packages at version
7.1.1, it works.  It does not seem to work with 7.1.2 in the current Ubuntu,
not does it work with 7.1.4 (current upstream version).

As other MPI tools seem to work, I would put the error on Rmpi, but I have
not had time to pin this down.

For what it's worth, a few of us are trying to revive the OpenMPI packages in
Debian, and I have started to on a port of Rmpi to ROpenMPI.  No ETA for that.

| Edgy-native version of R (2.3.x) and installing Edgy's r-cran-rmpi
| with apt. (But I need some other packages that only work in 2.4+!)
| Could this be a problem with the latest Ubu debs on CRAN? The Rmpi

R itself is just fine on Ubuntu, thank you.

Dirk

| author says his R 2.5 setup works fine. CC me please as I'm not
| subscribed.
| 
| THK
| 
| -- 
| Timothy H. Keitt, University of Texas at Austin
| Contact info and schedule at http://www.keittlab.org/tkeitt/
| Reprints at http://www.keittlab.org/tkeitt/papers/
| ODF attachment? See http://www.openoffice.org/
| 
| ______________________________________________
| R-help@stat.math.ethz.ch mailing list
| https://stat.ethz.ch/mailman/listinfo/r-help
| PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
| and provide commented, minimal, self-contained, reproducible code.

-- 
Hell, there are no rules here - we're trying to accomplish something. 
                                                  -- Thomas A. Edison

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

w3os
up;o