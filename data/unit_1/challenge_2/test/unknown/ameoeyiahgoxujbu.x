From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 21:04:51 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5S14mL9002993
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 21:04:49 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S138iv014330;
	Thu, 28 Jun 2007 03:03:27 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from web32215.mail.mud.yahoo.com (web32215.mail.mud.yahoo.com
	[68.142.207.146])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5S12rpH014208
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 03:02:55 +0200
Received: (qmail 81169 invoked by uid 60001); 28 Jun 2007 01:02:53 -0000
X-YMail-OSG: aD99kGcVM1kgCgNqR0iJe09zlERfsevL0T82gN1L8znz6QnrEyTQAJLtkrqjUbSHwMVVhN3AbCcLTAVhJzfUc94yhGK5yDZmzKY2mrC03m.EESd6kR4-
Received: from [210.11.240.117] by web32215.mail.mud.yahoo.com via HTTP;
	Wed, 27 Jun 2007 18:02:53 PDT
Date: Wed, 27 Jun 2007 18:02:53 -0700 (PDT)
From: Moshe Olshansky <m_olshansky@yahoo.com>
To: yoooooo <magno_yu@ml.com>, r-help@stat.math.ethz.ch
In-Reply-To: <11334950.post@talk.nabble.com>
MIME-Version: 1.0
Message-ID: <181678.80915.qm@web32215.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] restructuring matrix
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

If your original matrix is A then 
unique(A$People) and unique(A$Desc) 
will produce a vector of different people and a vector
of different descriptions.

--- yoooooo <magno_yu@ml.com> wrote:

> 
> Hi all, 
> 
>     let's say I have matrix
> 
> People    Desc    Value
> Mary      Height    50
> Mary      Weight   100
> Fanny    Height     60
> Fanny     Height    200
> 
> Is there a quick way to form the following matrix? 
> 
> People   Height    Weight
> Mary      50         100
> Fanny     60        200
> 
> (Assuming I don't know the length of people/desc and
> let's say these are
> characters matrix.. I tried play with row(), col(),
> etc.. but I don't seem
> to find like a duplicate match function... 
> I'm trying to write some one/two liner that convert
> my resulting matrix to
> vector and pick the appropriate fields.. etc )
> 
> Thanks!
> 
> -- 
> View this message in context:
>
http://www.nabble.com/restructuring-matrix-tf3991741.html#a11334950
> Sent from the R help mailing list archive at
> Nabble.com.
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained,
> reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

Mwzn /.ilvSodW