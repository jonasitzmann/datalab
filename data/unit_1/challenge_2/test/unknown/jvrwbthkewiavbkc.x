From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 19:07:36 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CN7ZL9000516
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 19:07:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CN75l7002150;
	Wed, 13 Jun 2007 01:07:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE,
	MSGID_FROM_MTA_HEADER autolearn=no version=3.2.0
Received: from bay0-omc1-s32.bay0.hotmail.com (bay0-omc1-s32.bay0.hotmail.com
	[65.54.246.104])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CN6xsF002085
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 01:07:00 +0200
Received: from hotmail.com ([64.4.38.76]) by bay0-omc1-s32.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Tue, 12 Jun 2007 16:06:58 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Tue, 12 Jun 2007 16:06:58 -0700
Message-ID: <BAY116-DAV4D63C2B088EC584C18B4BB8190@phx.gbl>
Received: from 156.56.194.231 by BAY116-DAV4.phx.gbl with DAV;
	Tue, 12 Jun 2007 23:06:55 +0000
X-Originating-IP: [156.56.194.231]
X-Originating-Email: [ianmccarthy@msn.com]
X-Sender: ianmccarthy@msn.com
From: "Ian McCarthy" <ianmccarthy@msn.com>
To: <r-help@stat.math.ethz.ch>
Date: Tue, 12 Jun 2007 19:06:53 -0400
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: MSN 9
Seal-Send-Time: Tue, 12 Jun 2007 19:06:53 -0400
X-MimeOLE: Produced By MSN MimeOLE V9.50.0039.1900
X-OriginalArrivalTime: 12 Jun 2007 23:06:58.0817 (UTC)
	FILETIME=[60E33F10:01C7AD46]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Using dll with Visual Studio Compiler
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

Hi,

I have created a dll in Fortran and used the Visual Studio 2005 Compiler. I've read that certain problems can arise based on the compiler used and that these problems can sometimes cause R not to be able to access everything appropriately, but I've not found how to fix any of these problems. Specifically, after using dyn.load, I know the dll has been loaded because it is listed in getLoadedDLLs(), but when I try is.loaded("subroutine name"), it returns FALSE. I saw that this was mentioned in the manual, but it too offers little help for a solution.

Any advice would be greatly appreciated.

Cheers,

Ian McCarthy
Department of Economics
Indiana University
100 S. Woodlawn
Bloomington, IN 47405-7104
http://mypage.iu.edu/~imccarth<http://mypage.iu.edu/~imccarth>
imccarth@indiana.edu<mailto:imccarth@indiana.edu>
	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



 /=0d-m/Vre