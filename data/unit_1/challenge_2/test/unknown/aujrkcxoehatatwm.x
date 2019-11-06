From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 12:40:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CGeJL9029278
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 12:40:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CGdXwJ019967;
	Tue, 12 Jun 2007 18:39:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.241])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CGdRPj019946
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 18:39:27 +0200
Received: by an-out-0708.google.com with SMTP id b2so384628ana
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 09:39:27 -0700 (PDT)
Received: by 10.100.123.9 with SMTP id v9mr4171968anc.1181666366835;
	Tue, 12 Jun 2007 09:39:26 -0700 (PDT)
Received: by 10.100.132.13 with HTTP; Tue, 12 Jun 2007 09:39:26 -0700 (PDT)
Message-ID: <f8e6ff050706120939o7c0937cepe7529040ed83bcf7@mail.gmail.com>
Date: Tue, 12 Jun 2007 18:39:26 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: "Roy Mendelssohn" <Roy.Mendelssohn@noaa.gov>
In-Reply-To: <F92150A6-8333-4F24-B7B7-D4031F4CC657@noaa.gov>
MIME-Version: 1.0
Content-Disposition: inline
References: <F92150A6-8333-4F24-B7B7-D4031F4CC657@noaa.gov>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] [OT]Web-Based Data Brushing
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

On 6/12/07, Roy Mendelssohn <Roy.Mendelssohn@noaa.gov> wrote:
> I apologize for the off-topic post, but my Google search did not turn
> up much and I thought people on this list my have knowledge of this.
> I am looking for examples of  data brushing  (i.e. dynmaic linked
> plots) either on a web site, or in a web-based application, such as
> an AJAX app.  Even better if there is a way to do this in R.
>
> Thanks for any help.

It's not completely in R, but rggobi (http://www.ggobi.org/rggobi)
offers a tight link to ggobi (http://www.ggobi.org) which offers a
wide range of interactive and dynamic graphics, including linked
brushing.

Hadley

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

XJcmr