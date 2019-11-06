From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 11:49:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FFnXL9003971
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 11:49:34 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FFmtq2008332;
	Fri, 15 Jun 2007 17:49:08 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from uni-lueneburg.de (webmail.stud-lg.uni-lueneburg.de
	[193.174.46.77])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FFmnVS008307
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 17:48:49 +0200
Received: from [193.174.39.158] (account pfister [193.174.39.158] verified)
	by uni-lueneburg.de (CommuniGate Pro SMTP 5.0.9)
	with ESMTPSA id 4209179; Fri, 15 Jun 2007 17:48:49 +0200
Message-ID: <4672B51D.4010105@uni-lueneburg.de>
Date: Fri, 15 Jun 2007 17:49:49 +0200
From: Pfister <pfister@uni-lueneburg.de>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: Prof Brian Ripley <ripley@stats.ox.ac.uk>
References: <467292E8.4050603@uni-lueneburg.de>
	<Pine.LNX.4.64.0706151522020.27080@auk.stats>
	<Pine.LNX.4.64.0706151606440.4570@gannet.stats.ox.ac.uk>
In-Reply-To: <Pine.LNX.4.64.0706151606440.4570@gannet.stats.ox.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Problem with workspace loading after languageR use
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
Content-Type: text/plain; charset="iso-8859-2"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5FFnXL9003971

Dear Brian,

thanks a lot for your advice.

Prof Brian Ripley wrote:
> On Fri, 15 Jun 2007, Prof Brian Ripley wrote:
> 
>>
>> I think adding the following to your new session before load() will help
>>
>> findPackageEnv <- function(info)
>>   as.environment(paste("package", "info", sep=":"))

this does not work.

> 
> more likely
> 
> findPackageEnv <- function(info) as.environment(info)

this works, if I load the languageR library before.

> 
> is correct.
>>
>> will work, but if not try
>>
>> findPackageEnv <- function(info) .GlobalEnv

this works unconditionally. Including that line in a local .RProfile 
file, basically solves the problem.

>>
>> If you send me the problematic workspace (or reproduction 
>> instructions) I can take a closer look.

A typical session would look like this (using example data from Hox(2002)):

# from Hox (2002)
hoxpop <- 
read.table("http://www.ruediger-pfister.de/download/popular.dat", 
header=TRUE)
hoxpop$PUPIL <- factor(hoxpop$PUPIL)
hoxpop$SCHOOL <- factor(hoxpop$SCHOOL)
hoxpop$SEX <- factor(hoxpop$SEX)

# load languageR
library(languageR)

# do some analyses ...

# save the workspace
save.image("D:\\statistics\\MultilevelAnalysis\\lm.RData")


After quitting R, the workspace "lm.RData" will not reload.
(this workspace can be downloaded here: 
http://www.ruediger-pfister.de/Downloads/lmRData.zip)


best
R�diger



>>
>>
>> On Fri, 15 Jun 2007, Pfister wrote:
>>
>>> Hello R,
>>>
>>> To analyze multi-level data, I started learning and using lmer. So far
>>> so wonderful. I then found some useful functions in package languageR.
>>> But then the following problem ocurred: Whenever I load and use the
>>> languageR package, then save the workspace - or quit R with saving the
>>> workspace - I am unable to reload that workspace in a later session.
>>> That is, R doesn't start at all when I try to start it by clicking the
>>> workspace file.
>>> Loading languageR before loading the workspace doesn't help, but yields
>>> the message:
>>>
>>> Error in load("D:\\statistics\\MultilevelAnalysis\\.RData") :
>>>         could not find function "findPackageEnv"
>>>
>>> Thus, the saved workspace remains inaccessible. I not 100% certain that
>>> languageR is the scapegoat, but my trial-and-error experiments indicate
>>> it is.
>>>
>>> My system is Win XP Home/Professional:
>>>
>>> > sessionInfo()
>>> R version 2.5.0 Patched (2007-04-24 r41305)
>>> i386-pc-mingw32
>>> locale:
>>> LC_COLLATE=German_Germany.1252;LC_CTYPE=German_Germany.1252;LC_MONETARY=German_Germany.1252;LC_NUMERIC=C;LC_TIME=German_Germany.1252 
>>>
>>> attached base packages:
>>> [1] "splines"   "stats"     "graphics"  "grDevices" "utils"
>>> [6] "datasets"  "methods"   "base"
>>> other attached packages:
>>>   languageR       rpart        MASS      Design    survival
>>>       "0.2"    "3.1-36"    "7.2-34"    "2.0-12"      "2.31"
>>>       Hmisc       e1071       class     cluster       zipfR
>>>     "3.3-2"    "1.5-16"    "7.2-34"    "1.11.7"     "0.6-0"
>>>        lme4        coda      Matrix     lattice
>>> "0.99875-1"    "0.11-2" "0.99875-2"    "0.15-8"
>>>
>>>
>>> thanks for any helpful suggestions!
>>>
>>> best
>>> R�diger
>>>
>>>
>>>
>>
>>
> 

-- 
Hans-R�diger Pfister
Professor of Business Psychology
University of L�neburg
Faculty for Business Administration, Behavioral Sciences and Law
Institute of Experimental Industrial Psychology (LueneLab)
Wilschenbrucher Weg 84
D-21335 L�neburg, Germany
+49-(0)4131 677 7759
pfister@uni-lueneburg.de

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

:- 2