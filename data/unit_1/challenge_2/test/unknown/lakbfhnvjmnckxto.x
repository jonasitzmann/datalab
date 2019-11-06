From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 03:46:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5E7kkL9018304
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 03:46:47 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E7kCMQ030522;
	Thu, 14 Jun 2007 09:46:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E7k4M3030472
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 09:46:04 +0200
Received: by py-out-1112.google.com with SMTP id f31so801214pyh
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 00:46:04 -0700 (PDT)
Received: by 10.35.17.12 with SMTP id u12mr2675045pyi.1181807163854;
	Thu, 14 Jun 2007 00:46:03 -0700 (PDT)
Received: by 10.35.34.4 with HTTP; Thu, 14 Jun 2007 00:46:03 -0700 (PDT)
Message-ID: <dea6cb960706140046l70b83a42rb709f7a8a3c24f8e@mail.gmail.com>
Date: Thu, 14 Jun 2007 09:46:03 +0200
From: "Christophe Pallier" <christophe@pallier.org>
To: "Gabor Grothendieck" <ggrothendieck@gmail.com>
In-Reply-To: <971536df0706132104u3601bd8fuce4319ecf981d342@mail.gmail.com>
MIME-Version: 1.0
References: <f4min7$hu5$1@sea.gmane.org>
	<971536df0706121042r1aabcf03qf69ca6a117afab38@mail.gmail.com>
	<971536df0706121623p14725cbbp82610f2d3149a9e7@mail.gmail.com>
	<971536df0706121906n12bcfd96pb2c45f7e137ab74d@mail.gmail.com>
	<971536df0706132104u3601bd8fuce4319ecf981d342@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: "Earl F. Glynn" <efg@stowers-institute.org>, r-help@stat.math.ethz.ch
Subject: Re: [R] Read Windows-like .INI files into R data structure?
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

On 6/14/07, Gabor Grothendieck <ggrothendieck@gmail.com> wrote:
>
> Here is yet another solution.  This is the simplest so far.
> Lines.raw is as before and the output is a 3 column character
> matrix.

section <- ""
> f <- function(x) {
>         if (length(x) == 1) section <<- gsub("[\\[\\]]", "", x)
>         if (length(x) <= 1) return()
>         return(c(x, section))
> }
> # Lines <- readLines("myfile.ini")
> Lines <- readLines(textConnection(Lines.raw))
> do.call("rbind", lapply(strsplit(Lines, "="), f))



The corresponding awk code fits in one line '/\[/{a=$1;next}{print
$1,$2,a}'.

With the example.ini:

$ awk -F"=" '/\[/{a=$1;next}{print $1,$2,a}' example.ini
var1 value1 [Section1]
var2 value2 [Section1]
A value3 [Section2]
B value4 [Section2]

The output can then be imported in R with read.table.

I know, I am not playing by the rules here... :)
But with programming languages, like with human languages, it pays to be bi
or tri-lingual (or polyglot, if one can).

I also realise that under Windows, it means using the command line,
something that  not so many people are comfortable with nowadays.

One reason people insist on using only one language to do everything may be
due to the awkwardness and limitations of the default scripting language
under Windows (DOS). Having everything done inside one single R script can
seem simpler. But a divide-and-conquer approach, with a few small scripts,
can actually work better in some complex cases.

I tend to do as much as possible in R but for all serious data analysis
tasks, I use Makefile to "glue" the various stages of processing. Data
preprocessing stages (performed with R or other tools) create files that are
then processed with R. One advantage is that preprocessing is performed only
when raw input data change; but the most important, is that when I come back
years later, I can follow the exact flow of transformations.
Again, "make"  (like awk  or R) is not without limits and idiosyncrasies. If
someone has a simpler solution, I am interested to hear about it.

Christophe





-- 
Christophe Pallier (http://www.pallier.org)

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

oYii o
 