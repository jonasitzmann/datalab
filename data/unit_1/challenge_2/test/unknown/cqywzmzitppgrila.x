From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 13:26:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56HQlhB024327
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 13:26:48 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56HPDVI008041;
	Wed, 6 Jun 2007 19:25:27 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_60, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32811.mail.mud.yahoo.com (web32811.mail.mud.yahoo.com
	[68.142.206.41])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l56HL45s006954
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 19:21:05 +0200
Received: (qmail 86138 invoked by uid 60001); 6 Jun 2007 17:21:03 -0000
X-YMail-OSG: 0oifxbYVM1lr.sgLqAwqu822OtycvzHe4leHvhXNuZO2MtztDPPPpUtJuWSOiuyE9qwWYxSLifLWpjjHGpFE8aCVEzOhAanyZ1YEH0NE1F3Glu.ilCHIztmrUBtJpQ--
Received: from [130.15.106.174] by web32811.mail.mud.yahoo.com via HTTP;
	Wed, 06 Jun 2007 13:21:03 EDT
Date: Wed, 6 Jun 2007 13:21:03 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: scott flemming <scottflemming@yahoo.com>, r-help@stat.math.ethz.ch
In-Reply-To: <806411.48610.qm@web57504.mail.re1.yahoo.com>
MIME-Version: 1.0
Message-ID: <780602.85358.qm@web32811.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] R help
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


--- scott flemming <scottflemming@yahoo.com> wrote:

> Hi,
> 
> I wonder whether R can finish the following project:
> 
> I want to make a chart to represent 10 genes. Each
> gene has orientation and length. Therefore, a gene
> can be represented by arrows. 
> 
> Can R be used to draw 10 arrows in one line ?
> 
> scott

Do you mean something like this?

x <- 1:10
y <- 1:10
plot(x,y, type="n" )
arrows(c(1,4,6),c(3,3,3), c(2,3, 7), c(4,4,2))

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

EA3hS< /3Qzs l