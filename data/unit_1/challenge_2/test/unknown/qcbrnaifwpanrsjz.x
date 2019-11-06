From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:43:56 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PChoLF028378
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:43:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5N7fAfW008849;
	Sat, 23 Jun 2007 09:41:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5N7f00E008776
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Sat, 23 Jun 2007 09:41:01 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I20Es-0000Wg-Rr
	for r-help@stat.math.ethz.ch; Sat, 23 Jun 2007 00:40:58 -0700
Message-ID: <11264004.post@talk.nabble.com>
Date: Sat, 23 Jun 2007 00:40:58 -0700 (PDT)
From: Mike Meredith <mmeredith@wcs.org>
To: r-help@stat.math.ethz.ch
In-Reply-To: <cdf817830706220820k7db2f82dv3e2a2e7d7a39ff69@mail.gmail.com>
MIME-Version: 1.0
X-Nabble-From: mmeredith@wcs.org
References: <cdf817830706220758r10e93178x971a53e574e9488d@mail.gmail.com>
	<cdf817830706220820k7db2f82dv3e2a2e7d7a39ff69@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] how to ave this?
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



The simplest solution in this case would be:

(x[[1]] + x[[2]])/2

But that approach would get messy with >2 matrices in your list. Maybe
change your list to an array, then use 'apply':

n <- length(x)
y <- array(unlist(x), c(3,2,n))
apply(y, 1:2, mean)

HTH, Mike


Weiwei Shi wrote:
> 
> one of my approaches is:
> 
> x0 = sapply(mylist, cbind)
> 
> and manipulate from x0 (x0[1:nrow(x0)/2, ] correponds to fc and the
> lower part is tt.
> 
> but it is not neat way.
> 
> 
> On 6/22/07, Weiwei Shi <helprhelp@gmail.com> wrote:
>> Hi,
>>
>> I have a list that looks like this:
>> [[1]]
>>              fc          tt
>> 50   0.07526882 0.000000000
>> 100  0.09289617 0.000000000
>> 150  0.12359551 0.000000000
>>
>> [[2]]
>>              fc          tt
>> 50   0.02040816 0.000000000
>> 100  0.03626943 0.005025126
>> 150  0.05263158 0.010101010
>>
>> and I am wondering how to "average" it so that I have one matrix t0 at
>> the end, and t0[1,1] = (0.075..+0.0204..)/2
>>
>> Thanks,
>>
>> --
>> Weiwei Shi, Ph.D
>> Research Scientist
>> GeneGO, Inc.
>>
>> "Did you always know?"
>> "No, I did not. But I believed..."
>> ---Matrix III
>>
> 
> 
> -- 
> Weiwei Shi, Ph.D
> Research Scientist
> GeneGO, Inc.
> 
> "Did you always know?"
> "No, I did not. But I believed..."
> ---Matrix III
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 

-- 
View this message in context: http://www.nabble.com/how-to-ave-this--tf3965210.html#a11264004
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

.7b-