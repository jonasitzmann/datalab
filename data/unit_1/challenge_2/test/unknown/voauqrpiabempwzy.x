From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 21:21:19 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l661LIL9001369
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 21:21:18 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l661JpUm029719;
	Fri, 6 Jul 2007 03:20:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.182])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l661Jhvh029693
	for <r-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 03:19:43 +0200
Received: by py-out-1112.google.com with SMTP id p76so119259pyb
	for <r-help@stat.math.ethz.ch>; Thu, 05 Jul 2007 18:19:42 -0700 (PDT)
Received: by 10.35.99.5 with SMTP id b5mr379659pym.1183684781979;
	Thu, 05 Jul 2007 18:19:41 -0700 (PDT)
Received: by 10.35.83.12 with HTTP; Thu, 5 Jul 2007 18:19:41 -0700 (PDT)
Message-ID: <2d1ebb110707051819m6a9ac7dcx35c41d54426d2d15@mail.gmail.com>
Date: Thu, 5 Jul 2007 20:19:41 -0500
From: "Edna Bell" <edna.bell01@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R]  Rmpi installation
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

Hi R Gurus.

I'm trying to install the Rmpi package.

Here are the errors:
checking for stdint.h... yes
checking for unistd.h... yes
checking mpi.h usability... no
checking mpi.h presence... no
checking for mpi.h... no
Try to find libmpi or libmpich ...
checking for main in -lmpi... no
libmpi not found. exiting...
ERROR: configuration failed for package 'Rmpi'
** Removing '/home/Desktop/R-2.5.1/library/Rmpi'

The downloaded packages are in
        /tmp/Rtmp90H1Vp/downloaded_packages
Warning messages:
1: installation of package 'rsprng' had non-zero exit status in:
install.packages("Rmpi", depend = T)
2: installation of package 'Rmpi' had non-zero exit status in:
install.packages("Rmpi", depend = T)

I'm thinking that there might be things like "MPI_HOME" or something
like to be set, maybe?

Thanks for any help.
Edna Bell
mailto: edna.bell01@gmail.com

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

 aEil1