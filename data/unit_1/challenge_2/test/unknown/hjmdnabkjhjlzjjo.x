From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 21:01:38 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T11bL9017894
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 21:01:38 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T10cZP026953;
	Fri, 29 Jun 2007 03:00:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mog.corp.bcm.tmc.edu (smtp.bcm.tmc.edu [128.249.159.98])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T10QH5026803
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 03:00:27 +0200
Received: from [128.249.153.122] (cheerios.hgsc.bcm.tmc.edu [128.249.153.122])
	by mog.corp.bcm.tmc.edu (8.13.6/8.13.6) with ESMTP id l5T10PC1001402;
	Thu, 28 Jun 2007 20:00:25 -0500 (CDT)
In-Reply-To: <83217d00706281744qacaf3c5uc3c6c43ca25fb09d@mail.gmail.com>
References: <46C063CC-95DB-4F69-9D2F-59B105AFAE3B@bcm.tmc.edu>
	<83217d00706281744qacaf3c5uc3c6c43ca25fb09d@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <469C5799-69C9-4E0B-ADE8-A3A647F5A0C7@bcm.tmc.edu>
From: Bingshan Li <bli1@bcm.tmc.edu>
Date: Thu, 28 Jun 2007 20:00:23 -0500
To: "Seyed Reza Jafarzadeh" <srjafarzadeh@gmail.com>
X-Mailer: Apple Mail (2.752.2)
X-Scanned-By: MIMEDefang 2.56 on 128.249.159.98
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

Hi All,

Now it works. Thanks for all your answers and the explanations are  
very clear.

Bingshan

On Jun 28, 2007, at 7:44 PM, Seyed Reza Jafarzadeh wrote:

> NewVar <- relevel( factor(OldVar), ref = "b")
> should create a dummy variable, and change the reference category  
> for the model.
>
> Reza
>
>
> On 6/28/07, Bingshan Li <bli1@bcm.tmc.edu> wrote:
>> Hello everyone,
>>
>> I have a variable with several categories and I want to convert this
>> into dummy variables and do logistic regression on it. I used
>> model.matrix to create dummy variables but it always picked the
>> smallest one as the reference. For example,
>>
>> model.matrix(~.,data=as.data.frame(letters[1:5]))
>>
>> will code 'a' as '0 0 0 0'. But I want to code another category as
>> reference, say 'b'. How to do it in R using model.matrix? Is there
>> other way to do it if model.matrix  has no such functionality?
>>
>> Thanks!
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

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

eOta
htch+ 