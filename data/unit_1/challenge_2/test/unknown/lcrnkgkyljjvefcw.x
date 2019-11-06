From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 13:03:27 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BH3QL9016590
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 13:03:27 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BH2gpo013888;
	Mon, 11 Jun 2007 19:02:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mulnx12.mcs.muohio.edu (mulnx12.mcs.muohio.edu [134.53.6.67])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BH2Zh1013860
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 19:02:36 +0200
Received: from mulnx23.mcs.muohio.edu (mulnx23.mcs.muohio.edu [134.53.6.10])
	by mulnx12.mcs.muohio.edu (Switch-3.1.8/Switch-3.1.7) with ESMTP id
	l5BH2XnP022639; Mon, 11 Jun 2007 13:02:33 -0400
Received: from [134.53.9.89] (ip-134-53-9-89.dhcp.muohio.edu [134.53.9.89])
	by mulnx23.mcs.muohio.edu (Switch-3.1.8/Switch-3.1.7) with ESMTP id
	l5BH2XLC002505; Mon, 11 Jun 2007 13:02:33 -0400
In-Reply-To: <466D7DE9.2030205@pdf.com>
References: <4666A5D0.896D.005E.0@hsph.harvard.edu>
	<4666A910.896D.005E.0@hsph.harvard.edu> <46695EC8.2090602@pdf.com>
	<466D3605.896D.005E.0@hsph.harvard.edu>
	<2B0CABC4-17EB-40B8-ADCD-BB94597D1570@MUOhio.edu>
	<466D7DE9.2030205@pdf.com>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <B2B31B13-CEF9-4E51-B19D-4B694818AFAB@muohio.edu>
From: "Martin Henry H. Stevens" <HStevens@muohio.edu>
Date: Mon, 11 Jun 2007 13:02:32 -0400
To: Spencer Graves <spencer.graves@pdf.com>
X-Mailer: Apple Mail (2.752.2)
X-Scanned-By: MIMEDefang 2.57 on 134.53.6.67
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: Jeremy Goldhaber-Fiebert <JGOLDHAB@hsph.harvard.edu>,
   R-Help <r-help@stat.math.ethz.ch>, Setzer.Woodrow@epamail.epa.gov
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

Hi Spencer,
I have copied Woody Setzer. I have no idea whether lsoda can estimate  
parameters that could take imaginary values.
Hank
On Jun 11, 2007, at 12:52 PM, Spencer Graves wrote:

> <in line>
>
> Martin Henry H. Stevens wrote:
>> Hi Jeremy,
>> First, setting hmax to a small number could prevent a large step, if
>> you think that is a problem. Second, however, I don't see how you can
>> get a negative population size when using the log trick.
> SG:  Can lsoda estimate complex or imaginary parameters?
Hmm. I have no idea.
>
>> I would think that that would prevent completely any negative values
>> of N (i.e. e^-100000 > 0). Can you explain? or do you want to a void
>> that trick? The only other solver I know of is rk4 and it is not
>> recommended.
>> Hank
>> On Jun 11, 2007, at 11:46 AM, Jeremy Goldhaber-Fiebert wrote:
>>
>>> Hi Spencer,
>>>
>>> Thank you for your response. I also did not see anything on the  
>>> lsoda
>>> help page which is the reason that I wrote to the list.
>>>
>>>> From your response, I am not sure if I asked my question clearly.
>>>
>>> I am modeling a group of people (in a variety of health states)
>>> moving through time (and getting infected with an infectious
>>> disease). This means that the count of the number of people in each
>>> state should be positive at all times.
>>>
>>> What appears to happen is that lsoda asks for a derivative at a  
>>> given
>>> point in time t and then adjusts the state of the population.
>>> However, perhaps due to numerical instability, it occasionally lower
>>> the population count below 0 for one of the health states (perhaps
>>> because it's step size is too big or something).
>>>
>>> I have tried both the logarithm trick
> <snip>
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting- 
> guide.html
> and provide commented, minimal, self-contained, reproducible code.



Dr. Hank Stevens, Assistant Professor
338 Pearson Hall
Botany Department
Miami University
Oxford, OH 45056

Office: (513) 529-4206
Lab: (513) 529-4262
FAX: (513) 529-4243
http://www.cas.muohio.edu/~stevenmh/
http://www.muohio.edu/ecology/
http://www.muohio.edu/botany/

"E Pluribus Unum"

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

 s0rotnp3"-