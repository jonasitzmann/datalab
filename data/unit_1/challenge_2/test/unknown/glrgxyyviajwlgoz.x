From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 14:37:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51IawhB013283
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 14:37:00 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51IaE5q001904;
	Fri, 1 Jun 2007 20:36:28 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from eddings.acpub.duke.edu (eddings.acpub.duke.edu [152.3.233.76])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51ISOfI031120
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 20:28:25 +0200
Received: from [152.3.243.173] (dhcp-152-3-243-173.aas.duke.edu
	[152.3.243.173]) 
	by eddings.acpub.duke.edu (8.12.11.20060308/8.12.10/Duke-5.0.0) with
	ESMTP id l51IQQV4026315; Fri, 1 Jun 2007 14:26:27 -0400 (EDT)
Message-ID: <46606546.8070702@gmail.com>
Date: Fri, 01 Jun 2007 14:28:22 -0400
From: Roland Rau <roland.rproject@gmail.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: pm509@york.ac.uk
References: <Prayer.1.0.18.0706011712340.13765@webmail1.york.ac.uk>
In-Reply-To: <Prayer.1.0.18.0706011712340.13765@webmail1.york.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Time format
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

Hi Patrick,

pm509@york.ac.uk wrote:
> Dear R-help list members,
> 
> I am new to R, and having problems with plotting part of a time series. I 
> have read in my data using read.table, and my 'time' column is recognised 
> as a numeric variable. When I convert this to a time format, I am no longer 
> able to use its values on my x-axis. The problem is that I only want part 
> of the time series to appear on the plot, ignoring the first 23 
> measurements.
> 
> I would be very grateful if someone could suggest a way of solving this.
> 
Does my following example code help? I just reduce the limits on the x-axis.

myts <- ts(runif(480), frequency=12, start=c(1960,1))
par(mfrow=c(1,2))
plot(myts)
title(main="Whole Timeseries")
plot(myts, xlim=c(1970,2000))
title(main="Limited X-Axis")


Hope this helps,
Roland

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  


 r)a|at}0dy6