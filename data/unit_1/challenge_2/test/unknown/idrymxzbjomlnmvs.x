From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 22:41:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C2exL9021444
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 22:40:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C2dXef016772;
	Tue, 12 Jun 2007 04:39:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from imo-m28.mx.aol.com (imo-m28.mx.aol.com [64.12.137.9])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C2dLab016652
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 04:39:21 +0200
Received: from ecjbosu@aim.com
	by imo-m28.mx.aol.com (mail_out_v38_r9.2.) id o.be3.14e8ccdb (49383);
	Mon, 11 Jun 2007 22:38:30 -0400 (EDT)
Received: from [192.168.2.2] (cpe-72-181-211-137.houston.res.rr.com
	[72.181.211.137]) by ciaaol-d06.mail.aol.com (v115.17) with
	ESMTP id MAILCIAAOLD065-c0e7466e07252ee;
	Mon, 11 Jun 2007 22:38:30 -0400
Message-ID: <466E0723.70206@aol.com>
Date: Mon, 11 Jun 2007 21:38:27 -0500
From: "Joe W. Byers" <ecjbosu@aol.com>
User-Agent: Thunderbird 1.5.0.10 (Windows/20070221)
MIME-Version: 1.0
Newsgroups: gmane.comp.lang.r.general
To: Henric Nilsson <nilsson.henric@gmail.com>
References: <A36876D3F8A5734FA84A4338135E7CC3E8C5DD@BAN-MAILSRV03.Amba.com>
	<17191.212.209.13.15.1171634703.squirrel@www.sorch.se>
In-Reply-To: <17191.212.209.13.15.1171634703.squirrel@www.sorch.se>
X-AOL-IP: 72.181.211.137
X-Mailer: Unknown (No Version)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Unable to load RMySQL
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

All,

I have been down for the past two weeks moving from Tulsa to Houston for 
a new job.  I just got internet access yesterday at our new home.  I 
will be working on the RMySQL binary later this week if possible.  There 
is a hitch in compiling the binary.  I have the binaries for an older 
version of MySQL on which the R compilation worked.  A newer version of 
MySQL 5.0.37, I never was able to get the R binaries to compile.

I appreciate your patience here because I have a new job and my family 
and I are trying to organize our new home right now.

Thank you
Joe


Henric Nilsson (Public) wrote:
> Den Ti, 2007-02-13, 11:43 skrev Ravi S. Shankar:
>> Hi R users,
>>
>>
>>
>> I am unable to load RMySQL. The zip file is not available which I guess
>> is needed to load this pakage.
> 
> Please read http://cran.r-project.org/bin/windows/contrib/2.4/ReadMe to
> find out why.
> 
>> I also tried extracting the package from RMySQL_0.5-11.tar.gz  and then
>> pasted the package in the directory where R is loaded for which I am
>> getting the following error message
>>
>> "Error in library(RMySQL) : 'RMySQL' is not a valid package -- installed
>> < 2.0.0?"
> 
> Did you really expect that to work?
> 
>> Any help would be welcome
> 
> Joe Byers (http://bus.cba.utulsa.edu/byersj/Research.asp) kindly provides
> a Windows binary of RMySQL.
> 
> 
> HTH,
> Henric
> 
> 
> 
>>
>>
>> Thank you,
>>
>>
>>
>> Ravi
>>
>>
>>
>>
>>  [[alternative HTML version deleted]]
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
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



rhYo3