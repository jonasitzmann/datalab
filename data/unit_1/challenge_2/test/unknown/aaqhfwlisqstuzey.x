From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 07:28:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GBSBL9013261
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 07:28:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GBR6sw029797;
	Sat, 16 Jun 2007 13:27:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_20,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from smtpout.eastlink.ca (smtpout.eastlink.ca [24.222.0.30])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GBQSuc029588
	for <R-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 13:26:28 +0200
Received: from ip04.eastlink.ca ([24.222.10.20])
	by mta01.eastlink.ca (Sun Java System Messaging Server 6.2-4.03 (built
	Sep 22 2005)) with ESMTP id <0JJQ00GCY7S32361@mta01.eastlink.ca> for
	R-help@stat.math.ethz.ch; Sat, 16 Jun 2007 08:26:27 -0300 (ADT)
Received: from blk-137-76-84.eastlink.ca (HELO [24.137.76.84]) ([24.137.76.84])
	by ip04.eastlink.ca with ESMTP; Sat, 16 Jun 2007 08:25:54 -0300
Date: Sat, 16 Jun 2007 08:26:29 -0300
From: Mike Lawrence <Mike.Lawrence@dal.ca>
In-reply-to: <07E228A5BE53C24CAD490193A7381BBBA21E77@LP-EXCHVS07.CO.IHC.COM>
To: Pedro Mardones <mardones.p@gmail.com>
Message-id: <5650E4EE-9087-4524-8048-1B907F203993@DAL.CA>
MIME-version: 1.0
X-Mailer: Apple Mail (2.752.3)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ao8CAOJlc0YYiUxU/2dsb2JhbAA
X-IronPort-AV: E=Sophos;i="4.16,429,1175482800";   d="scan'208";a="243350960"
References: <07E228A5BE53C24CAD490193A7381BBBA21E77@LP-EXCHVS07.CO.IHC.COM>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: Rhelp <R-help@stat.math.ethz.ch>
Subject: Re: [R] question about formula for lm
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

Yet another solution:

with(X,lm(get(Ytext)~Xvar))

On 14-Jun-07, at 5:18 PM, Greg Snow wrote:

>
> Try:
>
>> lm( formula( paste( Ytext, '~ Xvar' ) ), data=X)
>
> --  
> Gregory (Greg) L. Snow Ph.D.
> Statistical Data Center
> Intermountain Healthcare
> greg.snow@intermountainmail.org
> (801) 408-8111
>
>
>
>> -----Original Message-----
>> From: r-help-bounces@stat.math.ethz.ch
>> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Pedro Mardones
>> Sent: Thursday, June 14, 2007 1:14 PM
>> To: R-help@stat.math.ethz.ch
>> Subject: [R] question about formula for lm
>>
>> Dear all;
>>
>> Is there any way to make this to work?:
>>
>> .x<-rnorm(50,10,3)
>> .y<-.x+rnorm(50,0,1)
>>
>> X<-data.frame(.x,.y)
>> colnames(X)<-c("Xvar","Yvar")
>>
>> Ytext<-"Yvar"
>>
>> lm(Ytext~Xvar,data=X) # doesn't run
>>
>> lm(Yvar~Xvar,data=X) # does run
>>
>> The main idea is to use Ytext as input in a function, so you
>> just type "Yvar" and the model should fit....
>> Also, I need to avoid the expression X$Yvar~X$Xvar
>>
>> Thanks for any idea
>>
>> PM
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting- 
> guide.html
> and provide commented, minimal, self-contained, reproducible code.

--
Mike Lawrence
Graduate Student, Department of Psychology, Dalhousie University

Website: http://myweb.dal.ca/mc973993
Public calendar: http://icalx.com/public/informavore/Public

"The road to wisdom? Well, it's plain and simple to express:
Err and err and err again, but less and less and less."
	- Piet Hein

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

r�zvvMnl4 nnn6O