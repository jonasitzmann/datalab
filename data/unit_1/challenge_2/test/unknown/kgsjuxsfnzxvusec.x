From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 15:31:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FJVLL9005952
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 15:31:26 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FJUCIj023254;
	Fri, 15 Jun 2007 21:30:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp803.mail.ird.yahoo.com (smtp803.mail.ird.yahoo.com
	[217.146.188.63])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5FJPLtX021229
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 21:25:28 +0200
Received: (qmail 91100 invoked from network); 15 Jun 2007 19:25:21 -0000
Received: from unknown (HELO ?192.168.2.2?)
	(robertsonburns@btinternet.com@86.142.29.68 with plain)
	by smtp803.mail.ird.yahoo.com with SMTP; 15 Jun 2007 19:25:20 -0000
X-YMail-OSG: b8AEY5UVM1lDhfSsnNlDsJB_KFWbZHDmGPlsev_wCj1hdlSrQ9ZOUpuIF0hyMYZJihI9Q9wDGKEObWFEkMAxDEhqNS8e_Sq3tsfVxGQS6rPIKTlj
Message-ID: <4672E7A0.3040704@pburns.seanet.com>
Date: Fri, 15 Jun 2007 20:25:20 +0100
From: Patrick Burns <pburns@pburns.seanet.com>
User-Agent: Mozilla Thunderbird 1.0.7 (Windows/20050923)
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: jim holtman <jholtman@gmail.com>
References: <765851.84492.qm@web63904.mail.re1.yahoo.com>
	<644e1f320706151147q3ec347ady8641012cb056340d@mail.gmail.com>
In-Reply-To: <644e1f320706151147q3ec347ady8641012cb056340d@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, new ruser <newruser@yahoo.com>
Subject: Re: [R] removing values from a vector,
 where both the value and its name are the same?
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

In case it matters, the given solution has a problem if the
data look like:

x <- c(sum=77, test=99, sum=99)

By the description all three elements should be kept, but
the duplicated solution throws out the last element.  A more
complicated solution is:

unique(data.frame(x, names(x)))

(and then put the vector back together again).

Patrick Burns
patrick@burns-stat.com
+44 (0)20 8525 0696
http://www.burns-stat.com
(home of S Poetry and "A Guide for the Unwilling S User")

jim holtman wrote:

>try this:
>
>  
>
>>x[!(duplicated(names(x))&duplicated(x))]
>>    
>>
>  sum   min   max count count  test
>   77     4     9     5     8    77
>
>
>
>On 6/15/07, new ruser <newruser@yahoo.com> wrote:
>  
>
>>I have an array such as:
>>
>>x=c(sum=77, min=4,max=9, count=5, min=4,max=9, count=8 ,  test=77)
>>
>>I wish to remove values where both the name and the value are identical.
>>
>>eg. i wish to end up with:
>>x2=c(sum=77, min=4,max=9, count=5, count=8, test=77)
>>
>>What is the "best" way to do this?
>>
>>
>>---------------------------------
>>Park yourself in front of a world of choices in alternative vehicles.
>>
>>       [[alternative HTML version deleted]]
>>
>>______________________________________________
>>R-help@stat.math.ethz.ch mailing list
>>https://stat.ethz.ch/mailman/listinfo/r-help
>>PLEASE do read the posting guide
>>http://www.R-project.org/posting-guide.html
>>and provide commented, minimal, self-contained, reproducible code.
>>
>>    
>>
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

                   

z stn7