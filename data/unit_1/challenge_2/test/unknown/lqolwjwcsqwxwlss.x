From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 11:50:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56FoMhB023428
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 11:50:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56FnSI9002872;
	Wed, 6 Jun 2007 17:49:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No,
	score=0.0 required=5.0 tests=DKIM_POLICY_SIGNSOME autolearn=no
	version=3.2.0
Received: from rwcrmhc11.comcast.net (rwcrmhc11.comcast.net [204.127.192.81])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56FNGsV024046
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 17:23:17 +0200
Received: from [192.168.3.90] (c-24-4-2-123.hsd1.ca.comcast.net[24.4.2.123])
	by comcast.net (rwcrmhc11) with ESMTP
	id <20070606152312m11008u62ge>; Wed, 6 Jun 2007 15:23:12 +0000
Message-ID: <4666D15D.1000107@dcn.davis.ca.us>
Date: Wed, 06 Jun 2007 08:23:09 -0700
From: Jeff Newmiller <jdnewmil@dcn.davis.ca.us>
User-Agent: Thunderbird 1.5.0.10 (X11/20070306)
MIME-Version: 1.0
To: jim holtman <jholtman@gmail.com>
References: <10978448.post@talk.nabble.com>
	<644e1f320706060626y36dcf28ar3ec72a731c4aa72e@mail.gmail.com>
In-Reply-To: <644e1f320706060626y36dcf28ar3ec72a731c4aa72e@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, tronter <pev340002003@yahoo.com>
Subject: Re: [R] R: x-y data
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

Or read ?attach

   attach(something)
   (x+y)/2
   detach(something)

jim holtman wrote:
> Can you provide an example of your data.  Assuming that you have a .cvs file
> and the column names are 'x' and 'y' and you have used 'read.csv', then you
> would have:
> 
> (something$x + something$y) / 2
> 
> 
> 
> On 6/5/07, tronter <pev340002003@yahoo.com> wrote:
>>
>> Hello
>>
>> I have an Excel file with x-y data. I saved this file as a cvs file. Then
>> I
>> used the read.table() function to read the data into R. If I have a
>> formula
>> like (x+y)/2, how would I access x and y in R? I have the table named as
>> something. But how do I access the individual columns if I want to plug
>> them
>> into the formula?

-- 
---------------------------------------------------------------------------
Jeff Newmiller                        The     .....       .....  Go Live...
DCN:<jdnewmil@dcn.davis.ca.us>        Basics: ##.#.       ##.#.  Live Go...
                                       Live:   OO#.. Dead: OO#..  Playing
Research Engineer (Solar/Batteries            O.O#.       #.O#.  with
/Software/Embedded Controllers)               .OO#.       .OO#.  rocks...1k

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

xn e