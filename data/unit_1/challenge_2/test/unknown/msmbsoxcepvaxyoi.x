From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 07:41:03 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KBewL9009364
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 07:41:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KBdUGD002084;
	Wed, 20 Jun 2007 13:40:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from idmailgate2.unizh.ch (idmailgate2.unizh.ch [130.60.127.101])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KBQNGq029147
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 13:26:23 +0200
Received: from localhost (zilnx54.unizh.ch [130.60.127.86])
	by idmailgate2.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5KBQNIA010656
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 13:26:23 +0200
Received: from idmailgate2.unizh.ch ([130.60.127.101])
	by localhost (virus3.unizh.ch [130.60.127.86]) (amavisd-new, port 10024)
	with LMTP id 11315-04 for <r-help@stat.math.ethz.ch>;
	Wed, 20 Jun 2007 13:26:20 +0200 (CEST)
Received: from [130.60.200.39] ([130.60.200.39]) (authenticated bits=0)
	by idmailgate2.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5KBQI1s010600
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 13:26:20 +0200
Mime-Version: 1.0 (Apple Message framework v752.2)
To: R Hilfe <r-help@stat.math.ethz.ch>
Message-Id: <EEB60A75-0E84-4202-9393-18A3FAEB4230@systbot.uzh.ch>
From: Birgit Lemcke <birgit.lemcke@systbot.uzh.ch>
Date: Wed, 20 Jun 2007 13:26:34 +0200
X-Mailer: Apple Mail (2.752.2)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] How to extract diagonals
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
Content-Type: multipart/mixed; boundary="===============1533348190=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1533348190==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 639

Hello,

I am using Mac OS X on a power book and R 2.5.0

I try to extract a diagonal from a dissimilarity matrix made with=20=20
dsvdis, with this code:

diag(DiTestRR)

But I get this error message:

Fehler in array(0, c(n, p)) : 'dim' spezifiziert ein zu gro=DFes Array

english:

Error in array(0, c(n, p)) : 'dim' specifies a too big array.

Is there a limit to extract diagonals?

I hope somebody will help me!

Greetings

Birgit Lemcke

Birgit Lemcke
Institut f=FCr Systematische Botanik
Zollikerstrasse 107
CH-8008 Z=FCrich
Switzerland
Ph: +41 (0)44 634 8351
birgit.lemcke@systbot.uzh.ch






	[[alternative HTML version deleted]]


--===============1533348190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1533348190==--

          

s	S nc s