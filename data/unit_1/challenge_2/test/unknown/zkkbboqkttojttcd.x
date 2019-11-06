From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 06:06:34 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KA6XL9008608
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 06:06:34 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KA5vqW027439;
	Wed, 20 Jun 2007 12:06:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, STOX_REPLY_TYPE autolearn=no version=3.2.0
Received: from nibbel.kulnet.kuleuven.ac.be (nibbel.kulnet.kuleuven.ac.be
	[134.58.240.41])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5K9weCB024030
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 11:58:40 +0200
Received: from localhost (localhost [127.0.0.1])
	by nibbel.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 2067E4E08A; Wed, 20 Jun 2007 11:58:40 +0200 (CEST)
Received: from smtps01.kuleuven.be (smtpshost01.kulnet.kuleuven.be
	[134.58.240.74]) by nibbel.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 50CC84E0D1; Wed, 20 Jun 2007 11:58:39 +0200 (CEST)
Received: from smtps01.kuleuven.be (localhost [127.0.0.1])
	by smtps01.kuleuven.be (Postfix) with ESMTP id 10E7431E704;
	Wed, 20 Jun 2007 11:58:39 +0200 (CEST)
Received: from PC178 (pc-10-33-64-5.med.kuleuven.ac.be [10.33.64.5])
	by smtps01.kuleuven.be (Postfix) with SMTP id EFBFA31E703;
	Wed, 20 Jun 2007 11:58:38 +0200 (CEST)
Message-ID: <00af01c7b321$903fee30$0540210a@www.domain>
X-Kuleuven: This mail passed the K.U.Leuven mailcluster
From: "Dimitris Rizopoulos" <dimitris.rizopoulos@med.kuleuven.be>
To: "Shiazy Fuzzy" <shiazy@gmail.com>
References: <9d3ef91d0706200241v7bed53a1wa493ff01a94b749c@mail.gmail.com>
Date: Wed, 20 Jun 2007 11:58:33 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Got "Unexpected ELSE error"
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

the problem is that you start `else' on a new line; check the 
following two solutions:

if ( a ) {
    cat("TRUE", "\n")
} else {
    cat("FALSE", "\n")
}

# or

{
if ( a )
{
    cat("TRUE", "\n")
}
else
{
    cat("FALSE", "\n")
}
}


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
From: "Shiazy Fuzzy" <shiazy@gmail.com>
To: <r-help@stat.math.ethz.ch>
Sent: Wednesday, June 20, 2007 11:41 AM
Subject: [R] Got "Unexpected ELSE error"


> Dear R-users,
>
> I have a problem with the IF-ELSE syntax.
> Please look at the folllowing code and tell me what's wrong:
>
> a <- TRUE
> if ( a )
> {
>        cat("TRUE","\n")
> }
> else
> {
>        cat("FALSE","\n")
> }
>
> If I try to execute with R I get:
>     Error: syntax error, unexpected ELSE in "else"
> The strange thing is either "cat" instructions are executed!!
>
> My system is: Fedora Core 6 x86_64 + R 2.5.0 (rpm)
>
> Thank you very much in advance!!!!
>
> Regards,
>
> -- Marco
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

       

i.-]lkm