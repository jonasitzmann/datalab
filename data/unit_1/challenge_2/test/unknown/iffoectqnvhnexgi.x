From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 19:00:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64N04L9016574
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 19:00:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64MxLx7010300;
	Thu, 5 Jul 2007 00:59:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=AWL, BAYES_00,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64MwVSA010009
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 00:58:33 +0200
Received: from [127.0.0.1]
	(IDENT:U2FsdGVkX19gfT+qk4ItUr6jopRSQFdh4z2JDRfSX8s@localhost.localdomain
	[127.0.0.1])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l64MwUeN002378;
	Wed, 4 Jul 2007 18:58:30 -0400
Message-ID: <468C2613.1060308@stats.uwo.ca>
Date: Wed, 04 Jul 2007 18:58:27 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Edna Bell <edna.bell01@gmail.com>
References: <2d1ebb110707041543v2148c2c5nb58d55e8bb51a656@mail.gmail.com>
In-Reply-To: <2d1ebb110707041543v2148c2c5nb58d55e8bb51a656@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Newbie creating package with compiled code
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

On 04/07/2007 6:43 PM, Edna Bell wrote:
> Hi R Gurus!
> 
> I'm trying to create a test package using the package.skeleton function.
> I wanted to  add some compiled code too.
> In the src library, I put together a baby subroutine, compiled it and created
> a test.dll
> 
> When I use the R cmd build, it works fine.  But I get into trouble
> with the R CMD check section.
> 
> 
> /home/Desktop/R-2.5.1/bin # ./R CMD check mypkg
> * checking for working latex ... OK
> * using log directory '/home/Desktop/R-2.5.1/bin/mypkg.Rcheck'
> * using R version 2.5.1 (2007-06-27)
> * checking for file 'mypkg/DESCRIPTION' ... OK
> * checking extension type ... Package
> * this is package 'mypkg' version '1.0'
> * checking package dependencies ... OK
> * checking if this is a source package ... OK
> * checking whether package 'mypkg' can be installed ... OK
> * checking package directory ... OK
> * checking for portable file names ... OK
> * checking for sufficient/correct file permissions ... OK
> * checking DESCRIPTION meta-information ... OK
> * checking top-level files ... OK
> * checking index information ... OK
> * checking package subdirectories ... OK
> * checking R files for non-ASCII characters ... OK
> * checking R files for syntax errors ... OK
> * checking whether the package can be loaded ... ERROR
> Error in .find.package(package, lib.loc, verbose = verbose) :
>         there are no packages called 'mypkg', 'stats', 'graphics',
> 'grDevices', 'utils', 'datasets', 'methods', 'base'
> Error in library(mypkg) : .First.lib failed for 'mypkg'
> Execution halted
> 
> It looks like this package has a loading problem: see the messages for
> details.
> 
> Here is the mypkg.R file
> sss <- "/home/hodgesse/Desktop/R-2.5.1"
> .First.lib <- function(lib=sss,pkg="mypkg")
> 	   library.dynam("mypkg.so",pkg="mypkg",lib=sss)

That's a very strange .First.lib.  I think you'll have more success with 
a simpler one:

.First.lib <- function(libname, pkgname)
   library.dynam("mypkg", package=pkgname, lib.loc=libname)

(and sss is not needed at all).

Duncan Murdoch

> 
> 
> f <- function(x,y) x+y
> 
> g <-function(x,y) x-y
> 
> 
> Thanks for any help
> 
> Edna
> mailto: edna.bell01@gmail.com
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

  

4 _,i0AtMt