From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 09:16:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SDG9L9011006
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 09:16:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SDFOKj022838;
	Thu, 28 Jun 2007 15:15:45 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from avignon.inra.fr (avignon.inra.fr [147.100.0.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SDCHU0021416
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 15:12:17 +0200
Received: from [147.100.14.162] (pcbiom82 [147.100.14.162])
	by avignon.inra.fr (/8.13.8) with ESMTP id l5SDCGE5012690;
	Thu, 28 Jun 2007 15:12:16 +0200 (CEST)
Message-ID: <4683B4F7.2060501@avignon.inra.fr>
Date: Thu, 28 Jun 2007 15:17:43 +0200
From: Jacques VESLOT <Jacques.Veslot@avignon.inra.fr>
User-Agent: Thunderbird 1.5.0.10 (X11/20070305)
MIME-Version: 1.0
To: Birgit Lemcke <birgit.lemcke@systbot.uzh.ch>
References: <C7B7CCEB-9193-40ED-850F-0385F9C3BB5B@systbot.uzh.ch>
	<46838807.4020907@avignon.inra.fr>
	<B99519F4-41DA-4768-9E5A-0FAEEC5FB5D9@systbot.uzh.ch>
In-Reply-To: <B99519F4-41DA-4768-9E5A-0FAEEC5FB5D9@systbot.uzh.ch>
X-Miltered: at avi with ID 4683B3B0.000 by Joe's j-chkmail
	(http://j-chkmail.ensmp.fr)!
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-1.6
	(avignon.inra.fr [147.100.0.1]);
	Thu, 28 Jun 2007 15:12:16 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Virus-Status: Clean
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5SDG9L9011006

you may have a vector with only NA values in it...

max(c(NA,NA), na.rm=T)
[1] -Inf
Warning message:
aucun argument pour max ; -Inf est renvoy�

Jacques VESLOT

INRA - Biostatistique & Processus Spatiaux
Site Agroparc 84914 Avignon Cedex 9, France

Tel: +33 (0) 4 32 72 21 58
Fax: +33 (0) 4 32 72 21 84



Birgit Lemcke a �crit :
> Thanks that was really a quick answer.
>
> It works but I get this warning message anyway:
>
> 1: kein nicht-fehlendes Argument f�r min; gebe Inf zur�ck (None 
> not-lacking argument for min; give Inf back)
> 2: kein nicht-fehlendes Argument f�r max; gebe -Inf zur�ck 
>
> what does this mean?
>
> Greeting and thanks for your help!
>
> Birgit
>
> Am 28.06.2007 um 12:05 schrieb Jacques VESLOT:
>
>> sapply(1:85, function(i) eval(parse(text=paste("range(V", i, ", 
>> na.rm=T)", sep=""))))
>>
>> Jacques VESLOT
>>
>> INRA - Biostatistique & Processus Spatiaux
>> Site Agroparc 84914 Avignon Cedex 9, France
>>
>> Tel: +33 (0) 4 32 72 21 58
>> Fax: +33 (0) 4 32 72 21 84
>>
>>
>>
>> Birgit Lemcke a �crit :
>>> Hello,
>>> (Power Book G4, Mac OS X, R 2.5.0)
>>>
>>> I would like to repeat the function range for 85 Vectors (V1-V85).
>>> I tried with this code:
>>>
>>> i<-0
>>>  > repeat {
>>> + i<-i+1
>>> + if (i<85) next
>>> + range (Vi, na.rm = TRUE)
>>> + if (i==85) break
>>> + }
>>>
>>> I presume that the Vi is wrong, because in this syntax i is not 
>>> known  as a variable. But I don�t know how to say that it is a 
>>> variable here.
>>> Would be nice if somebody could help me.
>>> Perhaps I�m thinking too complicated and there is an easier way to 
>>> do  this.
>>>
>>> Thanks in advance
>>>
>>> Greetings
>>>
>>> Birgit
>>>
>>> Birgit Lemcke
>>> Institut f�r Systematische Botanik
>>> Zollikerstrasse 107
>>> CH-8008 Z�rich
>>> Switzerland
>>> Ph: +41 (0)44 634 8351
>>> birgit.lemcke@systbot.uzh.ch <mailto:birgit.lemcke@systbot.uzh.ch>
>>>
>>>
>>>
>>>
>>>
>>>
>>> [[alternative HTML version deleted]]
>>>
>>>   
>>> ------------------------------------------------------------------------
>>>
>>> ______________________________________________
>>> R-help@stat.math.ethz.ch <mailto:R-help@stat.math.ethz.ch> mailing list
>>> https://stat.ethz.ch/mailman/listinfo/r-help
>>> PLEASE do read the posting guide 
>>> http://www.R-project.org/posting-guide.html
>>> and provide commented, minimal, self-contained, reproducible code.
>>>
>>>   
>>>
>
> Birgit Lemcke
> Institut f�r Systematische Botanik
> Zollikerstrasse 107
> CH-8008 Z�rich
> Switzerland
> Ph: +41 (0)44 634 8351
> birgit.lemcke@systbot.uzh.ch <mailto:birgit.lemcke@systbot.uzh.ch>
>  
>
>
>
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



ROW0n 6=cnMh+i