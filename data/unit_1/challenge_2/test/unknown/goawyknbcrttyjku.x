From r-help-bounces@stat.math.ethz.ch  Sat Jun  2 02:16:22 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l526GJhB019546
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 02:16:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l526EkeB003870;
	Sat, 2 Jun 2007 08:15:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=AWL, BAYES_00,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l526EZ2V003776
	for <r-help@stat.math.ethz.ch>; Sat, 2 Jun 2007 08:14:35 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l526EO5w019403; 
	Sat, 2 Jun 2007 07:14:26 +0100 (BST)
Date: Sat, 2 Jun 2007 07:14:24 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Marc Schwartz <marc_schwartz@comcast.net>
In-Reply-To: <1180736611.5233.9.camel@localhost.localdomain>
Message-ID: <Pine.LNX.4.64.0706020706320.28095@gannet.stats.ox.ac.uk>
References: <2323A6D37908A847A7C32F1E3662C80EBA0702@dc1ex01.air.org>
	<1180736611.5233.9.camel@localhost.localdomain>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: "Doran, Harold" <HDoran@air.org>, r-help@stat.math.ethz.ch
Subject: Re: [R] What is the maximum size of a matrix?
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

Thanks Marc.  The information is in help("Memory-limits").

We are aware that at some point we will need to raise this limit and have 
discussed ways to do so.  But it is not going to be an issue for a while: 
working with 16Gb objects needs the sort of amount of memory that will not 
become common for anouther 5 years or so.

On Fri, 1 Jun 2007, Marc Schwartz wrote:

> Harold,
>
> Actually there is a maximum size, even if one had sufficient memory.
>
> Since a matrix is a vector with a dim attribute, and these objects are
> indexed using integers, the maximum sized vector one 'could' create is:
>
>> .Machine$integer.max
> [1] 2147483647
>
> which is:
>
>> 2^31 - 1
> [1] 2147483647
>
> and that does not differ on 64 bit systems.
>
> HTH,
>
> Marc Schwartz
>
>
> On Fri, 2007-06-01 at 17:36 -0400, Doran, Harold wrote:
>> There is no maximum size. This will be driven by (at least) two issues.
>> First, how much memory you have on your own computer and second what
>> data you have in each cell. For instance, an integer takes less memory
>> than a floating point.
>>
>> Other spreadsheet programs like excel limit the number of rows to 16^2
>> irrespective of memory, but that is not true here.
>>
>> Harold
>>
>>
>>> -----Original Message-----
>>> From: r-help-bounces@stat.math.ethz.ch
>>> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Guanrao Chen
>>> Sent: Friday, June 01, 2007 5:06 PM
>>> To: r-help@stat.math.ethz.ch
>>> Subject: [R] What is the maximum size of a matrix?
>>>
>>> hi, Rers
>>>
>>> I tried to find out the max size (# of rows, # of
>>> columns) of a matrix that is allowed by R but failed.
>>>
>>> Can anybody let me know?
>>>
>>> Thanks!
>>> Guanrao
>>>
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

                  

Dtyireo