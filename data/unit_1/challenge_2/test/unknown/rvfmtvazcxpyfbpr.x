From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 10:54:22 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54EsLhB029291
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 10:54:22 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54DTGaJ018465;
	Mon, 4 Jun 2007 15:29:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.248])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54DTA29018419
	for <r-help@stat.math.ethz.ch>; Mon, 4 Jun 2007 15:29:10 +0200
Received: by an-out-0708.google.com with SMTP id b2so302899ana
	for <r-help@stat.math.ethz.ch>; Mon, 04 Jun 2007 06:29:09 -0700 (PDT)
Received: by 10.100.33.14 with SMTP id g14mr2570055ang.1180963749606;
	Mon, 04 Jun 2007 06:29:09 -0700 (PDT)
Received: by 10.100.132.13 with HTTP; Mon, 4 Jun 2007 06:29:09 -0700 (PDT)
Message-ID: <f8e6ff050706040629x46180cd5ja3365c1f16d8ff26@mail.gmail.com>
Date: Mon, 4 Jun 2007 15:29:09 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: "Tim Bergsma" <timb@metrumrg.com>
In-Reply-To: <46640A7F.6010702@metrumrg.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <46640A7F.6010702@metrumrg.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] test for nested factors
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

On 6/4/07, Tim Bergsma <timb@metrumrg.com> wrote:
> Is there a conventional way to test for nested factors?  I.e., if 'a'
> and 'b' are lists of same-length factors, does each level specified by
> 'a' correspond to exactly one level specified by 'b'?
>
> The function below seems to suffice, but I'd be happy to know of a more
> succinct solution, if it already exists.

How about:

"%nested%" <- function(a, b) {
	if (is.list(a)) a <- do.call("interaction", c(a, drop=TRUE))
	if (is.list(b)) b <- do.call("interaction", c(b, drop=TRUE))
	
	length(unique(a))  == length(unique(interaction(a, b, drop=TRUE)))
}

CO2$Plant %nested% CO2[,c("Type","Treatment")] #TRUE
CO2$Plant %nested% (CO2$uptake < mean(CO2$uptake)) #FALSE

?

Hadley

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

seEs

i@Mpsb	