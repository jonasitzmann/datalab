From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 10:12:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SECJL9011565
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 10:12:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SEAbKx012233;
	Thu, 28 Jun 2007 16:10:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from idmailgate1.unizh.ch (idmailgate1.unizh.ch [130.60.127.100])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SDuk4b006666
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 15:56:46 +0200
Received: from localhost (virus6.unizh.ch [130.60.127.89])
	by idmailgate1.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5SDug1Y001735; Thu, 28 Jun 2007 15:56:42 +0200
Received: from idmailgate1.unizh.ch ([130.60.127.100])
	by localhost (virus6.unizh.ch [130.60.127.89]) (amavisd-new, port 10024)
	with LMTP id 20629-15; Thu, 28 Jun 2007 15:56:39 +0200 (CEST)
Received: from [130.60.200.39] ([130.60.200.39]) (authenticated bits=0)
	by idmailgate1.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5SDubAa001656
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO);
	Thu, 28 Jun 2007 15:56:38 +0200
In-Reply-To: <4683B4F7.2060501@avignon.inra.fr>
References: <C7B7CCEB-9193-40ED-850F-0385F9C3BB5B@systbot.uzh.ch>
	<46838807.4020907@avignon.inra.fr>
	<B99519F4-41DA-4768-9E5A-0FAEEC5FB5D9@systbot.uzh.ch>
	<4683B4F7.2060501@avignon.inra.fr>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <9BA8DCF9-7D51-4A74-B94A-556EADBA8E9B@systbot.uzh.ch>
From: Birgit Lemcke <birgit.lemcke@systbot.uzh.ch>
Date: Thu, 28 Jun 2007 15:56:53 +0200
To: Jacques VESLOT <Jacques.Veslot@avignon.inra.fr>
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
Content-Type: multipart/mixed; boundary="===============0984112932=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0984112932==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 3198

Thats not the case.

I have two vectosr with a lot of NAs, but not only NAs.

But nevertheless as i saw the results are accurate.

Birgit


Am 28.06.2007 um 15:17 schrieb Jacques VESLOT:

> you may have a vector with only NA values in it...
>
> max(c(NA,NA), na.rm=3DT)
> [1] -Inf
> Warning message:
> aucun argument pour max ; -Inf est renvoy=E9
>
> Jacques VESLOT
>
> INRA - Biostatistique & Processus Spatiaux
> Site Agroparc 84914 Avignon Cedex 9, France
>
> Tel: +33 (0) 4 32 72 21 58
> Fax: +33 (0) 4 32 72 21 84
>
>
>
> Birgit Lemcke a =E9crit :
>> Thanks that was really a quick answer.
>>
>> It works but I get this warning message anyway:
>>
>> 1: kein nicht-fehlendes Argument f=FCr min; gebe Inf zur=FCck (None=20=
=20
>> not-lacking argument for min; give Inf back)
>> 2: kein nicht-fehlendes Argument f=FCr max; gebe -Inf zur=FCck
>> what does this mean?
>>
>> Greeting and thanks for your help!
>>
>> Birgit
>>
>> Am 28.06.2007 um 12:05 schrieb Jacques VESLOT:
>>
>>> sapply(1:85, function(i) eval(parse(text=3Dpaste("range(V", i, ",=20=20
>>> na.rm=3DT)", sep=3D""))))
>>>
>>> Jacques VESLOT
>>>
>>> INRA - Biostatistique & Processus Spatiaux
>>> Site Agroparc 84914 Avignon Cedex 9, France
>>>
>>> Tel: +33 (0) 4 32 72 21 58
>>> Fax: +33 (0) 4 32 72 21 84
>>>
>>>
>>>
>>> Birgit Lemcke a =E9crit :
>>>> Hello,
>>>> (Power Book G4, Mac OS X, R 2.5.0)
>>>>
>>>> I would like to repeat the function range for 85 Vectors (V1-V85).
>>>> I tried with this code:
>>>>
>>>> i<-0
>>>>  > repeat {
>>>> + i<-i+1
>>>> + if (i<85) next
>>>> + range (Vi, na.rm =3D TRUE)
>>>> + if (i=3D=3D85) break
>>>> + }
>>>>
>>>> I presume that the Vi is wrong, because in this syntax i is not=20=20
>>>> known  as a variable. But I don=B4t know how to say that it is a=20=20
>>>> variable here.
>>>> Would be nice if somebody could help me.
>>>> Perhaps I=B4m thinking too complicated and there is an easier way=20=
=20
>>>> to do  this.
>>>>
>>>> Thanks in advance
>>>>
>>>> Greetings
>>>>
>>>> Birgit
>>>>
>>>> Birgit Lemcke
>>>> Institut f=FCr Systematische Botanik
>>>> Zollikerstrasse 107
>>>> CH-8008 Z=FCrich
>>>> Switzerland
>>>> Ph: +41 (0)44 634 8351
>>>> birgit.lemcke@systbot.uzh.ch <mailto:birgit.lemcke@systbot.uzh.ch>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> [[alternative HTML version deleted]]
>>>>
>>>>=20=20=20=20
>>>> -------------------------------------------------------------------=20
>>>> -----
>>>>
>>>> ______________________________________________
>>>> R-help@stat.math.ethz.ch <mailto:R-help@stat.math.ethz.ch>=20=20
>>>> mailing list
>>>> https://stat.ethz.ch/mailman/listinfo/r-help
>>>> PLEASE do read the posting guide http://www.R-project.org/=20
>>>> posting-guide.html
>>>> and provide commented, minimal, self-contained, reproducible code.
>>>>
>>>>
>>
>> Birgit Lemcke
>> Institut f=FCr Systematische Botanik
>> Zollikerstrasse 107
>> CH-8008 Z=FCrich
>> Switzerland
>> Ph: +41 (0)44 634 8351
>> birgit.lemcke@systbot.uzh.ch <mailto:birgit.lemcke@systbot.uzh.ch>
>>
>>
>>
>>

Birgit Lemcke
Institut f=FCr Systematische Botanik
Zollikerstrasse 107
CH-8008 Z=FCrich
Switzerland
Ph: +41 (0)44 634 8351
birgit.lemcke@systbot.uzh.ch






	[[alternative HTML version deleted]]


--===============0984112932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0984112932==--

                   

Ie"aN �onu DW