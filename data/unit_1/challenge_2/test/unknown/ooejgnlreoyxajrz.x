From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 11:01:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64F1BL9011957
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 11:01:11 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64ExbRh011313;
	Wed, 4 Jul 2007 16:59:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: ***
X-Spam-Status: No, score=3.0 required=5.0 tests=BAYES_95,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp-out2.libero.it (smtp-out2.libero.it [212.52.84.42])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64CI3pV017819
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 14:18:03 +0200
Received: from localhost (172.31.0.43) by smtp-out2.libero.it (7.3.120)
	id 4688F31B00412DBD for r-help@stat.math.ethz.ch;
	Wed, 4 Jul 2007 14:18:02 +0200
X-Scanned: with antispam and antivirus automated system at libero.it
Received: from smtp-out2.libero.it ([172.31.0.38])
	by localhost (asav-out3.libero.it [192.168.32.31]) (amavisd-new,
	port 10024)
	with ESMTP id 7gikFcdo1PjV for <r-help@stat.math.ethz.ch>;
	Wed,  4 Jul 2007 14:18:02 +0200 (CEST)
Received: from MailRelay10.libero.it (192.168.32.119) by smtp-out2.libero.it
	(7.3.120) id 4611FD3806B006A6 for r-help@stat.math.ethz.ch;
	Wed, 4 Jul 2007 14:18:02 +0200
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AgAAANYsi0bAqBEO/2dsb2JhbAANiEWjEwE
Received: from unknown (HELO libero.it) ([192.168.17.14])
	by outrelay10.libero.it with ESMTP; 04 Jul 2007 14:18:02 +0200
Date: Wed,  4 Jul 2007 14:18:02 +0200
Message-Id: <JKNM62$46F95B93BA537A19F763D2E348B10BD9@libero.it>
MIME-Version: 1.0
X-Sensitivity: 3
From: "ben_it\@libero\.it" <ben_it@libero.it>
To: "r-help" <r-help@stat.math.ethz.ch>
X-XaM3-API-Version: 4.3 (R1) (B3pl19)
X-SenderIP: 87.3.193.119
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l64CI3pV017819
X-Mailman-Approved-At: Wed, 04 Jul 2007 16:59:30 +0200
Subject: [R] copula estimation wih time series marginals
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l64F1BL9011957

I am using R 2.5.1 for windows and my purpose is to estimate a clayton copula . 
Since I have two time series marginals, I found that the most appropriate model was an ARMA(1,0)+GARCH(1,1) model for both with sstd as conditional distribution. Can anyone give me some tips about the code to estimate the copula?
Thanks in advance

Gaetano Rossi


------------------------------------------------------
Scegli infostrada: ADSL gratis per tutta l�estate e telefoni senza canone Telecom
http://click.libero.it/infostrada

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

=h 543h<[li 