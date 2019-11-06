From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 11:54:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EFs5L9023710
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 11:54:11 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EFrBQD023267;
	Thu, 14 Jun 2007 17:53:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from natkenexv02.dfo-mpo.gc.ca (natkenexv02.dfo-mpo.gc.ca
	[198.103.161.102])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EFF9iW008475
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 17:15:09 +0200
Received: from nflwhex01.nfl.dfo-mpo.ca ([198.103.161.1]) by
	natkenexv02.dfo-mpo.gc.ca with Microsoft SMTPSVC(6.0.3790.1830);
	Thu, 14 Jun 2007 11:15:09 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Thu, 14 Jun 2007 12:45:08 -0230
Message-ID: <FBF367376AD9E64BB8531D56CA38DA6A01C7CB4D@nflwhex01.nfl.dfo-mpo.ca>
In-Reply-To: <FBF367376AD9E64BB8531D56CA38DA6A01C7CB4C@nflwhex01.nfl.dfo-mpo.ca>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Using subset() in a user-defined function
Thread-Index: Aceui+tgx30O7PB1TByRNa9NdyPnugAB/XLgAAB4bGA=
References: <FBF367376AD9E64BB8531D56CA38DA6A01C7CB4B@nflwhex01.nfl.dfo-mpo.ca>
	<46714981.8030109@stats.uwo.ca>
	<FBF367376AD9E64BB8531D56CA38DA6A01C7CB4C@nflwhex01.nfl.dfo-mpo.ca>
From: "Tobin, Jared" <TobinJR@DFO-MPO.GC.CA>
To: "Tobin, Jared" <TobinJR@DFO-MPO.GC.CA>
X-OriginalArrivalTime: 14 Jun 2007 15:15:09.0067 (UTC)
	FILETIME=[CBC9B5B0:01C7AE96]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5EFF9iW008475
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Using subset() in a user-defined function
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

I should mention the idea I worked on yesterday was cat()ing together
the appropriate condition strings and then ideally printing that entire
concatenated string into the subset argument.  However, as far as I
know, cat() only prints directly on the console and cannot be used to
substitute input text into a function, so I scrapped that idea.

Just figured I'd mention that in case there does happen to be a way to
do such a thing, and someone knows of a way offhand.

--

jared tobin, student research assistant
dept. of fisheries and oceans
tobinjr@dfo-mpo.gc.ca

-----Original Message-----
From: Tobin, Jared 
Sent: Thursday, June 14, 2007 12:28 PM
To: 'Duncan Murdoch'
Cc: r-help@stat.math.ethz.ch
Subject: RE: [R] Using subset() in a user-defined function

Thanks for the quick response, Duncan.

The given code doesn't seem to work, and possibly due to this reason I
found in the online help for missing() (if I understand it correctly):

"Currently missing() can only be used in the immediate body of the
function that defines the argument, not in the body of a nested function
or a local call. This may change in the future."

So as I understand it, missing() cannot refer to the arguments of
function1 if it is used in an argument of subset()?  It seems to remain
a promising function for this situation regardless, but I'm not sure how
I could implement it into the subset() arguments offhand.

--

jared tobin, student research assistant
dept. of fisheries and oceans
tobinjr@dfo-mpo.gc.ca

-----Original Message-----
From: Duncan Murdoch [mailto:murdoch@stats.uwo.ca]
Sent: Thursday, June 14, 2007 11:28 AM
To: Tobin, Jared
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Using subset() in a user-defined function

On 6/14/2007 9:38 AM, Tobin, Jared wrote:
> Hello,
> 
> I'm having a problem with using subset() inside a function I'm
writing.
> Ignoring everything else in the function, the problem can be 
> illustrated by (where master.frame is the data frame I'm using):
> 
> 
> function1 <- function(arg1="", arg2="", arg3=""){
> 
> 	temp.frame <- subset(master.frame, a == arg1 & b == arg2 & c ==
> arg3)
> 
> }
> 
> 
> This works fine if the user specifies all arguments, but if any one or

> more of the arguments isn't specified, say arg1 for example, the 
> subset is empty because subset() goes looking for values of a == "" in

> master.frame, and there are none.  I want it to work such that if an 
> argument is not specified, it is not included in what subset() goes 
> looking for.  So if I were to input:
> 
> function1(arg2=5, arg3=6)
> 
> then in function1, the subset command will look like
> 
> 	temp.frame <- subset(master.frame, b == 5 & c == 6)
> 
> 
> Any suggestions would be much appreciated.

Code it like this:

subset(master.frame, (missing(arg1) | a == arg1) &
                      (missing(arg2) | b == arg2) &
                      (missing(arg3) | c == arg3))

I haven't tried this, and I forget what happens in subset() if you pass
it a subset of the wrong length, so it might fail if all args are
missing, but otherwise I think it should work.  It does depend on
defaults for the args existing and not causing errors in the equality
tests (it's not using shortcut evaluation).

Duncan Murdoch

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

/haodT