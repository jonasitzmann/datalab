From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 02:50:15 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l636oDL9024833
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 02:50:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l636ncjp009923;
	Tue, 3 Jul 2007 08:49:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from vms042pub.verizon.net (vms042pub.verizon.net [206.46.252.42])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l636nVwo009898
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 08:49:32 +0200
Received: from Aragorn ([71.164.13.188])
	by vms042.mailsrvcs.net (Sun Java System Messaging Server 6.2-6.01
	(built Apr
	3 2006)) with ESMTPA id <0JKL00BBZCAE7PO6@vms042.mailsrvcs.net> for
	r-help@stat.math.ethz.ch; Tue, 03 Jul 2007 01:49:26 -0500 (CDT)
Date: Mon, 02 Jul 2007 23:47:54 -0700
From: "Daniel Nordlund" <res90sx5@verizon.net>
To: <r-help@stat.math.ethz.ch>
Message-id: <024401c7bd3e$159cad40$0201a8c0@Aragorn>
MIME-version: 1.0
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
X-Mailer: Microsoft Office Outlook 11
Thread-index: Ace9PhUB2UQbO+wQRYqpEVQzphE9ng==
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l636nVwo009898
Subject: [R] MatchIt package on Ubuntu 7.04 (Feisty Fawn)
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

UseRs,

I tried to install the MatchIt package on Ubuntu 7.04.   When loading required dependencies I got the following error message:

Error in dyn.load(x, as.logical(local), as.logical(now)) :
        unable to load shared library '/usr/local/lib/R/site-library/optmatch/libs/optmatch.so':
  /usr/local/lib/R/site-library/optmatch/libs/optmatch.so: cannot map zero-fill pages: Cannot allocate memory
Error: package/namespace load failed for 'optmatch'

optmatch.so appears to be where R is looking for it so I don't know what has gone wrong.   Have I missed something in the installation process, or is this a known Ubuntu problem, or a licensing issue?  Should I direct this question to the maintainer?

I have installed MatchIt along with optmatch on a WinXP Pro system without any problem.   Any assistance/suggestions are welcome.  I running R-2.5.1 and downloading packages from the CRAN mirror at FHCRC in Seattle, WA, USA.

Dan

Daniel Nordlund
Bothell, WA USA

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



nD:0=llntgig 