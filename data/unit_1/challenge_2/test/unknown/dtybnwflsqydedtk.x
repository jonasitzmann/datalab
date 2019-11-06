From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 10:13:16 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58EDBhB016235
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 10:13:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58ECHTf031715;
	Fri, 8 Jun 2007 16:12:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=AWL, BAYES_00,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from rwcrmhc11.comcast.net (rwcrmhc11.comcast.net [204.127.192.81])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58E8qpN030375
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 16:08:53 +0200
Received: from [192.168.15.198] (depot.metrg.net[70.89.4.82])
	by comcast.net (rwcrmhc11) with ESMTP
	id <20070608140851m11008v1use>; Fri, 8 Jun 2007 14:08:52 +0000
Message-ID: <466962F2.7040406@metrumrg.com>
Date: Fri, 08 Jun 2007 10:08:50 -0400
From: Tim Bergsma <timb@metrumrg.com>
Organization: Metrum Research Group, LLC
User-Agent: Thunderbird 1.5.0.10 (Windows/20070221)
MIME-Version: 1.0
To: Dimitris Rizopoulos <dimitris.rizopoulos@med.kuleuven.be>
References: <46695221.8080807@metrumrg.com>
	<00b101c7a9d1$eb46e760$0540210a@www.domain>
In-Reply-To: <00b101c7a9d1$eb46e760$0540210a@www.domain>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] logical 'or' on list of vectors
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

Thanks all for the many excellent suggestions!

!complete.cases(Theoph) is probably the most succinct form for the 
current problem, while the examples with 'any' seem readily adaptable to 
similar situations.

Kind regards,

Tim.

Dimitris Rizopoulos wrote:
> try the following:
> 
> as.logical(rowSums(is.na(Theoph)))
> ## or
> !complete.cases(Theoph)
> 
> 
> I hope it helps.
> 
> Best,
> Dimitris
> 
> ----
> Dimitris Rizopoulos
> Ph.D. Student
> Biostatistical Centre
> School of Public Health
> Catholic University of Leuven
> 
> Address: Kapucijnenvoer 35, Leuven, Belgium
> Tel: +32/(0)16/336899
> Fax: +32/(0)16/337015
> Web: http://med.kuleuven.be/biostat/
>     http://www.student.kuleuven.be/~m0390867/dimitris.htm
> 
> 
> ----- Original Message ----- From: "Tim Bergsma" <timb@metrumrg.com>
> To: <r-help@stat.math.ethz.ch>
> Sent: Friday, June 08, 2007 2:57 PM
> Subject: [R] logical 'or' on list of vectors
> 
> 
>> Suppose I have a list of logicals, such as returned by lapply:
>>
>> Theoph$Dose[1] <- NA
>> Theoph$Time[2] <- NA
>> Theoph$conc[3] <- NA
>> lapply(Theoph,is.na)
>>
>> Is there a direct way to execute logical "or" across all vectors? The
>> following gives the desired result, but seems unnecessarily complex.
>>
>> as.logical(apply(do.call("rbind",lapply(Theoph,is.na)),2,"sum"))
>>
>> Regards,
>>
>> Tim
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide 
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
> 
> 
> Disclaimer: http://www.kuleuven.be/cwis/email_disclaimer.htm
> 
> 
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

id+8df