From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 07:58:41 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TBweL9025252
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 07:58:41 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TBv8PO022947;
	Fri, 29 Jun 2007 13:57:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from idmailgate1.unizh.ch (idmailgate1.unizh.ch [130.60.127.100])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TBjSLJ018634
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 13:45:29 +0200
Received: from localhost (zilnx53.unizh.ch [130.60.127.85])
	by idmailgate1.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5TBjMkR027159; Fri, 29 Jun 2007 13:45:22 +0200
Received: from idmailgate1.unizh.ch ([130.60.127.100])
	by localhost (virus2.unizh.ch [130.60.127.85]) (amavisd-new, port 10024)
	with LMTP id 28268-19; Fri, 29 Jun 2007 13:45:19 +0200 (CEST)
Received: from [130.60.200.39] ([130.60.200.39]) (authenticated bits=0)
	by idmailgate1.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5TBjIB9027113
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO);
	Fri, 29 Jun 2007 13:45:19 +0200
In-Reply-To: <468394EF.50704@bitwrit.com.au>
References: <C7B7CCEB-9193-40ED-850F-0385F9C3BB5B@systbot.uzh.ch>
	<468394EF.50704@bitwrit.com.au>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <B56CDA79-AAFE-47FA-8076-15E293B43F3D@systbot.uzh.ch>
From: Birgit Lemcke <birgit.lemcke@systbot.uzh.ch>
Date: Fri, 29 Jun 2007 13:45:35 +0200
To: Jim Lemon <jim@bitwrit.com.au>
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
Content-Type: multipart/mixed; boundary="===============1914389642=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1914389642==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1306

Hello Jim,

thanks for your answer. At the moment I am using this code:

Range0<-sapply(1:85, function(i) eval(parse(text=3Dpaste("range(V", i,=20=
=20
", na.rm=3DT)", sep=3D""))))

and it works really fine.

The code you sent me is also fine but how can I implement, that=20=20
missing values are TRUE?

Thanks a lot for your help

Birgit

Am 28.06.2007 um 13:01 schrieb Jim Lemon:

> Birgit Lemcke wrote:
>> Hello,
>> (Power Book G4, Mac OS X, R 2.5.0)
>> I would like to repeat the function range for 85 Vectors (V1-V85).
>> I tried with this code:
>> i<-0
>>  > repeat {
>> + i<-i+1
>> + if (i<85) next
>> + range (Vi, na.rm =3D TRUE)
>> + if (i=3D=3D85) break
>> + }
>> I presume that the Vi is wrong, because in this syntax i is not=20=20
>> known  as a variable. But I don=B4t know how to say that it is a=20=20
>> variable here.
>> Would be nice if somebody could help me.
>> Perhaps I=B4m thinking too complicated and there is an easier way to=20=
=20
>> do  this.
> Hi Birgit,
> This may be what you want:
>
> for(i in 1:85)
>  print(do.call("range",list(as.name(paste("V",i,sep=3D"")))))
>
> Jim
>

Birgit Lemcke
Institut f=FCr Systematische Botanik
Zollikerstrasse 107
CH-8008 Z=FCrich
Switzerland
Ph: +41 (0)44 634 8351
birgit.lemcke@systbot.uzh.ch






	[[alternative HTML version deleted]]


--===============1914389642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1914389642==--

  

eY/a R>plGl<.s0t