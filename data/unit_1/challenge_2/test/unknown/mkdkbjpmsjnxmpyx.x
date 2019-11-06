From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 13:05:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TH5NL9028442
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 13:05:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TH4YId006168;
	Fri, 29 Jun 2007 19:04:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from slim.kubism.ku.dk (slim.kubism.ku.dk [192.38.18.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TH4KCc006081
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 19:04:21 +0200
Received: from titmouse2.kubism.ku.dk (0x50c633f5.boanxx12.adsl-dhcp.tele.dk
	[80.198.51.245])
	by slim.kubism.ku.dk (Postfix) with ESMTP id 8B6D21DF45;
	Fri, 29 Jun 2007 19:04:10 +0200 (CEST)
Message-ID: <46853B89.2050100@biostat.ku.dk>
Date: Fri, 29 Jun 2007 19:04:09 +0200
From: Peter Dalgaard <p.dalgaard@biostat.ku.dk>
User-Agent: Thunderbird 2.0.0.4 (X11/20070615)
MIME-Version: 1.0
To: "Li, Bingshan" <bli1@bcm.tmc.edu>
References: <46C063CC-95DB-4F69-9D2F-59B105AFAE3B@bcm.tmc.edu>	<83217d00706281744qacaf3c5uc3c6c43ca25fb09d@mail.gmail.com>	<469C5799-69C9-4E0B-ADE8-A3A647F5A0C7@bcm.tmc.edu>	<4684FDDA.4050702@vanderbilt.edu>
	<B0F082E681BDA646B9D0A887A2BBF2E3010D7F79@BCMEVS7.ad.bcm.edu>
In-Reply-To: <B0F082E681BDA646B9D0A887A2BBF2E3010D7F79@BCMEVS7.ad.bcm.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] logistic regression and dummy variable coding
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

Li, Bingshan wrote:
> Hi Frank,
>  
> I do not quite get you. What do you mean by simulation and speed issues? I do not see why they have to be considered in logistic regression.
>  
>   
Exactly. So don't use techniques that are only needed when such issues 
do have to be considered.

> Thanks.
>  
> Bingshan
>
> ________________________________
>
> From: Frank E Harrell Jr [mailto:f.harrell@vanderbilt.edu]
> Sent: Fri 6/29/2007 7:40 AM
> To: Li, Bingshan
> Cc: Seyed Reza Jafarzadeh; r-help@stat.math.ethz.ch
> Subject: Re: [R] logistic regression and dummy variable coding
>
>
>
> Bingshan Li wrote:
>   
>> Hi All,
>>
>> Now it works. Thanks for all your answers and the explanations are 
>> very clear.
>>
>> Bingshan
>>     
>
> But note that you are not using R correctly unless you are doing a
> simulation and have some special speed issues.  Let the model functions
> do all this for you.
>
> Frank
>
>   
>> On Jun 28, 2007, at 7:44 PM, Seyed Reza Jafarzadeh wrote:
>>
>>     
>>> NewVar <- relevel( factor(OldVar), ref = "b")
>>> should create a dummy variable, and change the reference category 
>>> for the model.
>>>
>>> Reza
>>>
>>>
>>> On 6/28/07, Bingshan Li <bli1@bcm.tmc.edu> wrote:
>>>       
>>>> Hello everyone,
>>>>
>>>> I have a variable with several categories and I want to convert this
>>>> into dummy variables and do logistic regression on it. I used
>>>> model.matrix to create dummy variables but it always picked the
>>>> smallest one as the reference. For example,
>>>>
>>>> model.matrix(~.,data=as.data.frame(letters[1:5]))
>>>>
>>>> will code 'a' as '0 0 0 0'. But I want to code another category as
>>>> reference, say 'b'. How to do it in R using model.matrix? Is there
>>>> other way to do it if model.matrix  has no such functionality?
>>>>
>>>> Thanks!
>>>>
>>>>
>>>>
>>>>         [[alternative HTML version deleted]]
>>>>
>>>> ______________________________________________
>>>> R-help@stat.math.ethz.ch mailing list
>>>> https://stat.ethz.ch/mailman/listinfo/r-help
>>>> PLEASE do read the posting guide http://www.R-project.org/posting-
>>>> guide.html
>>>> and provide commented, minimal, self-contained, reproducible code.
>>>>
>>>>         
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>>     
>
>
> --
> Frank E Harrell Jr   Professor and Chair           School of Medicine
>                       Department of Biostatistics   Vanderbilt University
>
>
>
> 	[[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

c 4	cM
 m3<uB