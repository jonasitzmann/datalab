From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 09:13:38 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TDDYL9026135
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 09:13:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TDCpRb019202;
	Fri, 29 Jun 2007 15:13:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailgate02.smtp.vanderbilt.edu (mailgate02.smtp.Vanderbilt.Edu
	[129.59.1.72])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TCfrxD006514
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 14:41:56 +0200
Received: from smtp09.smtp.vanderbilt.edu (smtp09.smtp.Vanderbilt.Edu
	[129.59.1.239])
	by mailgate02.smtp.vanderbilt.edu (8.13.8/8.13.8) with ESMTP id
	l5TCexlK009400
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 29 Jun 2007 07:41:04 -0500
Received: from smtp09.smtp.vanderbilt.edu (localhost [127.0.0.1])
	by smtp09.smtp.vanderbilt.edu (8.12.11/8.12.11/VU-3.7.9C+d3.7.9) with
	ESMTP id l5TCexRr025431; Fri, 29 Jun 2007 07:40:59 -0500 (CDT)
Received: from [192.168.0.111] (c-68-53-173-123.hsd1.tn.comcast.net
	[68.53.173.123])
	by smtp09.smtp.vanderbilt.edu (8.12.11/8.12.11/VU-3.7.9.3B+d3.7.9) with
	ESMTP id l5TCewwA025428; Fri, 29 Jun 2007 07:40:59 -0500 (CDT)
Message-ID: <4684FDDA.4050702@vanderbilt.edu>
Date: Fri, 29 Jun 2007 07:40:58 -0500
From: Frank E Harrell Jr <f.harrell@vanderbilt.edu>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: Bingshan Li <bli1@bcm.tmc.edu>
References: <46C063CC-95DB-4F69-9D2F-59B105AFAE3B@bcm.tmc.edu>	<83217d00706281744qacaf3c5uc3c6c43ca25fb09d@mail.gmail.com>
	<469C5799-69C9-4E0B-ADE8-A3A647F5A0C7@bcm.tmc.edu>
In-Reply-To: <469C5799-69C9-4E0B-ADE8-A3A647F5A0C7@bcm.tmc.edu>
X-Proofpoint-Virus-Version: vendor=fsecure engine=4.65.5502:2.3.11, 1.2.37,
	4.0.164 definitions=2007-06-29_03:2007-06-28, 2007-06-29,
	2007-06-29 signatures=0
X-PPS: No, score=0
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

Bingshan Li wrote:
> Hi All,
> 
> Now it works. Thanks for all your answers and the explanations are  
> very clear.
> 
> Bingshan

But note that you are not using R correctly unless you are doing a 
simulation and have some special speed issues.  Let the model functions 
do all this for you.

Frank

> 
> On Jun 28, 2007, at 7:44 PM, Seyed Reza Jafarzadeh wrote:
> 
>> NewVar <- relevel( factor(OldVar), ref = "b")
>> should create a dummy variable, and change the reference category  
>> for the model.
>>
>> Reza
>>
>>
>> On 6/28/07, Bingshan Li <bli1@bcm.tmc.edu> wrote:
>>> Hello everyone,
>>>
>>> I have a variable with several categories and I want to convert this
>>> into dummy variables and do logistic regression on it. I used
>>> model.matrix to create dummy variables but it always picked the
>>> smallest one as the reference. For example,
>>>
>>> model.matrix(~.,data=as.data.frame(letters[1:5]))
>>>
>>> will code 'a' as '0 0 0 0'. But I want to code another category as
>>> reference, say 'b'. How to do it in R using model.matrix? Is there
>>> other way to do it if model.matrix  has no such functionality?
>>>
>>> Thanks!
>>>
>>>
>>>
>>>         [[alternative HTML version deleted]]
>>>
>>> ______________________________________________
>>> R-help@stat.math.ethz.ch mailing list
>>> https://stat.ethz.ch/mailman/listinfo/r-help
>>> PLEASE do read the posting guide http://www.R-project.org/posting- 
>>> guide.html
>>> and provide commented, minimal, self-contained, reproducible code.
>>>
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 


-- 
Frank E Harrell Jr   Professor and Chair           School of Medicine
                      Department of Biostatistics   Vanderbilt University

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

arRa 9 IoDo bnkf