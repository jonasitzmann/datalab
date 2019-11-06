From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 03:27:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5F7R4L9030885
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 03:27:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F7PUur031975;
	Fri, 15 Jun 2007 09:25:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from nx5.hrz.uni-dortmund.de (nx5.HRZ.Uni-Dortmund.DE
	[129.217.131.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F7OkYa031851
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 09:24:47 +0200
Received: from mail.statistik.uni-dortmund.de (mail.Statistik.Uni-Dortmund.DE
	[129.217.206.4])
	by nx5.hrz.uni-dortmund.de (Postfix) with ESMTP id CCC7811FDC;
	Fri, 15 Jun 2007 09:24:46 +0200 (MET DST)
Received: from [129.217.207.201] (ligges2.fb05.statistik.uni-dortmund.de
	[129.217.207.201])
	by mail.statistik.uni-dortmund.de (Postfix) with ESMTP id B20B035C8FE; 
	Fri, 15 Jun 2007 09:24:40 +0200 (CEST)
Message-ID: <46723EB8.70308@statistik.uni-dortmund.de>
Date: Fri, 15 Jun 2007 09:24:40 +0200
From: Uwe Ligges <ligges@statistik.uni-dortmund.de>
Organization: Fachbereich Statistik, =?ISO-8859-1?Q?Universit=E4t_Dortm?=
	=?ISO-8859-1?Q?und?=
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.8.1.4) Gecko/20070509 SeaMonkey/1.1.2
MIME-Version: 1.0
To: Mario Dejung <forum@dejung.net>
References: <34232.134.93.157.71.1181824247.squirrel@webmail.ts-cs.de>
	<467149D0.1030006@statistik.uni-dortmund.de>
	<53707.134.93.157.71.1181887965.squirrel@webmail.ts-cs.de>
In-Reply-To: <53707.134.93.157.71.1181887965.squirrel@webmail.ts-cs.de>
X-FB05-MailScanner: clean
X-FB05-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (Wertung=-5.899, benoetigt 4.5, autolearn=disabled,
	ALL_TRUSTED -3.30, BAYES_00 -2.60)
X-FB05-MailScanner-From: ligges@statistik.uni-dortmund.de
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] problem with hist()
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



Mario Dejung wrote:
>>
>> Mario Dejung wrote:
>>> Hey everybody,
>>> I try to make a graph with two different plots.
>>>
>>>
>>> First I make a boxplot of my data. It is a collection off correlation
>>> values of different pictures. For example:
>>>
>>> 0.23445 pica
>>> 0.34456 pica
>>> 0.45663 pica
>>> 0.98822 picb
>>> 0.12223 picc
>>> 0.34443 picc
>>> etc.
>>>
>>> Ok, I make this boxplot and I get for every picture the boxes. After
>>> this
>>> I want to know, how many correlations per picture exist.
>>> So I make a new vector y <- as.numeric(data$picture)
>>>
>>> So I get for my example something like this:
>>>
>>> y
>>> [1] 1 1 1 1 1 1 1 1 1 1
>>> [11] 1 1 1 1 1 1 1 1 2 2
>>> ...
>>> [16881] 59 59 59 60 60 60 60 60 60 60
>>>
>>> After this I make something like this
>>>
>>> boxplot(cor ~ pic)
>>> par(new = TRUE)
>>> hist(y, nclass = 60)
>>>
>>> But there is my problem. I have 60 pictures, so I get 60 different
>>> boxplots, and I want the hist behind the boxes. But it makes only 59
>>> histbars.
>>>
>>> What can I do? I tried also
>>> hist(y, 1:60) # same effect
>>> and
>>> hist(y, 1:61)
>>> this give me 60 places, but only 59 bars. the last bar is 0.
>>
>> In fact, I am pretty sure you really want to have a barplot() rather
>> than a histogram. If you really want to use hist(), then perhaps hist(y,
>> 0:60).
>>
>> Uwe Ligges
>>
> Ok, it seems you are right, but I'm a beginner in R, so maybe you can help
> me a little bit more.
> 
> When I use the hist function, it automatically uses the frequency of the
> different numbers, so I will get normally 60 bars.
> 
> When I use the barplot function, then I have to count the frequency of the
> numbers. Is there a function who can do this, or should I write a function
> on my own.

You are looking for table().


> Sorry, I'm sure it is a stupid question, but maybe someone can give me a
> good reference for answers, because I am a beginner :-)

There are several manuals, books and the mailing list archives.

Uwe Ligges



> Thanks to everyone
> Mario
> 
>>
>>> I hope anyone can help me.
>>>
>>> Regards Mario
>>>
>>> ______________________________________________
>>> R-help@stat.math.ethz.ch mailing list
>>> https://stat.ethz.ch/mailman/listinfo/r-help
>>> PLEASE do read the posting guide
>>> http://www.R-project.org/posting-guide.html
>>> and provide commented, minimal, self-contained, reproducible code.
> 
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

cr59ole