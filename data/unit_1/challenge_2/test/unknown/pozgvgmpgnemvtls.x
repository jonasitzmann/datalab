From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 05:56:16 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l639uDL9027066
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 05:56:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l639tQpT011822;
	Tue, 3 Jul 2007 11:55:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32803.mail.mud.yahoo.com (web32803.mail.mud.yahoo.com
	[68.142.206.33])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l639hcQ9006637
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 11:43:39 +0200
Received: (qmail 56133 invoked by uid 60001); 3 Jul 2007 09:43:38 -0000
X-YMail-OSG: EOeDizIVM1lTNj8NR_bifb0qVCIvkjfCub63IVD9XYxbPkWSzGpoJwT4th61Bz35sQ--
Received: from [130.15.106.174] by web32803.mail.mud.yahoo.com via HTTP;
	Tue, 03 Jul 2007 05:43:37 EDT
Date: Tue, 3 Jul 2007 05:43:37 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: Leonardo Lami <lami@faunalia.it>, r-help@stat.math.ethz.ch
In-Reply-To: <468A17ED.7000607@faunalia.it>
MIME-Version: 1.0
Message-ID: <998936.50820.qm@web32803.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] select row
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

 ?which

Use it to find the rows and then extract the rows 

 selection  <- mydata[which(mydata$id=="25-2006"), ]

 should work.

--- Leonardo Lami <lami@faunalia.it> wrote:

> Hi all,
> I have a little problem selecting some rows from a
> data.frame.
> I'd like to select the rows where a determinated
> column take a
> partivolar value.
> 
> For example:
> tab
>           id       x       y
> 1    24-2005 1621814 4834991
> 2    24-2005 1621856 4834907
> 3    24-2005 1621763 4834956
> 4   25-2006 1622330 4835189
> 5   25-2006 1622533 4834834
> 6   25-2006 1622535 4834909
> 7   25-2006 1622543 4834803
> 8   28-2005 1622798 4835043
> 9   28-2005 1622299 4835129
> 
> I'd like to select the row where id=25-2006
> 
> I searched on the search of the R site but I did'nt
> find anything of simple.
> Can someone help me?
> 
> Thank you very much
> Leonardo
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

             

>o i7c iI en./