From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 14:18:16 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CIIEL9030243
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 14:18:15 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CIHKrI020837;
	Tue, 12 Jun 2007 20:17:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, BAYES_99,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.186])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CHv4j1013701
	for <r-help@lists.r-project.org>; Tue, 12 Jun 2007 19:57:04 +0200
Received: from [84.160.151.111] (helo=dieter)
	by mrelayeu.kundenserver.de (node=mrelayeu0) with ESMTP (Nemesis),
	id 0MKwh2-1HyAc30qej-0004H6; Tue, 12 Jun 2007 19:57:03 +0200
From: "Dieter Menne" <dieter.menne@menne-biomed.de>
To: "R-Help" <r-help@stat.math.ethz.ch>
Date: Tue, 12 Jun 2007 19:57:03 +0200
Message-ID: <LPEJLJACLINDNMBMFAFIKEBICIAA.dieter.menne@menne-biomed.de>
MIME-Version: 1.0
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook IMO, Build 9.0.6604 (9.0.2911.0)
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
X-Provags-ID: V01U2FsdGVkX190+s7SV3EWWM9u+NQrSORvg57AnPZyCNon6LA
	j2qR5rK7rpqMS4T03zSexnOIYVMX1E/SpQMmYYmMZCA/LJ7zC1
	qhus56hbZ4IerI+HfXAug==
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Stacked barchart color
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: dieter.menne@menne-biomed.de
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

Dear Latticer,

I want to give individual colors to all elements in a simple stacked
barchart. I know why the example below does not work (and it is a excellent
default), but is there any workaround for this?

Dieter


# This only colors red and green, but I want blue and gray for Peatland.

barchart(yield ~ variety , groups=year, data = barley,  stack = TRUE,
  subset=site=="Grand Rapids" & variety %in% c("Velvet","Peatland"),
    col=c("red","green","blue","gray"))

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

j�6trri
bN2ttff