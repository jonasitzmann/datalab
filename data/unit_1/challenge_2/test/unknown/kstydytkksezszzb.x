From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 19:47:51 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65NlmL9000507
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 19:47:49 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65NjDrZ021953;
	Fri, 6 Jul 2007 01:45:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65Niw7L021869
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <R-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 01:45:00 +0200
Received: from [127.0.0.1]
	(IDENT:U2FsdGVkX1+HASv/VA5thXPgKdaO1g6on1ZkPfEo1Cw@localhost.localdomain
	[127.0.0.1])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l65NfUpL030559;
	Thu, 5 Jul 2007 19:41:30 -0400
Message-ID: <468D81A5.5070308@stats.uwo.ca>
Date: Thu, 05 Jul 2007 19:41:25 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Peter Dalgaard <p.dalgaard@biostat.ku.dk>
References: <20070705200046.M65248@centroin.com.br>
	<468D56CB.8070703@biostat.ku.dk>
In-Reply-To: <468D56CB.8070703@biostat.ku.dk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] Me again, about the horrible documentation of tcltk
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

On 05/07/2007 4:38 PM, Peter Dalgaard wrote:
> Alberto Monteiro wrote:
>> How on Earth can I know what are the arguments of any of the functions of 
>> the tcl/tk package? I tried hard to find, using all search engines 
>> available, looking deep into keywords of R, python's tkinter and tcl/tk, but 
>> nowhere I found anything remotely similar to a help.
>>
>> For example, what are the possible arguments to tkgetOpenFile?
>>
>> I know that this works:
>>
>> library(tcltk)
>> filename <- tclvalue(tkgetOpenFile(
>>   filetypes="{{Porn Files} {.jpg}} {{All files} {*}}"))
>> if (filename != "") cat("Selected file:", filename, "\n")
>>
>> but, besides filetypes, what are the other arguments to
>> tkgetOpenFile? I would like to force the files to be sorted by
>> time, with most recent files coming first (and no, the purpose is
>> not to use for porn files).
>>
>>   
> man n tk_getOpenFile
> 
> or if you are not on Unix/Linux, find it online with Google

Chances are, if Alberto is not on Unix/Linux he is on Windows (assuming 
Mac OSX counts as an *ix), and TCL and TK help files are distributed 
with R.  See RHOME/Tcl/doc.  He'll still have the problem of converting 
TCL/TK documentation conventions into their R equivalents, but I think 
you've given reasonable documentation on how to do that.

I wish we had a good way to refer to these files from the rest of the 
help system.

Duncan Murdoch


>> Alberto Monteiro
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
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

             

ly5�0i5hZNw