From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 17:22:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62LMDL9019162
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 17:22:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62LLSh7027442;
	Mon, 2 Jul 2007 23:21:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mtiwmhc13.worldnet.att.net (mtiwmhc13.worldnet.att.net
	[204.127.131.117])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62LL3EK027242
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 23:21:03 +0200
Received: from [192.168.2.100]
	(6.denver-04rh16rt.co.dial-access.att.net[12.73.179.6])
	by worldnet.att.net (mtiwmhc13) with ESMTP
	id <2007070221210211300g25gae>; Mon, 2 Jul 2007 21:21:02 +0000
From: Bruce <bthatcher@att.net>
To: r-help@stat.math.ethz.ch
Date: Mon, 2 Jul 2007 15:19:32 -0600
User-Agent: KMail/1.9.6
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <200707021519.33520.bthatcher@att.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Problem installing R packages in OpenBSD
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

OS:  OpenBSD version 4.1 i386
R version 2.4.1 (2006-12-18) installed as a binary package

$ ls
mapproj_1.1-7.1.tar.gz     maps_2.0-36.tar.gz

$ sudo R CMD INSTALL mapproj_1.1-7.1.tar.gz

/usr/local/lib/R/bin/INSTALL[118]: 
  .: /usr/obj/i386/R-2.4.1/fake-i386/usr/local/lib/R/share/sh/dcf.sh: not 
found

I get the same error message from the R command prompt using 
install.packages("mapproj", dep=TRUE)

Questions regarding  /usr/obj/i386/R-2.4.1/fake-i386:  
o Where did this path come from?  
o Is there a conflict between OpenBSD ports and R packages?
o Is OpenBSD ports trying to do the package install?  If so, how do I stop it?

Please note that I have installed R packages successfully on Linux, Windows XP 
and FreeBSD.

Background information
-------------------------------------------
Environment variables:
$ echo $R_HOME
/usr/local/lib/R
$ echo $R_LIBS
/usr/local/lib/R/library

R install:
$ pwd
/usr/local/lib/R/share/sh
$ ls -l
total 16
-r--r--r--  1 root  bin   392 Mar  9 00:57 dcf.sh
-r--r--r--  1 root  bin    27 Mar  9 00:57 echo.sh
-r--r--r--  1 root  bin  1506 Mar  9 00:57 help-links.sh
-r--r--r--  1 root  bin   825 Mar  9 00:57 help-print.sh

Thanks

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

ER ssQppecd<eWo6