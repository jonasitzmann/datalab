From r-help-bounces@stat.math.ethz.ch  Sun Jun 10 04:59:34 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5A8xXL9000735
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 10 Jun 2007 04:59:34 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5A8wvRI026703;
	Sun, 10 Jun 2007 10:59:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=AWL, BAYES_05,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from rusty.kulnet.kuleuven.ac.be (rusty.kulnet.kuleuven.ac.be
	[134.58.240.42])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5A8wqTX026674
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 10:58:52 +0200
Received: from localhost (localhost [127.0.0.1])
	by rusty.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 1662A1D774A; Sun, 10 Jun 2007 10:58:52 +0200 (CEST)
Received: from smtps02.kuleuven.be (smtpshost02.kulnet.kuleuven.be
	[134.58.240.75]) by rusty.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 149B11D76DB; Sun, 10 Jun 2007 10:58:50 +0200 (CEST)
Received: from smtps02.kuleuven.be (localhost [127.0.0.1])
	by smtps02.kuleuven.be (Postfix) with ESMTP id C1794F3863;
	Sun, 10 Jun 2007 10:58:49 +0200 (CEST)
Received: from webmail5.cc.kuleuven.be (webmail5.cc.kuleuven.be
	[134.58.242.52])
	by smtps02.kuleuven.be (Postfix) with ESMTP id B76D2F3862;
	Sun, 10 Jun 2007 10:58:49 +0200 (CEST)
Received: by webmail5.cc.kuleuven.be (Postfix, from userid 65534)
	id D02374C7A; Sun, 10 Jun 2007 10:58:49 +0200 (CEST)
Received: from 10-91-193-229.kotnet.org (10-91-193-229.kotnet.org
	[10.91.193.229]) by webmail5.kuleuven.be (Horde MIME library) with HTTP;
	Sun, 10 Jun 2007 10:58:49 +0200
Message-ID: <20070610105849.eb3hbm026b34oc48@webmail5.kuleuven.be>
Date: Sun, 10 Jun 2007 10:58:49 +0200
X-Kuleuven: This mail passed the K.U.Leuven mailcluster
From: Dimitris Rizopoulos <Dimitris.Rizopoulos@med.kuleuven.be>
To: gallon li <gallon.li@gmail.com>
References: <54f7e7c30706100145tbc893bawb79f43bed1af0d64@mail.gmail.com>
In-Reply-To: <54f7e7c30706100145tbc893bawb79f43bed1af0d64@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Internet Messaging Program (IMP) H3 (4.1.2)
X-Originating-IP: 10.91.193.229
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5A8wqTX026674
Cc: r-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] find position
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

try this:

which(a == 0.4)[1]


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


Quoting gallon li <gallon.li@gmail.com>:

> find the position of the first value who equals certain number in a vector:
>
> Say a=c(0,0,0,0,0.2, 0.2, 0.4,0.4,0.5)
>
> i wish to return the index value in a for which the value in the vector is
> equal to 0.4 for the first time. in this case, it is 7.
>
> 	[[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>



Disclaimer: http://www.kuleuven.be/cwis/email_disclaimer.htm

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    


IeTSdop