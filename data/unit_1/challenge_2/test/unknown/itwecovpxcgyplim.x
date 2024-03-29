From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 13:48:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CHm6L9029929
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 13:48:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CHlgSg010415;
	Tue, 12 Jun 2007 19:47:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.168])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CHgAx8008137
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 19:42:10 +0200
Received: by ug-out-1314.google.com with SMTP id 36so213189uga
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 10:42:10 -0700 (PDT)
Received: by 10.67.25.9 with SMTP id c9mr671924ugj.1181670130006;
	Tue, 12 Jun 2007 10:42:10 -0700 (PDT)
Received: by 10.67.28.5 with HTTP; Tue, 12 Jun 2007 10:42:09 -0700 (PDT)
Message-ID: <971536df0706121042r1aabcf03qf69ca6a117afab38@mail.gmail.com>
Date: Tue, 12 Jun 2007 13:42:09 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "Earl F. Glynn" <efg@stowers-institute.org>
In-Reply-To: <f4min7$hu5$1@sea.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
References: <f4min7$hu5$1@sea.gmane.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
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

Here is some code. It replaces [ and ] with = sign and reads the result
into a data frame, DF.  DF2 is similar except the section is now in V3.
DF3 is like like DF2 except sections are carried forward and finally
we remove the rows which only had sections.

Lines.raw <- "[Section1]
var1=value1
var2=value2
[Section2]
A=value3
B=value4
"

Lines <- readLines(textConnection(Lines.raw))
Lines2 <- chartr("[]", "==", Lines)
DF <- read.table(textConnection(Lines2), as.is = TRUE, sep = "=", fill = TRUE)
DF2 <- transform(DF, V3 = ifelse(V1 == "", V2, NA))
L <- !is.na(DF2$V3)
DF3 <- transform(DF2, V3 = V3[c(NA, which(L))[cumsum(L)+1]])
subset(DF3, V1 != "")

The result is:

    V1     V2       V3
2 var1 value1 Section1
3 var2 value2 Section1
5    A value3 Section2
6    B value4 Section2


On 6/12/07, Earl F. Glynn <efg@stowers-institute.org> wrote:
> I need to process some datasets where the configuration information was
> stored in .INI-like files, i.e., text files with sections like this:
>
> [Section1]
> var1=value1
> var2=value2
> [Section2]
> A=value3
> B=value4
>
> ...
>
> >From Google and other searches I haven't found any package, or function
> within a package, that reads .INI files into an R list, or other data
> structure.
>
>
>
> Any suggestions, or do I need to write my own?
>
> efg
>
> Earl F. Glynn
> Stowers Institute for Medical Research
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

lAB
3a/PeLm>S3