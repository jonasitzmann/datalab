From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 23:04:41 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T34aL9018945
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 23:04:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T33fo6011489;
	Fri, 29 Jun 2007 05:04:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME,
	SARE_SUB_OBFU_Q0 autolearn=no version=3.2.0
Received: from mailhub2.uq.edu.au (mailhub2.uq.edu.au [130.102.149.128])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T33TTd011431
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 05:03:30 +0200
Received: from smtp1a.uq.edu.au (smtp1a.uq.edu.au [130.102.128.16])
	by mailhub2.uq.edu.au (8.13.7/8.13.7) with ESMTP id l5T33OSm018055;
	Fri, 29 Jun 2007 13:03:24 +1000 (EST)
Received: from uqexav02.soe.uq.edu.au (uqexav02.soe.uq.edu.au [130.102.4.249])
	by smtp1a.uq.edu.au (8.13.7/8.13.7) with ESMTP id l5T33Otv063662;
	Fri, 29 Jun 2007 13:03:24 +1000 (EST)
Received: from uqexav02.soe.uq.edu.au ([130.102.4.251]) by
	uqexav02.soe.uq.edu.au with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 29 Jun 2007 13:03:24 +1000
Received: from uqeximf02.soe.uq.edu.au ([130.102.6.17]) by
	uqexav02.soe.uq.edu.au with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 29 Jun 2007 13:03:24 +1000
Received: from uqeximf01.soe.uq.edu.au ([130.102.6.16]) by
	uqeximf02.soe.uq.edu.au with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 29 Jun 2007 13:03:24 +1000
Received: from [172.23.218.220] ([172.23.218.220]) by uqeximf01.soe.uq.edu.au
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 29 Jun 2007 13:03:23 +1000
From: Simon Blomberg <s.blomberg1@uq.edu.au>
To: "Jiong Zhang, PhD" <jizhang@chori.org>
In-Reply-To: <255953440977a84a8058562f72dc2b08@mail.chori.org>
References: <255953440977a84a8058562f72dc2b08@mail.chori.org>
Date: Fri, 29 Jun 2007 13:05:36 +1000
Message-Id: <1183086336.5165.71.camel@sib-sblomber01d.sib.uq.edu.au>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 
X-OriginalArrivalTime: 29 Jun 2007 03:03:23.0725 (UTC)
	FILETIME=[0E5C6FD0:01C7B9FA]
X-UQ-FilterTime: 1183086204
X-Scanned-By: MIMEDefang 2.51 on UQ Mailhub on 130.102.149.128
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] why this doesn't work for qqnorm
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

You need to specify a whole column. try qqnorm(table[,1])

On Thu, 2007-06-28 at 18:50 -0700, Jiong Zhang, PhD wrote:
> I want to qqnorm every column in a table.  When I try the first column
> using
> 
> qqnorm(table$column1), it worked.
> 
> But when I use
> 
> qqnorm(table[1]), it tells me "Error in stripchart(x1, ...) : invalid
> plotting method".
> 
> What happen?  How can I make a function that qqnorms every column?

Try this:

dat <- data.frame(x=rnorm(20), y= rnorm(20), z =rnorm(20))
par(mfrow=c(3,1))
sapply(dat, function (x) {qqnorm (x) ; qqline (x) } )

Cheers,

Simon
> 
> thanks a lot.
> 
> -jiong
>  The email message (and any attachments) is for the sole use of the intended recipient(s) and may contain confidential information.  Any unauthorized review, use, disclosure or distribution is prohibited.  If you are not the intended recipient, please contact the sender by reply email and destroy all copies of the original message (and any attachments).  Thank You.
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
-- 
Simon Blomberg, BSc (Hons), PhD, MAppStat. 
Lecturer and Consultant Statistician 
Faculty of Biological and Chemical Sciences 
The University of Queensland 
St. Lucia Queensland 4072 
Australia

Room 320, Goddard Building (8)
T: +61 7 3365 2506 
email: S.Blomberg1_at_uq.edu.au 

The combination of some data and an aching desire for 
an answer does not ensure that a reasonable answer can 
be extracted from a given body of data. - John Tukey.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

Du idnt	i ele9