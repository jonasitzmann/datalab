From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 12:16:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JGGKL9031411
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 12:16:21 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JGFeg5027068;
	Tue, 19 Jun 2007 18:15:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pantheon-po06.its.yale.edu (pantheon-po06.its.yale.edu
	[130.132.50.36])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JGFPdO026981
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 18:15:31 +0200
Received: from [130.132.156.121] (forestryroam04.cluster.yale.edu
	[130.132.156.121]) (authenticated bits=0)
	by pantheon-po06.its.yale.edu (8.12.11.20060308/8.12.11) with ESMTP id
	l5JGFNEW026662
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NOT);
	Tue, 19 Jun 2007 12:15:23 -0400
In-Reply-To: <815b70590706190910s40fe368wcb0102d107ea0cd1@mail.gmail.com>
References: <D79FB99C-641D-4D98-B2A7-13B00C23A312@yale.edu>
	<815b70590706190910s40fe368wcb0102d107ea0cd1@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <11395ABA-6D73-44B7-ABA0-C717D9DD24D3@yale.edu>
From: Steve Brady <steven.brady@yale.edu>
Date: Tue, 19 Jun 2007 12:16:44 -0400
To: "David Barron" <mothsailor@googlemail.com>
X-Mailer: Apple Mail (2.752.2)
X-YaleITSMailFilter: Version 1.2c (attachment(s) not renamed)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] Could not find lmer function in {Matrix} package
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

That did the trick.  Thanks.

Steve
On Jun 19, 2007, at 12:10 PM, David Barron wrote:

> It's now in the lme4 package.
>
> On 19/06/07, Steve Brady <steven.brady@yale.edu> wrote:
>> I am having trouble calling the lmer function in the {Matrix}
>> package.  I first installed and loaded {Matrix} as follows:
>>
>>  > install.packages("Matrix")
>>  > library(Matrix)
>>
>> The package loaded successfully, however when I attempted to call
>> lmer, I received the following message:
>>
>> Error: could not find function "lmer"
>>
>> I also tried:
>>
>> < ?lmer
>>
>> which produced no search results.
>>
>> I have attempted these actions in both MacOSx R Versions 2.4.1 and
>> 2.5.0.  I have also tried this in Version 2.5.1. beta on a Windows
>> machine.
>>
>> Thanks in advance for any suggestions.
>>
>> Steve
>> ____________________________________
>> Steven P. Brady, M.E.Sc (2007)
>> School of Forestry & Environmental Studies
>> Yale University
>> http://www.cbc.yale.edu/people/skelly/steveb.html
>>
>>
>>
>>
>>         [[alternative HTML version deleted]]
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide http://www.R-project.org/posting- 
>> guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>
>
> -- 
> =================================
> David Barron
> Said Business School
> University of Oxford
> Park End Street
> Oxford OX1 1HP

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

dXyy