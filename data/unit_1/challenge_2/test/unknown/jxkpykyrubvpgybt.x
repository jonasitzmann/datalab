From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:26:13 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCJKLh027849
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:26:11 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MLatoi011691;
	Fri, 22 Jun 2007 23:37:08 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailman.pgn.com (mailman.pgn.com [147.79.239.225])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5MLTAIb008522
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 23:29:11 +0200
Received: from (smtp1.corp.dom [172.21.30.151]) by mailman.pgn.com with smtp
	id 62f8_3ee1ffdc_20dc_11dc_838c_0013725341d9;
	Fri, 22 Jun 2007 09:18:43 -0700
Received: from WIZ1-MTA by pgn.com
	with Novell_GroupWise; Fri, 22 Jun 2007 14:29:09 -0700
Message-Id: <467BDCAD020000650000693F@pgn.com>
X-Mailer: Novell GroupWise Internet Agent 7.0.1 
Date: Fri, 22 Jun 2007 14:29:01 -0700
From: "Horace Tso" <Horace.Tso@pgn.com>
To: "Erik Iverson" <iverson@biostat.wisc.edu>,
   "Mark (IED) Leeds" <Mark.Leeds@morganstanley.com>
References: <467BB6340200006500006924@pgn.com>
	<467C1CA0.1080606@biostat.wisc.edu>
	<D3AEEDA31E57474B840BEBC25A8A834401957418@NYWEXMB23.msad.ms.com>
	<467BBED40200006500006931@pgn.com>
In-Reply-To: <467BBED40200006500006931@pgn.com>
Mime-Version: 1.0
Content-Disposition: inline
X-NAI-Spam-Score: -2.5
X-NAI-Spam-Report: 1 Rules triggered
	*  -2.5 -- BAYES_00 -- Bayesian spam probability is 0 to 1%
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5MLTAIb008522
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

Thanks to Mark and Erik for different versions of locf, also Erik's pointer to archive where I found another function due to Simon Fear. I haven't tested the zoo locf function. The following shows their performance. Interestingly, Erik's use of a while loop is the fastest. 

HT.

x = 1:1e5
x[sample(1:1e5, 10000)] = NA

>system.time(z2<-locf.iverson2(x))
   user  system elapsed 
   0.07    0.00    0.06 
> system.time(z1<-locf.iverson(x))
   user  system elapsed 
   0.11    0.00    0.11 
> system.time(z3<-locf.sfear(x))
   user  system elapsed 
   1.13    0.00    1.12 

==================================================
# Due to Erik Iverson
locf.iverson2 = function(x) {
  while(any(is.na(x))) {
    x[is.na(x)] <- x[which(is.na(x))-1]
  }
  x
}

# Due to Simon Fear (Fri Nov 14 17:28:57 2003)
locf.sfear = function(x) { 
  assign("stored.value", x[1], envir=.GlobalEnv) 
  sapply(x, function(x) { 
    if(is.na(x)) 
      stored.value 
    else { 
      assign("stored.value", x, envir=.GlobalEnv) 
      x 
    }}) 
} 

# Due to Erik Iverson 
locf.iverson = function(x, unkn=-1) {
  x[is.na(x)] = unkn  #something that is not a possible price
  run = rle(x)
  run$values[run$values==unkn] = run$values[which(run$values==unkn)-1]
  inverse.rle(run)
}


>>> "Horace Tso" <Horace.Tso@pgn.com> 6/22/2007 12:21 PM >>>
Mark, thanks for the tips. I thought you financial folks must have run into things like these before. Just wonder why this problem wasn't asked more often on this list.

H.


>>> "Leeds, Mark (IED)" <Mark.Leeds@morganstanley.com> 6/22/2007 12:16 PM >>>
I have a function that does this type of thing but it works off a pure
vector so it wouldn have to be modified.
If you make your object a zoo object, the that object has many functions
associated with it and na.locf would
Do what you need, I think.


-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch 
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Erik Iverson
Sent: Friday, June 22, 2007 3:02 PM
To: Horace Tso
Cc: r-help@stat.math.ethz.ch 
Subject: Re: [R] Imputing missing values in time series

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
> have a time series of natural gas prices by flow date. Since gas is 
> not traded on weekends and holidays, I have a lot of missing values,
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
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html 
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help 
PLEASE do read the posting guide
http://www.R-project.org/posting-guide.html 
and provide commented, minimal, self-contained, reproducible code.
--------------------------------------------------------

This is not an offer (or solicitation of an offer) to buy/se...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help 
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html 
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

g  \lA