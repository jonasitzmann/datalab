From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 15:59:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55JxqhB013235
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 15:59:52 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55JwGXs023445;
	Tue, 5 Jun 2007 21:58:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from nx5.hrz.uni-dortmund.de (nx5.HRZ.Uni-Dortmund.DE
	[129.217.131.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55JwAmb023413
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 21:58:10 +0200
Received: from mail.statistik.uni-dortmund.de (mail.Statistik.Uni-Dortmund.DE
	[129.217.206.4])
	by nx5.hrz.uni-dortmund.de (Postfix) with ESMTP id C764812191;
	Tue,  5 Jun 2007 21:58:09 +0200 (MET DST)
Received: from [129.217.207.201] (ligges2.fb05.statistik.uni-dortmund.de
	[129.217.207.201])
	by mail.statistik.uni-dortmund.de (Postfix) with ESMTP id 6410735C1B0; 
	Tue,  5 Jun 2007 21:58:04 +0200 (CEST)
Message-ID: <4665BFEC.5070004@statistik.uni-dortmund.de>
Date: Tue, 05 Jun 2007 21:56:28 +0200
From: Uwe Ligges <ligges@statistik.uni-dortmund.de>
Organization: Fachbereich Statistik, =?ISO-8859-1?Q?Universit=E4t_Dortm?=
	=?ISO-8859-1?Q?und?=
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.8.1.4) Gecko/20070509 SeaMonkey/1.1.2
MIME-Version: 1.0
To: Saeed Abu Nimeh <sabunime@gmail.com>
References: <71257D09F114DA4A8E134DEAC70F25D3088B08FB@groamrexm03.amer.pfizer.com>
	<4665B984.5040704@gmail.com>
In-Reply-To: <4665B984.5040704@gmail.com>
X-FB05-MailScanner: clean
X-FB05-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (Wertung=-5.899, benoetigt 4.5, autolearn=disabled,
	ALL_TRUSTED -3.30, BAYES_00 -2.60)
X-FB05-MailScanner-From: ligges@statistik.uni-dortmund.de
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: "Kuhn, Max" <Max.Kuhn@pfizer.com>, r-help@stat.math.ethz.ch
Subject: Re: [R] naiveBayes other than e1071
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



Saeed Abu Nimeh wrote:
> Max,
> Thanks. I have tried it but i keep getting an error:
> Error in as.vector(x, mode) : invalid argument 'mode'
> Do I have to do something specific when using the class column. I tried
> both  y.y<-as.vector and y.y<-as.factor.
> 
> dread<-read.table('dataset.csv',sep=",")
> x.x<-as.matrix(dread[,2:256])
> y.y<-as.vector(dread[,1])
> nb<- NaiveBayes(x=x.x,grouping=y.y)
> pred.nb<-predict(nb)
> 
> Error in as.vector(x, mode) : invalid argument 'mode'



Please tell us (according to the posting guide): Which version of R? 
Which version of klaR? Example data that reproduce the error?

Uwe Ligges



> Thanks,
> Saeed
> 
> Kuhn, Max wrote:
>> Saeed,
>>
>> There is a version in the klaR package. I recently submitted a change to
>> the predict function that may be related to your problem. 
>>
>> If:
>>
>>   1. the posterior probabilities (apart from the prior) are being
>> approximated by the product of the p(x_i|y_j) and
>>
>>   2. a lot of predictors are being used
>>
>> then posterior probabilities may have values of absolute zero. 
>>
>> When the approximation is used, the approximate posterior probabilities
>> are normalized by their sum (which is zero in such cases).
>>
>> The patch in klaR uses the product of the conditional divided by the
>> marginal of x_i (per the true formula). I haven't seen the problem occur
>> with this patch.
>>
>> HTH,
>>
>> Max
>>
>> -----Original Message-----
>> From: r-help-bounces@stat.math.ethz.ch
>> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Saeed Abu Nimeh
>> Sent: Monday, June 04, 2007 2:45 PM
>> To: r-help@stat.math.ethz.ch
>> Subject: [R] naiveBayes other than e1071
>>
>> Hi List,
>> Is there a naiveBayes interface other than the one in e1071 package. For
>> some reason on certain datasets all predicted values are NaN, but it
>> predicts well on others.
>> Thanks,
>> Saeed
>> ---
>> model <- naiveBayes(x.train, y.train, laplace = 3)
>> pred <- predict(model,x.test,type="raw")
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>> ----------------------------------------------------------------------
>> LEGAL NOTICE
>> Unless expressly stated otherwise, this message is confidential and may be privileged.  It is intended for the addressee(s) only.  Access to this E-mail by anyone else is unauthorized.  If you are not an addressee, any disclosure or copying of the contents of this E-mail or any action taken (or not taken) in reliance on it is unauthorized and may be unlawful.  If you are not an addressee, please inform the sender immediately.
>>
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

dU "wc
s