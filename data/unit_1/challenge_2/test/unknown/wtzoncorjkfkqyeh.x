From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 05:30:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5S9U4L9008527
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 05:30:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S9SP2X025378;
	Thu, 28 Jun 2007 11:28:49 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp812.mail.ird.yahoo.com (smtp812.mail.ird.yahoo.com
	[217.146.188.72])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5S9S0D3025254
	for <R-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 11:28:00 +0200
Received: (qmail 20143 invoked from network); 28 Jun 2007 09:27:59 -0000
Received: from unknown (HELO ?192.168.2.2?)
	(robertsonburns@btinternet.com@86.129.90.109 with plain)
	by smtp812.mail.ird.yahoo.com with SMTP; 28 Jun 2007 09:27:59 -0000
X-YMail-OSG: XHQPO0EVM1kGoysc0z.mCJOdLTDMpmL1nH.paujwHmW6wbNX.vfiHDQk4lRuPZIzjZHAyANoDUtpeWGc.VX6G7FL.Fo.UvHR8882dyWnHkx0t8bn
Message-ID: <46837F31.1060204@pburns.seanet.com>
Date: Thu, 28 Jun 2007 10:28:17 +0100
From: Patrick Burns <pburns@pburns.seanet.com>
User-Agent: Mozilla Thunderbird 1.0.7 (Windows/20050923)
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: Prof Brian Ripley <ripley@stats.ox.ac.uk>
References: <4683539A.3030407@siol.net>
	<Pine.LNX.4.64.0706280750150.24371@gannet.stats.ox.ac.uk>
In-Reply-To: <Pine.LNX.4.64.0706280750150.24371@gannet.stats.ox.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <R-help@stat.math.ethz.ch>
Subject: Re: [R] Populate matrix from data.frame
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

You need some caution with Brian's solution as it
depends on the matrix being in the same order as
the factors in the data frame.

a <- data.frame(cbind(x=c('a','a','a','b','c'), 
y=c('a','b','c','d','e'),z=c(1,2,3,4,5)))

mm <- matrix(0,5,5)
colnames(mm) <- c('a','b','c','d','e')
rownames(mm) <- c('a','b','c','d','e')

pp <- mm[5:1, 5:1]

mm[cbind(a$x, a$y)] <- a$z # desired result

pp[cbind(a$x, a$y)] <- a$z # not desired result

It would be nice if the following worked:

mm[cbind(as.character(a$x), as.character(a$y))] <- a$z


Patrick Burns
patrick@burns-stat.com
+44 (0)20 8525 0696
http://www.burns-stat.com
(home of S Poetry and "A Guide for the Unwilling S User")

Prof Brian Ripley wrote:

>On Thu, 28 Jun 2007, Andrej Kastrin wrote:
>
>  
>
>>Dear all,
>>
>>I have a data frame
>>a <- data.frame(cbind(x=c('a','a','a','b','c'),
>>y=c('a','b','c','d','e'),z=c(1,2,3,4,5)))
>>    
>>
>>>a
>>>      
>>>
>> x y z
>>1 a a 1
>>2 a b 2
>>3 a c 3
>>4 b d 4
>>5 c e 5
>>
>>and a matrix
>>mm <- matrix(0,5,5)
>>colnames(mm) <- c('a','b','c','d','e')
>>rownames(mm) <- c('a','b','c','d','e')
>>    
>>
>>>mm
>>>      
>>>
>> a b c d e
>>a 0 0 0 0 0
>>b 0 0 0 0 0
>>c 0 0 0 0 0
>>d 0 0 0 0 0
>>e 0 0 0 0 0
>>
>>How to populate matrix in a way that first column of data frame 'a'
>>correspond to rownames(mm), second column to colnames(mm) and the third
>>column is the element of matrix 'mm'?
>>    
>>
>
>mm[cbind(a$x, a$y)] <- a$z
>
>Please read about the forms of indexing matrices in 'An Introduction to 
>R'.
>
>  
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

M3, 23i9#.r5 