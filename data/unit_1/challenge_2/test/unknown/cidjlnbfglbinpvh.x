From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 14:55:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QItOL9016342
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 14:55:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QIsga6018557;
	Tue, 26 Jun 2007 20:55:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=AWL, BAYES_00,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from rusty.kulnet.kuleuven.ac.be (rusty.kulnet.kuleuven.ac.be
	[134.58.240.42])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QImk6b016495
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 20:48:47 +0200
Received: from localhost (localhost [127.0.0.1])
	by rusty.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 3665D1D80EB; Tue, 26 Jun 2007 20:48:46 +0200 (CEST)
Received: from smtps02.kuleuven.be (smtpshost02.kulnet.kuleuven.be
	[134.58.240.75]) by rusty.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 07E4A1D8146; Tue, 26 Jun 2007 20:48:45 +0200 (CEST)
Received: from smtps02.kuleuven.be (localhost [127.0.0.1])
	by smtps02.kuleuven.be (Postfix) with ESMTP id BBDF6F3863;
	Tue, 26 Jun 2007 20:48:44 +0200 (CEST)
Received: from webmail2.cc.kuleuven.ac.be (webmail2.cc.kuleuven.ac.be
	[134.58.242.4])
	by smtps02.kuleuven.be (Postfix) with ESMTP id B2114F3862;
	Tue, 26 Jun 2007 20:48:44 +0200 (CEST)
Received: by webmail2.cc.kuleuven.ac.be (Postfix, from userid 65534)
	id 22A761A98C5; Tue, 26 Jun 2007 20:48:40 +0200 (CEST)
Received: from 10-91-193-229.kotnet.org (10-91-193-229.kotnet.org
	[10.91.193.229]) by webmail4.kuleuven.be (Horde MIME library) with HTTP;
	Tue, 26 Jun 2007 20:48:40 +0200
Message-ID: <20070626204840.nu35qzrf0o3s4cwk@webmail4.kuleuven.be>
Date: Tue, 26 Jun 2007 20:48:40 +0200
X-Kuleuven: This mail passed the K.U.Leuven mailcluster
From: Dimitris Rizopoulos <Dimitris.Rizopoulos@med.kuleuven.be>
To: Van Campenhout Bjorn <bjorn.vancampenhout@ua.ac.be>
References: <0EE866100C01984EAE6AC3AE56EDFE5355A728@xmail05.ad.ua.ac.be>
In-Reply-To: <0EE866100C01984EAE6AC3AE56EDFE5355A728@xmail05.ad.ua.ac.be>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Internet Messaging Program (IMP) H3 (4.1.2)
X-Originating-IP: 10.91.193.229
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5QImk6b016495
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] create matrix from comparing two vectors
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

test <- 1:10
fac <- c(3, 6, 9)

outer(test, fac, "<") * 1


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


Quoting Van Campenhout Bjorn <bjorn.vancampenhout@ua.ac.be>:

> hi all, sorry for this basic question, I think I know I should use   
> ?apply, but it is really confusing me...
>
> I want to create a matrix by comparing two vectors.  Eg:
>
> test<-seq(1:10)
> fac<-c(3,6,9)
>
> and i want to end up with a 10*3 matrix with a boolean that tests if  
>  test<fac, so something like:
>
> 1 1 1
> 1 1 1
> 0 1 1
> 0 1 1
> 0 1 1
> 0 0 1
> 0 0 1
> 0 0 1
> 0 0 0
> 0 0 0
>
> I can't find the solution without using a loop...
>
> B
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

       

i3Tld@c4zokb