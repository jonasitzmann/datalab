From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 18:29:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54MT6hB001002
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 18:29:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54MSVjm013033;
	Tue, 5 Jun 2007 00:28:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from hksz.eszhok.bme.hu (hksz.eszhok.bme.hu [152.66.120.145])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54MPVtK012009
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 00:25:31 +0200
Received: from localhost (localhost [127.0.0.1])
	by hksz.eszhok.bme.hu (Postfix) with ESMTP id D7C9C34DCC;
	Tue,  5 Jun 2007 00:22:00 +0200 (CEST)
Received: from hksz.eszhok.bme.hu ([127.0.0.1])
	by localhost (netsrv [127.0.0.1]) (amavisd-new, port 10024) with ESMTP
	id 17666-20; Tue,  5 Jun 2007 00:21:59 +0200 (CEST)
Received: from ip6-localhost (localhost [127.0.0.1])
	by hksz.eszhok.bme.hu (Postfix) with ESMTP id 8560F34DC8;
	Tue,  5 Jun 2007 00:21:59 +0200 (CEST)
From: BORGULYA =?iso-8859-2?q?G=E1bor?= <borgulya@gyer2.sote.hu>
To: r-help@stat.math.ethz.ch
Date: Tue, 5 Jun 2007 00:25:28 +0200
User-Agent: KMail/1.9.1
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <200706050025.29964.borgulya@gyer2.sote.hu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Error: could not find function "glht" (multcomp)
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
Content-Type: text/plain; charset="iso-8859-2"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l54MT6hB001002

Dear List,

Could you tell why I get the error message?

> library(multcomp)
> data("cholesterol")
> m = aov(response ~ trt, data = cholesterol)
> cht <- glht(m, linfct = mcp(trt = "Tukey"))
Error: could not find function "glht"

Thank you

G�bor

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

o5atft3b�C	 tN