From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 10:59:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JExkL9030699
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 10:59:46 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JEwQkl027418;
	Tue, 19 Jun 2007 16:58:37 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mxout2.cac.washington.edu (mxout2.cac.washington.edu
	[140.142.33.4])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JEUimm015452
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 16:30:46 +0200
Received: from homer23.u.washington.edu (homer23.u.washington.edu
	[140.142.12.141])
	by mxout2.cac.washington.edu (8.13.7+UW06.06/8.13.7+UW07.05) with ESMTP
	id l5JEUhHa010942
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Jun 2007 07:30:43 -0700
Received: from localhost (tlumley@localhost)
	by homer23.u.washington.edu (8.13.7+UW06.06/8.13.7+Submit) with ESMTP
	id l5JEUhki006425; Tue, 19 Jun 2007 07:30:43 -0700
Date: Tue, 19 Jun 2007 07:30:43 -0700 (PDT)
From: Thomas Lumley <tlumley@u.washington.edu>
To: spime <sabya23@gmail.com>
In-Reply-To: <11195410.post@talk.nabble.com>
Message-ID: <Pine.LNX.4.64.0706190729520.5221@homer23.u.washington.edu>
References: <11193273.post@talk.nabble.com> <4677C7CB.4060705@vanderbilt.edu>
	<11195410.post@talk.nabble.com>
MIME-Version: 1.0
X-PMX-Version: 5.3.1.294258, Antispam-Engine: 2.5.1.298604,
	Antispam-Data: 2007.6.19.71038
X-Uwash-Spam: Gauge=IIIIIII, Probability=7%, Report='__CP_URI_IN_BODY 0, __CT 0,
	__CT_TEXT_PLAIN 0, __HAS_MSGID 0, __MIME_TEXT_ONLY 0,
	__MIME_VERSION 0, __SANE_MSGID 0'
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] BIC and Hosmer-Lemeshow statistic for logistic regression
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

On Tue, 19 Jun 2007, spime wrote:
>
> Is there any windows version of Design package???
>

Not at the moment. It is being updated for changes in R 2.5.0.

[This would be a FAQ except that it should stop being asked soon]

 	-thomas

>
>
>
>
>
> Frank E Harrell Jr wrote:
>>
>> spime wrote:
>>>
>>> I haven't find any helpful thread. How can i calculate BIC and
>>> Hosmer-Lemeshow statistic for a logistic regression model. I have used
>>> glm
>>> for logistic fit.
>>
>> See the Design package's lrm function and residuals.lrm for a better GOF
>> test.
>>
>>
>>
>> --
>> Frank E Harrell Jr   Professor and Chair           School of Medicine
>>                       Department of Biostatistics   Vanderbilt University
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>>
>
> -- 
> View this message in context: http://www.nabble.com/BIC-and-Hosmer-Lemeshow-statistic-for-logistic-regression-tf3945943.html#a11195410
> Sent from the R help mailing list archive at Nabble.com.
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

Thomas Lumley			Assoc. Professor, Biostatistics
tlumley@u.washington.edu	University of Washington, Seattle

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

rt0sg 