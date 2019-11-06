From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 02:49:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T6nqL9021730
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 02:49:52 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T6nClC009530;
	Fri, 29 Jun 2007 08:49:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T6mbQ1009362
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 08:48:38 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I4AHT-0001AK-Vk
	for r-help@stat.math.ethz.ch; Thu, 28 Jun 2007 23:48:35 -0700
Message-ID: <11355842.post@talk.nabble.com>
Date: Thu, 28 Jun 2007 23:48:35 -0700 (PDT)
From: Mike Meredith <mmeredith@wcs.org>
To: r-help@stat.math.ethz.ch
In-Reply-To: <1183030481.9413.17.camel@gsimpson.geog.ucl.ac.uk>
MIME-Version: 1.0
X-Nabble-From: mmeredith@wcs.org
References: <105933.73372.qm@web63915.mail.re1.yahoo.com>
	<1183030481.9413.17.camel@gsimpson.geog.ucl.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] using self-written functions
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


I use something like Gavin's solution for functions which are not used too
often. The problem with using 'source' is that the user environment gets
cluttered.

I 'save' the most useful functions to a single file ("MMmisc.Rda"), put it
in the HOMEPATH directory (use Sys.getenv("HOMEPATH") to find where that
is), then I put the line

attach(what=paste(Sys.getenv("HOMEPATH"), "MMmisc.Rda", sep="/"))

in Rprofile.site in C:\Program Files\R\R-2.5.0\etc folder.

Works for me! You don't have the luxury of help files, etc, but it's easy to
update.

HTH -- Mike.


Gavin Simpson wrote:
> 
> On Thu, 2007-06-28 at 17:29 +0800, R. Leenders wrote:
>> ... How can
>> I access my own functions in R without having to copy-paste them
>> everytime and run them manually so I can call them later? Do I need to
>> learn how to write a package and attach the package to make the
>> functions available at all times? Is there another way?
> 
> Building a package is one way, and not that difficult once you've read
> the Writing R Extensions manual.
> 
> An alternative is to have a directory where you keep R function scripts.
> Put your functions in here in text files with say a .R extension. Then
> in R you can source one or more of these R scripts as required, using
> the source() function.
> 
> Say you have a directory, myScripts at the base of file system
> (/home/user say on Linux or C:\ on Windows). in this directory there is
> a file called my_r_function.R. To use this script/function in an R
> session, you would issue:
> 
> ## replace /home/user/ with what ever is the correct path for your
> ## system
> source("/home/user/myScripts/my_r_function.R")
> 
> Which would make available to your current session any functions defined
> in my_r_function.R.
> 
> Read ?source for more information.
> 
> HTH
> 
> G
> 
>> 
>> thanks, James
>> 
>> 
>> 
>> 
>>        
>> ____________________________________________________________________________________
>> 
>> 
>> 	[[alternative HTML version deleted]]
>> 
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
> -- 
> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
>  Gavin Simpson                 [t] +44 (0)20 7679 0522
>  ECRC, UCL Geography,          [f] +44 (0)20 7679 0565
>  Pearson Building,             [e] gavin.simpsonATNOSPAMucl.ac.uk
>  Gower Street, London          [w] http://www.ucl.ac.uk/~ucfagls/
>  UK. WC1E 6BT.                 [w] http://www.freshwaters.org.uk
> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
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
View this message in context: http://www.nabble.com/using-self-written-functions-tf3993814.html#a11355842
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

.  rPWI 62