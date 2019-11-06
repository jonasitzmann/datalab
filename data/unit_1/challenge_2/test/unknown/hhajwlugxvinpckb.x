From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 22:59:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l662xUL9002156
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 22:59:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l662wjv0024279;
	Fri, 6 Jul 2007 04:59:00 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from alnrmhc15.comcast.net (alnrmhc15.comcast.net [206.18.177.55])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l662wbjW024250
	for <r-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 04:58:39 +0200
Received: from basebud.nulle.part
	(c-67-174-13-164.hsd1.il.comcast.net[67.174.13.164])
	by comcast.net (alnrmhc15) with ESMTP
	id <20070706025836b1500ceb8je>; Fri, 6 Jul 2007 02:58:36 +0000
Received: from edd by basebud.nulle.part with local (Exim 4.67)
	(envelope-from <edd@debian.org>)
	id 1I6e2a-0000ny-LH; Thu, 05 Jul 2007 21:59:28 -0500
MIME-Version: 1.0
Message-ID: <18061.45072.630998.45163@basebud.nulle.part>
Date: Thu, 5 Jul 2007 21:59:28 -0500
To: "Edna Bell" <edna.bell01@gmail.com>
In-Reply-To: <2d1ebb110707051819m6a9ac7dcx35c41d54426d2d15@mail.gmail.com>
References: <2d1ebb110707051819m6a9ac7dcx35c41d54426d2d15@mail.gmail.com>
X-Mailer: VM 7.19 under Emacs 21.4.1
From: Dirk Eddelbuettel <edd@debian.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Rmpi installation
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


On 5 July 2007 at 20:19, Edna Bell wrote:
| Hi R Gurus.
| 
| I'm trying to install the Rmpi package.
| 
| Here are the errors:
| checking for stdint.h... yes
| checking for unistd.h... yes
| checking mpi.h usability... no
| checking mpi.h presence... no
| checking for mpi.h... no
| Try to find libmpi or libmpich ...
| checking for main in -lmpi... no

You need to be able to compile normal MPI programs. Rmpi seems to like
LAM/MPI, in particular the older version 7.1.1.  I've had problems with newer
releases 7.1.2 to 7.1.4.

On Debian or Ubuntu, 'apt-get install r-cran-rmpi' will install rmpi (and all
required dependencies) for you.

Hth, Dirk

-- 
Hell, there are no rules here - we're trying to accomplish something. 
                                                  -- Thomas A. Edison

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

zd;neiQodo cr