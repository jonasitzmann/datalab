From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 09:11:15 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PDBDLB028800
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 09:11:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5P7XdhW025171;
	Mon, 25 Jun 2007 09:33:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailgw1.fraunhofer.de (mailgw1.fraunhofer.de [153.96.1.18])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5P7XQZe025094
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 09:33:26 +0200
Received: from mailgw1.fraunhofer.de (localhost [127.0.0.1])
	by mailgw1.fraunhofer.de (8.13.5+/8.13.4) with ESMTP id l5P7XPE2011966; 
	Mon, 25 Jun 2007 09:33:25 +0200 (CEST)
Received: from kso-ipa.ipa.fraunhofer.de (kso-ipa.IPA.FhG.de [153.97.7.12])
	by mailgw1.fraunhofer.de (8.13.5+/8.13.4) with ESMTP id l5P7XO3P011917
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Mon, 25 Jun 2007 09:33:24 +0200 (CEST)
Received: from ksi-ipa.ipa.fraunhofer.de (ksi-ipa.IPA.FhG.de [129.233.6.112])
	by kso-ipa.ipa.fraunhofer.de (8.13.5+/8.13.5) with ESMTP id
	l5P7X0ux007502
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Mon, 25 Jun 2007 09:33:02 +0200 (CEST)
X-Authentication-Warning: kso-ipa.ipa.fraunhofer.de: Host ksi-ipa.IPA.FhG.de
	[129.233.6.112] claimed to be ksi-ipa.ipa.fraunhofer.de
X-Received: izs.fraunhofer.de-policy from ksi-ipa.ipa.fraunhofer.de (localhost
	[127.0.0.1])
	by ksi-ipa.ipa.fraunhofer.de (8.13.5+/8.13.5) with ESMTP id
	l5P7XGUQ010720; Mon, 25 Jun 2007 09:33:16 +0200 (CEST)
Received: from pandora.izs.fhg.de (pandora.IZS.FhG.de [129.233.61.42])
	by ksi-ipa.ipa.fraunhofer.de (8.13.5+/8.13.5) with ESMTP id
	l5P7XCRe010668
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 25 Jun 2007 09:33:14 +0200 (CEST)
Received: from izs-xchg01.izs.fraunhofer.de (izs-xchg01.IZS.FhG.de
	[129.233.69.3])
	by pandora.izs.fhg.de (8.12.10/8.12.10) with ESMTP id l5P7X9C3016740;
	Mon, 25 Jun 2007 09:33:09 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Mon, 25 Jun 2007 09:32:45 +0200
Message-ID: <8B7B0FD99E8AF541A21609104D196158CE1891@izs-xchg01.izs.fraunhofer.de>
In-Reply-To: <3f2938d50706221425p5352bec0s163cb0a0f3a41d2f@mail.gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] How to run "mathematica" or "c" programs in R?
Thread-Index: Ace1FP3NTy4/Md+LS9S2QIeNVBJ+9AB5d7cg
References: <3f2938d50706221425p5352bec0s163cb0a0f3a41d2f@mail.gmail.com>
From: "Schmitt, Corinna" <Corinna.Schmitt@igb.fraunhofer.de>
To: "Zhang Jian" <jzhang1982@gmail.com>, "r-help" <r-help@stat.math.ethz.ch>
X-Fraunhofer-Email-Policy: accepted
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5P7XQZe025094
Subject: Re: [R] How to run "mathematica" or "c" programs in R?
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5PDBDLB028800

Hallo,

I just know a solution if you use MATLAB. Here you need the library R.matlab and there the functions writeMat and readMat. You can download the package on CRAN.

Corinna

**************************************************************************
Corinna Schmitt, Dipl.Inf.(Bioinformatik)
Fraunhofer Institut f�r Grenzfl�chen- & Bioverfahrenstechnik
Nobelstrasse 12, B 3.24
70569 Stuttgart
Germany

phone: +49 711 9704044
fax: +49 711 9704200
e-mail: Corinna.Schmitt@igb.fraunhofer.de
http://www.igb.fraunhofer.de



  


-----Urspr�ngliche Nachricht-----
Von: r-help-bounces@stat.math.ethz.ch [mailto:r-help-bounces@stat.math.ethz.ch] Im Auftrag von Zhang Jian
Gesendet: Freitag, 22. Juni 2007 23:26
An: r-help
Betreff: [R] How to run "mathematica" or "c" programs in R?

I have some programs which were writen in mathematica or c language, but I
donot know how to use these software. So I want to run them in R.
Can I do it ?
How to run "mathematica" or "c" programs in R?

Jian Zhang

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

ctc]3