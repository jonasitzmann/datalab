From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 11:14:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56FE3hB023010
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 11:14:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56FDGm3019311;
	Wed, 6 Jun 2007 17:13:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from msslty.mssl.ucl.ac.uk (msslty.mssl.ucl.ac.uk [128.40.71.164])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56F2G3w014631
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 17:02:23 +0200
Received: from msslhb.mssl.ucl.ac.uk (msslhb.mssl.ucl.ac.uk [128.40.71.37])
	by msslty.mssl.ucl.ac.uk (8.13.6/8.13.6) with ESMTP id l56F1uRu011699
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 16:01:56 +0100
Received: from msslhb (msslhb [128.40.71.37])
	by msslhb.mssl.ucl.ac.uk (8.13.6+Sun/8.13.6) with SMTP id
	l56Et5fY000275
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 15:55:06 +0100 (BST)
Message-Id: <200706061455.l56Et5fY000275@msslhb.mssl.ucl.ac.uk>
Date: Wed, 6 Jun 2007 15:55:06 +0100 (BST)
From: Jenny Barnes <jmb@mssl.ucl.ac.uk>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-MD5: lRHbs1hGD0ckd+S0nheLVw==
X-Mailer: dtmail 1.3.0 @(#)CDE Version 1.6 SunOS 5.10 sun4u sparc 
X-MSSL-MailScanner-Information: Please contact the ISP for more information
X-MSSL-MailScanner: No virus found
X-MSSL-MailScanner-SpamCheck: not spam, SpamAssassin (score=-4.9, required 5, 
	BAYES_00 -4.90)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] random numbers selection - simple example
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: Jenny Barnes <jmb@mssl.ucl.ac.uk>
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

You're all stars - thanks for the replies - I will go ahead and use 
sample...........
I need to do this about 10,000 times - any suggestions for this or simply put it 
in a loop 10,000 times outputting each time to an array?

Best Wishes,

Jenny 


>
>
>  use sample(c(0:42), 15, replace=T)
>
>hope it helps,
>kevin
>
>----- Original Message -----
>From: Jenny Barnes <jmb@mssl.ucl.ac.uk>
>Date: Wednesday, June 6, 2007 10:30 am
>Subject: [R] random numbers selection - simple example
>
>> Dear R-help,
>> 
>> Which random number generator function would you recommend for 
>> simply picking 15 
>> random numbers from the sequence 0-42? I want to use replacement 
>> (so that the 
>> same number could potentially be picked more than once).
>> 
>> I have read the R-help archives and the statistics and computing 
>> book on modern 
>> Applied statistics with S but the advice seems to be for much form 
>> complicated 
>> examples, there must be a simpler way for what I am trying to do?
>> 
>> If anybody can help me I would greatly appreciate your advice and 
>> time,
>> Best Wishes,
>> 
>> Jenny
>> 
>> 
>> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> Jennifer Barnes
>> PhD student: long range drought prediction 
>> Climate Extremes Group
>> Department of Space and Climate Physics
>> University College London
>> Holmbury St Mary 
>> Dorking, Surrey, RH5 6NT
>> Web: http://climate.mssl.ucl.ac.uk
>> 
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide http://www.R-project.org/posting-
>> guide.htmland provide commented, minimal, self-contained, 
>> reproducible code.
>> 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Jennifer Barnes
PhD student: long range drought prediction 
Climate Extremes Group
Department of Space and Climate Physics
University College London
Holmbury St Mary 
Dorking, Surrey, RH5 6NT
Tel: 01483 204149
Mob: 07916 139187
Web: http://climate.mssl.ucl.ac.uk

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

aumo e