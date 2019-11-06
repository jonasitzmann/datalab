From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:36:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCa4LT028202
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:36:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MJCr6O023758;
	Fri, 22 Jun 2007 21:13:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailman.pgn.com (mailman.pgn.com [147.79.239.225])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5MJ8WlM021902
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 21:08:32 +0200
Received: from (smtp1.corp.dom [172.21.30.151]) by mailman.pgn.com with smtp
	id 6324_99eeebc4_20c8_11dc_bbc4_0013725341d9;
	Fri, 22 Jun 2007 06:58:05 -0700
Received: from WIZ1-MTA by pgn.com
	with Novell_GroupWise; Fri, 22 Jun 2007 12:08:31 -0700
Message-Id: <467BBBBA0200006500006928@pgn.com>
X-Mailer: Novell GroupWise Internet Agent 7.0.1 
Date: Fri, 22 Jun 2007 12:08:26 -0700
From: "Horace Tso" <Horace.Tso@pgn.com>
To: "Erik Iverson" <iverson@biostat.wisc.edu>
References: <467BB6340200006500006924@pgn.com>
	<467C1CA0.1080606@biostat.wisc.edu>
In-Reply-To: <467C1CA0.1080606@biostat.wisc.edu>
Mime-Version: 1.0
Content-Disposition: inline
X-NAI-Spam-Score: -0.7
X-NAI-Spam-Report: 1 Rules triggered
	*  -0.7 -- BAYES_10 -- Bayesian spam probability is 10 to 20%
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5MJ8WlM021902
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Imputing missing values in time series
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

Erik, indeed it gets the work done. I was hoping to avoid the dreaded looping, though.....

Thanks.

Horace

>>> Erik Iverson <iverson@biostat.wisc.edu> 6/22/2007 12:01 PM >>>
I think my example should work for you, but I couldn't think of a way to 
do this without an interative while loop.

test <- c(1,2,3,NA,4,NA,NA,5,NA,6,7,NA)

while(any(is.na(test)))
test[is.na(test)] <- test[which(is.na(test))-1]

  test
  [1] 1 2 3 3 4 4 4 5 5 6 7 7

Horace Tso wrote:
> Folks,
> 
> This must be a rather common problem with real life time series data
> but I don't see anything in the archive about how to deal with it. I
> have a time series of natural gas prices by flow date. Since gas is not
> traded on weekends and holidays, I have a lot of missing values,
> 
> FDate	Price
> 11/1/2006	6.28
> 11/2/2006	6.58
> 11/3/2006	6.586
> 11/4/2006	6.716
> 11/5/2006	NA
> 11/6/2006	NA
> 11/7/2006	6.262
> 11/8/2006	6.27
> 11/9/2006	6.696
> 11/10/2006	6.729
> 11/11/2006	6.487
> 11/12/2006	NA
> 11/13/2006	NA
> 11/14/2006	6.725
> 11/15/2006	6.844
> 11/16/2006	6.907
>  
> What I would like to do is to fill the NAs with the price from the
> previous date * gas used during holidays is purchased from the week
> before. Though real simple, I wonder if there is a function to perform
> this task. Some of the imputation functions I'm aware of (eg. impute,
> transcan in Hmisc) seem to deal with completely different problems. 
> 
> 2.5.0/Windows XP
> 
> Thanks in advance.
> 
> HT
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

                

l:et