From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 02:55:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5B6tTL9010802
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 02:55:30 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5B6rwRp031463;
	Mon, 11 Jun 2007 08:54:18 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail.gmx.net (mail.gmx.net [213.165.64.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5B6rqCY031407
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 08:53:52 +0200
Received: (qmail 31411 invoked by uid 0); 11 Jun 2007 06:53:52 -0000
Received: from 88.73.11.187 by www084.gmx.net with HTTP;
	Mon, 11 Jun 2007 08:53:52 +0200 (CEST)
Date: Mon, 11 Jun 2007 08:53:52 +0200
From: =?iso-8859-1?Q?=22Maja_Schr=F6ter=22?= <maja.schroeter@gmx.de>
Message-ID: <20070611065352.120970@gmx.net>
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Authenticated: #33658831
X-Flags: 0001
X-Mailer: WWW-Mail 6100 (Global Message Exchange)
X-Priority: 3
X-Provags-ID: V01U2FsdGVkX1/kSotvX+fkXiz3+abROZxhfgG3oNdR9qDvJo5cB6
	r6kfCJptYrGapKoK0s3NCK96f5I41WXYBmXQ== 
X-GMX-UID: tMNedXAYPTR+HPikMDAwSDY5c2tpZMtZ
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R]  Starting R within an VBA makro
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5B6tTL9010802

Hello everybody,

at work I want to start R within an VBA program. 

First I calculate something in Excel 2003.

After that I want to start within my VBA makro R wich should start an R file, say i.g, superplot.R  which plots me the data well.

So is it possible?

Maybe something like that:

sub test()

  'calculate something

 start R superplot.R 

end test()

Thank you so much.

Kindly regards,

Maja


-- 
Psssst! Schon vom neuen GMX MultiMessenger geh�rt?
Der kanns mit allen: http://www.gmx.net/de/go/multimessenger

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

>Dz a