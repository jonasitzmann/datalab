From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 04:48:26 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l548mOhB025912
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 04:48:25 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l548ldEh004369;
	Mon, 4 Jun 2007 10:47:57 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail.instnat.be (inlinux.instnat.be [193.190.203.3])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l548lUll004316
	for <r-help@stat.math.ethz.ch>; Mon, 4 Jun 2007 10:47:30 +0200
Received: from inboexch.inbo.be (mail.inbo.be [172.16.203.3])
	by mail.instnat.be (Postfix) with ESMTP id 30F2B3A7B9;
	Mon,  4 Jun 2007 12:16:07 +0200 (CEST)
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Mon, 4 Jun 2007 10:15:26 +0200
Message-ID: <2E9C414912813E4EB981326983E0A10403008953@inboexch.inbo.be>
In-Reply-To: <5dff5a0d0706031448t5e60448en5aa028b42c65a4a9@mail.gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] getting t.test to work with apply()
Thread-Index: AcemKoqAf+16wrDYShewuNvBeWfD6gAVaq9g
From: "ONKELINX, Thierry" <Thierry.ONKELINX@inbo.be>
To: "Andrew Yee" <andrewjyee@gmail.com>, <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l548lUll004316
Subject: Re: [R] getting t.test to work with apply()
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

Since you are using function(x) the apply function is passing values to
x. So you need to use x inside the function.
Try something like this:

apply(raw.sample,1,function(x){t.test(x["alive"],x["dead"])})

Cheers,

Thierry

------------------------------------------------------------------------
----
ir. Thierry Onkelinx
Instituut voor natuur- en bosonderzoek / Reseach Institute for Nature
and Forest
Cel biometrie, methodologie en kwaliteitszorg / Section biometrics,
methodology and quality assurance
Gaverstraat 4
9500 Geraardsbergen
Belgium
tel. + 32 54/436 185
Thierry.Onkelinx@inbo.be
www.inbo.be 

Do not put your faith in what statistics say until you have carefully
considered what they do not say.  ~William W. Watt
A statistical analysis, properly conducted, is a delicate dissection of
uncertainties, a surgery of suppositions. ~M.J.Moroney

 

> -----Oorspronkelijk bericht-----
> Van: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] Namens Andrew Yee
> Verzonden: zondag 3 juni 2007 23:49
> Aan: r-help@stat.math.ethz.ch
> Onderwerp: [R] getting t.test to work with apply()
> 
> Hi, I'm interested in using apply() with t.test() on a data.frame.
> 
> Specifically, I'd like to use apply() to do the following:
> 
>  t.test(raw.sample[1,alive],raw.sample[1,dead])
> t.test(raw.sample[2,alive],raw.sample[2,dead])
>  t.test(raw.sample[3,alive],raw.sample[3,dead])
> etc.
> 
> I tried the following,
> 
> apply(raw.sample,1,function(x) 
> t.test(raw.sample[,alive],raw.sample[,dead]))
> 
> but it gives me a list of identical results.
> 
> 
> Thanks,
> Andrew
> 
> 	[[alternative HTML version deleted]]
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

2-mn i