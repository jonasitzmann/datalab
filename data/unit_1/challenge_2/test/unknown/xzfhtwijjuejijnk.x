From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 12:42:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65GgAL9028682
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 12:42:11 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65GfEH0002665;
	Thu, 5 Jul 2007 18:41:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.1 required=5.0 tests=AWL, DKIM_POLICY_SIGNSOME,
	FORGED_HOTMAIL_RCVD2, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65GVGro031201
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 18:31:18 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I6UEc-0002Wz-Rc
	for r-help@stat.math.ethz.ch; Thu, 05 Jul 2007 09:31:14 -0700
Message-ID: <11450001.post@talk.nabble.com>
Date: Thu, 5 Jul 2007 09:31:14 -0700 (PDT)
From: Jim Price <price_ja@hotmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <6BCB4D493A447546A8126F24332056E8063E886E@school1.business.edu>
MIME-Version: 1.0
X-Nabble-From: price_ja@hotmail.com
References: <6BCB4D493A447546A8126F24332056E8063E886E@school1.business.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] summarizing dataframe at variable/factor levels
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


my.data <- data.frame(
	trts <- rep(c('Drug 1','Drug2'), each = 10),
	doses <- rep(c('Low dose','High dose'), 10),
	resp <- rnorm(20)
)


tapply(my.data$resp, list(my.data$trts, my.data$doses), mean)




Jim





Afshartous, David wrote:
> 
> 
> All,
> 
> Is there an efficient way to apply say "mean" or "median" to a dataframe
> 
> according to say all combinations of two variables in the dataframe?
> Below is a simple example and the outline of a "manual" solution that
> will work but is not very efficient
> (could also generalize this to a function).  Searched the archives and
> docs but didn't see anything close to this question.
> 
> Cheers,
> dave
> 
> dat.ex = data.frame(  rep(c(1:6), each=6), c(rnorm(12), rnorm(12, 1),
> rnorm(12, 2)), rnorm(36, 5), rep(c(1:6), 6),
> rep(c("Drug1", "Drug2", "Placebo"), each=12) )
> names(dat.ex) = c("patient.no", "outcome", "x", "time", "drug")
> 
> mean of first 2 time pts on Drug1:
> mean.time.1.drug.1 = mean( dat.ex[dat.ex$time==1 & dat.ex$drug=="Drug1",
> c(2,3)])
> mean.time.2.drug.1 = mean( dat.ex[dat.ex$time==2 & dat.ex$drug=="Drug1",
> c(2,3)])
> 
> dat.ex.reduced = as.data.frame(rbind(mean.time.1.drug.1,
> mean.time.2.drug.1))
> dat.ex.reduced$Drug = c("Drug1", "Drug1")  ## add back Drug variable and
> time variable
> dat.ex.reduced$time = c(1,2)
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 

-- 
View this message in context: http://www.nabble.com/summarizing-dataframe-at-variable-factor-levels-tf4030788.html#a11450001
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

R oe  1"lny