From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 03:21:51 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l587LnhB012103
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 03:21:50 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l587L3BG010533;
	Fri, 8 Jun 2007 09:21:17 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME, STOX_REPLY_TYPE autolearn=no version=3.2.0
Received: from thumbler.kulnet.kuleuven.ac.be (thumbler.kulnet.kuleuven.ac.be
	[134.58.240.45])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l587Kr21010506
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 09:20:53 +0200
Received: from localhost (localhost [127.0.0.1])
	by thumbler.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 3A0BE138360; Fri,  8 Jun 2007 09:20:53 +0200 (CEST)
Received: from smtps01.kuleuven.be (smtpshost01.kulnet.kuleuven.be
	[134.58.240.74])
	by thumbler.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 07139138263; Fri,  8 Jun 2007 09:20:52 +0200 (CEST)
Received: from smtps01.kuleuven.be (localhost [127.0.0.1])
	by smtps01.kuleuven.be (Postfix) with ESMTP id 8BD2031E703;
	Fri,  8 Jun 2007 09:20:51 +0200 (CEST)
Received: from PC178 (pc-10-33-64-5.med.kuleuven.ac.be [10.33.64.5])
	by smtps01.kuleuven.be (Postfix) with SMTP id 801AA31E702;
	Fri,  8 Jun 2007 09:20:51 +0200 (CEST)
Message-ID: <007301c7a99d$a4593da0$0540210a@www.domain>
X-Kuleuven: This mail passed the K.U.Leuven mailcluster
From: "Dimitris Rizopoulos" <dimitris.rizopoulos@med.kuleuven.be>
To: =?iso-8859-1?Q?Gunther_H=F6ning?= <gunther.hoening@ukmainz.de>
References: <000c01c7a965$d81ae220$0300a8c0@Vaio>
	<000001c7a99a$79d46990$0f1e0b0a@3med.klinik.unimainz.de>
Date: Fri, 8 Jun 2007 09:21:33 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Sorting dataframe by different columns
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l587LnhB012103

probably the function sort.data.frame() posted in R-help some time ago 
can be useful; check:

RSiteSearch("sort.data.frame")


I hope it helps.

Best,
Dimitris

----
Dimitris Rizopoulos
Ph.D. Student
Biostatistical Centre
School of Public Health
Catholic University of Leuven

Address: Kapucijnenvoer 35, Leuven, Belgium
Tel: +32/(0)16/336899
Fax: +32/(0)16/337015
Web: http://med.kuleuven.be/biostat/
     http://www.student.kuleuven.be/~m0390867/dimitris.htm


----- Original Message ----- 
From: "Gunther H�ning" <gunther.hoening@ukmainz.de>
To: <r-help@stat.math.ethz.ch>
Sent: Friday, June 08, 2007 8:58 AM
Subject: [R] Sorting dataframe by different columns


> Dear list,
>
> I have a very short question,
> Suggest a dataframe of four columns.
>
> df <- data.frame(w,x,y,z)
>
> I want this ordered the following way:
> first by :x, decreasing = FALSE
> and
> secondly by: z, decreasing =TRUE
>
> How can this be done ?
>
> Thanks
>
> Gunther
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 


Disclaimer: http://www.kuleuven.be/cwis/email_disclaimer.htm

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

2OS NB	 tt:o