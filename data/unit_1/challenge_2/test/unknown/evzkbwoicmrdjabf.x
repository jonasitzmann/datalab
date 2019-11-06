From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 02:11:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l646BNL9006565
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 02:11:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l6469VtQ014796;
	Wed, 4 Jul 2007 08:09:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_20,
	DKIM_POLICY_SIGNSOME, SARE_SUB_OBFU_OTHER,
	WEIRD_QUOTING autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l6469NT6014722
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 08:09:23 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l6469Khf020116; 
	Wed, 4 Jul 2007 07:09:21 +0100 (BST)
Date: Wed, 4 Jul 2007 07:09:20 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Duncan Murdoch <murdoch@stats.uwo.ca>
In-Reply-To: <468AD76B.7060209@stats.uwo.ca>
Message-ID: <Pine.LNX.4.64.0707040658170.12086@gannet.stats.ox.ac.uk>
References: <fd913b0d0707031037o37629382ke6cb28af5fc56b76@mail.gmail.com>
	<468AD76B.7060209@stats.uwo.ca>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: David Reiss <dreiss@systemsbiology.org>, r-help@stat.math.ethz.ch
Subject: Re: [R] bug in closing gzfile-opened connections?
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

Note that the use of read.table() does make a difference.  If you did

x <- scan(gzfile("xxx.gz"), list("","",""))

you would leave an unused connection, and showConnections(all=TRUE) would 
show this.  There is a finite pool of connections, and in general the 
correct way to use them is

con <- gzfile("xxx.gz")
x <- scan(con, list("","",""))
close(con)

read.table() is the exception, so I suspect it is other things that have 
been done in the session that have used up the pool of connections.

On Tue, 3 Jul 2007, Duncan Murdoch wrote:

> On 03/07/2007 1:37 PM, David Reiss wrote:
>> Hi,
>> I am making multiple calls to gzfile() via read.table(), e.g.
>>
>>> x <- read.table( gzfile( "xxx.gz" ) )
>>
>> After i do this many times (I haven't counted, but probably between 50 and
>> 100 times) I get the error message:
>>
>> Error in open.connection(file, "r") : unable to open connection
>> In addition: Warning message:
>> cannot open compressed file 'xxx.gz'
>>
>> however, I also find that:
>>
>>> showConnections()
>>      description class mode text isopen can read can write
>>
>> so there are no (apparently) open connections. Calling closeAllConnections()
>> does not fix the problem. I have to quit and re-start R.
>> I am using R 2.5.0 on a Mac (OSX 10.4.9).
>>
>> Anyone know if this is a bug or a 'feature'? I see from the gzfile help
>> that:
>>
>>  In general functions using connections
>>      will open them if they are not open, but then close them again, so
>>      to leave a connection open call 'open' explicitly.
>
> You didn't give a reproducible example, so I couldn't say.  When I
> create a gzipped version of a write.table output and run
>
> for(i in 1:1000) read.table(gzfile(f))
>
> in R 2.5.0 I don't see a problem.  This is on Windows, but I doubt that
> makes a difference.
>
> Duncan Murdoch
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

-- 
Brian D. Ripley,                  ripley@stats.ox.ac.uk
Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
University of Oxford,             Tel:  +44 1865 272861 (self)
1 South Parks Road,                     +44 1865 272866 (PA)
Oxford OX1 3TG, UK                Fax:  +44 1865 272595

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

i-voeo