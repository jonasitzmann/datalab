From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 12:55:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BGtAL9016510
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 12:55:11 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BGseOf010886;
	Mon, 11 Jun 2007 18:54:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from postrelay-2.pdf.com (postrelay-2.pdf.com [209.128.81.153])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BGsRNk010835
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 18:54:28 +0200
Received: from postbox.pdf.com (postbox.pdf.com [10.10.8.7])
	by postrelay-2.pdf.com (Switch-3.2.5/Switch-3.2.5) with ESMTP id
	l5BGtVI7004348; Mon, 11 Jun 2007 09:55:31 -0700
Received: from malt.pdf.com (malt.pdf.com [10.10.8.80])
	by postbox.pdf.com (Switch-3.2.6/Switch-3.2.6) with ESMTP id
	l5BGsNJl018894
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 11 Jun 2007 09:54:24 -0700
Received: from [10.10.10.22] (sjc-10-10-10-22.pdf.com [10.10.10.22])
	by malt.pdf.com (8.12.11/8.12.11) with ESMTP id l5BGsNQK030902;
	Mon, 11 Jun 2007 09:54:23 -0700
Message-ID: <466D7DE9.2030205@pdf.com>
Date: Mon, 11 Jun 2007 09:52:57 -0700
From: Spencer Graves <spencer.graves@pdf.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: "Martin Henry H. Stevens" <HStevens@muohio.edu>
References: <4666A5D0.896D.005E.0@hsph.harvard.edu>
	<4666A910.896D.005E.0@hsph.harvard.edu> <46695EC8.2090602@pdf.com>
	<466D3605.896D.005E.0@hsph.harvard.edu>
	<2B0CABC4-17EB-40B8-ADCD-BB94597D1570@MUOhio.edu>
In-Reply-To: <2B0CABC4-17EB-40B8-ADCD-BB94597D1570@MUOhio.edu>
X-Spam: Internal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: Jeremy Goldhaber-Fiebert <JGOLDHAB@hsph.harvard.edu>,
   r-help@stat.math.ethz.ch
Subject: Re: [R] Fwd: Using odesolve to produce non-negative solutions
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

<in line>

Martin Henry H. Stevens wrote:
> Hi Jeremy,
> First, setting hmax to a small number could prevent a large step, if 
> you think that is a problem. Second, however, I don't see how you can 
> get a negative population size when using the log trick. 
SG:  Can lsoda estimate complex or imaginary parameters? 

> I would think that that would prevent completely any negative values 
> of N (i.e. e^-100000 > 0). Can you explain? or do you want to a void 
> that trick? The only other solver I know of is rk4 and it is not 
> recommended.
> Hank
> On Jun 11, 2007, at 11:46 AM, Jeremy Goldhaber-Fiebert wrote:
>
>> Hi Spencer,
>>
>> Thank you for your response. I also did not see anything on the lsoda 
>> help page which is the reason that I wrote to the list.
>>
>>> From your response, I am not sure if I asked my question clearly.
>>
>> I am modeling a group of people (in a variety of health states) 
>> moving through time (and getting infected with an infectious 
>> disease). This means that the count of the number of people in each 
>> state should be positive at all times.
>>
>> What appears to happen is that lsoda asks for a derivative at a given 
>> point in time t and then adjusts the state of the population. 
>> However, perhaps due to numerical instability, it occasionally lower 
>> the population count below 0 for one of the health states (perhaps 
>> because it's step size is too big or something).
>>
>> I have tried both the logarithm trick
<snip>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

dcoybZsioHd"1W