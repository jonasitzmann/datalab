From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 05:37:44 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l639bhL9026883
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 05:37:43 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l639b7bv003377;
	Tue, 3 Jul 2007 11:37:16 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from pluto.osumc.edu (pluto.osumc.edu [140.254.120.27])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l639ava0003271
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 11:36:58 +0200
Received: from localhost (unknown [127.0.0.1])
	by pfeg01.osumc.edu (Postfix) with ESMTP id D4B1218183;
	Tue,  3 Jul 2007 09:36:38 +0000 (UTC)
Received: from pfeg01.osumc.edu ([127.0.0.1])
	by localhost (pfeg01.osumc.edu [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 05042-01-66; Tue,  3 Jul 2007 05:36:38 -0400 (EDT)
Received: from msex01.osumc.edu (MSEX01.osumc.edu [10.127.16.142])
	by pfeg01.osumc.edu (Postfix) with ESMTP id AC827180AC;
	Tue,  3 Jul 2007 05:36:38 -0400 (EDT)
Received: from msxc05.OSUMC.EDU ([10.127.29.178]) by msex01.osumc.edu with
	Microsoft SMTPSVC(6.0.3790.1830); Tue, 3 Jul 2007 05:36:38 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 3 Jul 2007 05:36:38 -0400
Message-ID: <CE0706430C3B1642B60076B6A4A12F6619944D@msxc05.OSUMC.EDU>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Problem installing R packages in OpenBSD
thread-index: Ace87wmKDzMdOMPwSHK5P1imFHnZSwAZd9ox
References: <200707021519.33520.bthatcher@att.net>
From: "Butchar, Jon" <Jon.Butchar@osumc.edu>
To: "Bruce" <bthatcher@att.net>, <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 03 Jul 2007 09:36:38.0638 (UTC)
	FILETIME=[A7AD70E0:01C7BD55]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: Re: [R] Problem installing R packages in OpenBSD
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

Hello.

It's been quite a while since using OpenBSD (and no OpenBSD here for me to
check this out), but I do remember having to reset some of the path entries.
Can you check the directory settings in the main R script and see if that's
where the "fake-..." is coming from?  This looks like a setting for the
OpenBSD package creation that didn't get changed after package installation.

Hope this helps,

Jon


-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch on behalf of Bruce
Sent: Mon 7/2/2007 5:19 PM
To: r-help@stat.math.ethz.ch
Subject: [R] Problem installing R packages in OpenBSD
 
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
o Is OpenBSD ports trying to do the package install?  If so, how do I stop
it?

Please note that I have installed R packages successfully on Linux, Windows
XP 
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


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

BbM5fe