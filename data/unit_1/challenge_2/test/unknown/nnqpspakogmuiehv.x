From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 08:17:50 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DCHmL9007411
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 08:17:49 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DCH3mv020688;
	Wed, 13 Jun 2007 14:17:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailgate02.smtp.vanderbilt.edu (mailgate02.smtp.Vanderbilt.Edu
	[129.59.1.72])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DCCOou018513
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <R-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 14:12:26 +0200
Received: from smtp09.smtp.vanderbilt.edu (smtp09.smtp.Vanderbilt.Edu
	[129.59.1.239])
	by mailgate02.smtp.vanderbilt.edu (8.13.8/8.13.8) with ESMTP id
	l5DCCKEe025208
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 13 Jun 2007 07:12:20 -0500
Received: from smtp09.smtp.vanderbilt.edu (localhost [127.0.0.1])
	by smtp09.smtp.vanderbilt.edu (8.12.11/8.12.11/VU-3.7.9C+d3.7.9) with
	ESMTP id l5DCCKmM001611; Wed, 13 Jun 2007 07:12:20 -0500 (CDT)
Received: from [192.168.0.111] (c-68-53-173-123.hsd1.tn.comcast.net
	[68.53.173.123])
	by smtp09.smtp.vanderbilt.edu (8.12.11/8.12.11/VU-3.7.9.3B+d3.7.9) with
	ESMTP id l5DCCHAu001608; Wed, 13 Jun 2007 07:12:18 -0500 (CDT)
Message-ID: <466FDF21.8050605@vanderbilt.edu>
Date: Wed, 13 Jun 2007 07:12:17 -0500
From: Frank E Harrell Jr <f.harrell@vanderbilt.edu>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: Uwe Ligges <ligges@statistik.uni-dortmund.de>
References: <46706606.6070702@mq.edu.au>
	<466FA9AC.3050901@statistik.uni-dortmund.de>
In-Reply-To: <466FA9AC.3050901@statistik.uni-dortmund.de>
X-Proofpoint-Virus-Version: vendor=fsecure engine=4.65.5502:2.3.11, 1.2.37,
	4.0.164 definitions=2007-06-13_07:2007-06-12, 2007-06-13,
	2007-06-13 signatures=0
X-PPS: No, score=0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: Ian Watson <ian.watson@mq.edu.au>, R-help@stat.math.ethz.ch
Subject: Re: [R] Design library installation problem
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

Uwe Ligges wrote:
> 
> 
> Ian Watson wrote:
>> Dear Listers
>>
>> I have tried to install Frank Harrell's two libaries: Hmisc and Design.
>>
>> I found that Hmisc was listed in the list of packages from the Install 
>> Packages command on the Packages menu, but Design was not. I installed 
>> Hmisc from this list, and when I   issued the library(Hmisc) command, 
>> it loaded into memory correctly.
>>
>> I then copied the Design 1.1-1.zip file from the 
>> http://lib.stat.cmu.edu/S/Harrell/library/r/ site and used the Install 
>> Packages from Local Zip file command.
>> I received no error messages and a visual inspection of the R\library 
>> directory shows Design has been installed.
>>
>> However, when I issued the library(Design) command I get the following 
>> error message:
>>
>> Error in library(Design) : 'Design' is not a valid package -- 
>> installed < 2.0.0?
>>
>>
>> I also notice, from a visual inspection of the R\library\Design\R 
>> directory that there is only one file: design. In other directories, 
>> eg. R\library\Hmisc\R there are usually 3 files:
>> Hmisc
>> Hmisc.rdx
>> Hmisc.rdb
>>
>> I am new to R, and a bit lost. I have read the R-admin.pdf 
>> documentation on packages but am still unsure how to proceed from here.
>>
>> I would appreciate any advice, and any answers to the following 
>> questions:
>>
>> 1) is there a reason why Design is not listed in the Install Packages 
>> list as Hmisc is?
> 
> Yes. The current version does not pass the checks under Windows. Please 
> convince the maintainer to fix the package, and a binary will be made 
> available shortly.

Please note that this would be a lot easier if we did not get a segfault 
when running R CMD CHECK --- a segfault that does not happen with the 
example code is run outside of CMD CHECK.  Charles Thomas Dupont is 
working hard on this.

Frank

-- 
Frank E Harrell Jr   Professor and Chair           School of Medicine
                      Department of Biostatistics   Vanderbilt University

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

2ekfN,gub.