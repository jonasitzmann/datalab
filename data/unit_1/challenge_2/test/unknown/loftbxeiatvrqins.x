From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 10:19:41 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SEJXL9011659
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 10:19:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SEIShP015803;
	Thu, 28 Jun 2007 16:18:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from idmailgate2.unizh.ch (idmailgate2.unizh.ch [130.60.127.101])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SDxjd7007634
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 15:59:45 +0200
Received: from localhost (virus6.unizh.ch [130.60.127.89])
	by idmailgate2.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5SDw8nG006956; Thu, 28 Jun 2007 15:58:08 +0200
Received: from idmailgate2.unizh.ch ([130.60.127.101])
	by localhost (virus6.unizh.ch [130.60.127.89]) (amavisd-new, port 10024)
	with LMTP id 17237-17; Thu, 28 Jun 2007 15:58:04 +0200 (CEST)
Received: from [130.60.200.39] ([130.60.200.39]) (authenticated bits=0)
	by idmailgate2.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5SDw3qY006888
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO);
	Thu, 28 Jun 2007 15:58:04 +0200
In-Reply-To: <46838D00.7000805@pburns.seanet.com>
References: <C7B7CCEB-9193-40ED-850F-0385F9C3BB5B@systbot.uzh.ch>
	<46838D00.7000805@pburns.seanet.com>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <CE8D550C-CD33-473E-BF55-AE7092D8298E@systbot.uzh.ch>
From: Birgit Lemcke <birgit.lemcke@systbot.uzh.ch>
Date: Thu, 28 Jun 2007 15:58:18 +0200
To: Patrick Burns <pburns@pburns.seanet.com>
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
Content-Type: multipart/mixed; boundary="===============0817229398=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0817229398==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 2551

Hello Patrick,

this does not work and gives following warning message:

for(i in 1:85) range(get(paste("V", i, sep=3D"")), na.rm=3DTRUE)
Warning messages:
1: kein nicht-fehlendes Argument f=FCr min; gebe Inf zur=FCck
2: kein nicht-fehlendes Argument f=FCr max; gebe -Inf zur=FCck

This works but also with the warning message:

Vranges <- array(NA, c(85, 2))
for(i in 1:85) Vranges[i,] <- range(get(paste("V", i, sep=3D"")),=20=20
na.rm=3DTRUE)


Greetings

Birgit


Am 28.06.2007 um 12:27 schrieb Patrick Burns:

> In your code the 'range' call is only seen when i is 85.
> I think the following is what you want:
>
> for(i in 1:85) range(get(paste("V", i, sep=3D"")), na.rm=3DTRUE)
>
> Except that nothing is done with the results of 'range'.  More
> likely is:
>
> Vranges <- array(NA, c(85, 2))
> for(i in 1:85) Vranges[i,] <- range(get(paste("V", i, sep=3D"")),=20=20
> na.rm=3DTRUE)
>
> See S Poetry for details.
>
> Patrick Burns
> patrick@burns-stat.com
> +44 (0)20 8525 0696
> http://www.burns-stat.com
> (home of S Poetry and "A Guide for the Unwilling S User")
>
> Birgit Lemcke wrote:
>
>> Hello,
>> (Power Book G4, Mac OS X, R 2.5.0)
>>
>> I would like to repeat the function range for 85 Vectors (V1-V85).
>> I tried with this code:
>>
>> i<-0
>> > repeat {
>> + i<-i+1
>> + if (i<85) next
>> + range (Vi, na.rm =3D TRUE)
>> + if (i=3D=3D85) break
>> + }
>>
>> I presume that the Vi is wrong, because in this syntax i is not=20=20
>> known  as a variable. But I don=B4t know how to say that it is a=20=20
>> variable here.
>> Would be nice if somebody could help me.
>> Perhaps I=B4m thinking too complicated and there is an easier way to=20=
=20
>> do  this.
>>
>> Thanks in advance
>>
>> Greetings
>>
>> Birgit
>>
>> Birgit Lemcke
>> Institut f=FCr Systematische Botanik
>> Zollikerstrasse 107
>> CH-8008 Z=FCrich
>> Switzerland
>> Ph: +41 (0)44 634 8351
>> birgit.lemcke@systbot.uzh.ch
>>
>>
>>
>>
>>
>>
>> 	[[alternative HTML version deleted]]
>>
>>
>> ---------------------------------------------------------------------=20
>> ---
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide http://www.R-project.org/posting-=20
>> guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>

Birgit Lemcke
Institut f=FCr Systematische Botanik
Zollikerstrasse 107
CH-8008 Z=FCrich
Switzerland
Ph: +41 (0)44 634 8351
birgit.lemcke@systbot.uzh.ch






	[[alternative HTML version deleted]]


--===============0817229398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0817229398==--

             

+pdZ?,