From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 10:12:59 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SECuL9011573
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 10:12:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SEC0ke012889;
	Thu, 28 Jun 2007 16:12:16 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from idmailgate1.unizh.ch (idmailgate1.unizh.ch [130.60.127.100])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SEBppV012814
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 16:11:51 +0200
Received: from localhost (zilnx55.unizh.ch [130.60.127.87])
	by idmailgate1.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5SEBotH013063; Thu, 28 Jun 2007 16:11:50 +0200
Received: from idmailgate1.unizh.ch ([130.60.127.100])
	by localhost (virus4.unizh.ch [130.60.127.87]) (amavisd-new, port 10024)
	with LMTP id 12472-12; Thu, 28 Jun 2007 16:11:48 +0200 (CEST)
Received: from [130.60.200.39] ([130.60.200.39]) (authenticated bits=0)
	by idmailgate1.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5SEBlck013016
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO);
	Thu, 28 Jun 2007 16:11:48 +0200
In-Reply-To: <AAD49F46EAE3F6479E1D46428FAC31CB0181AB40@NBIE2KSRV1.nbi.bbsrc.ac.uk>
References: <C7B7CCEB-9193-40ED-850F-0385F9C3BB5B@systbot.uzh.ch>
	<AAD49F46EAE3F6479E1D46428FAC31CB0181AB40@NBIE2KSRV1.nbi.bbsrc.ac.uk>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <9E0A66CF-1F3C-4599-AE18-82870C8B91BB@systbot.uzh.ch>
From: Birgit Lemcke <birgit.lemcke@systbot.uzh.ch>
Date: Thu, 28 Jun 2007 16:12:02 +0200
To: john seers ((IFR)) <john.seers@bbsrc.ac.uk>
X-Mailer: Apple Mail (2.752.2)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R Hilfe <r-help@stat.math.ethz.ch>
Subject: Re: [R] Repeat if
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
Content-Type: multipart/mixed; boundary="===============1880854681=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1880854681==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1458

Hello John,

I tried this code. But I got only the ranges of V1 and V2 what is=20=20
easily understandable.
Do I have to write in all 85 vectors in the first line?

V<-list(a=3Dc(V1), b=3Dc(V2))

for ( i in 1:85 ) {          # 2 vectors (replace with 85 ...)
+     print(range (V[i], na.rm =3D TRUE))
+ }


sapply(1:85, function(i) eval(parse(text=3Dpaste("range(V", i, ",=20=20
na.rm=3DT)", sep=3D""))))

But thanks anyway.

Greetings

Birgit


Am 28.06.2007 um 12:23 schrieb john seers ((IFR)):

>
> Hi
>
> I think a for loop would be more what you want.
>
> Something along the lines of:
>
>
> V<-list(a=3Dc(1,2,3), b=3Dc(2,3,4)) # list of 2 vectors
>
> for ( i in 1:2 ) {          # 2 vectors (replace with 85 ...)
>     print(range (V[i], na.rm =3D TRUE))
> }
>
>
> Regards
>
> JS
>
> ---
>
> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Birgit Lemcke
> Sent: 28 June 2007 10:48
> To: R Hilfe
> Subject: [R] Repeat if
>
> Hello,
> (Power Book G4, Mac OS X, R 2.5.0)
>
> I would like to repeat the function range for 85 Vectors (V1-V85).
> I tried with this code:
>
> i<-0
>> repeat {
> + i<-i+1
> + if (i<85) next
> + range (Vi, na.rm =3D TRUE)
> + if (i=3D=3D85) break
> + }

Birgit Lemcke
Institut f=FCr Systematische Botanik
Zollikerstrasse 107
CH-8008 Z=FCrich
Switzerland
Ph: +41 (0)44 634 8351
birgit.lemcke@systbot.uzh.ch






	[[alternative HTML version deleted]]


--===============1880854681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1880854681==--

  

j0bn