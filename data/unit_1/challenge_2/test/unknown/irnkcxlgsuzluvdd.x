From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 10:46:57 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KEkuL9011167
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 10:46:57 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KEjQsP019930;
	Wed, 20 Jun 2007 16:45:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KEHhY0009217
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 16:17:45 +0200
Received: from root by ciao.gmane.org with local (Exim 4.43)
	id 1I10xa-00082g-Oy
	for r-help@stat.math.ethz.ch; Wed, 20 Jun 2007 16:15:03 +0200
Received: from adsl-66-140-109-199.dsl.lbcktx.swbell.net ([66.140.109.199])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 16:15:02 +0200
Received: from myrddincox by adsl-66-140-109-199.dsl.lbcktx.swbell.net with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 16:15:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: stephen cox <myrddincox@gmail.com>
Date: Wed, 20 Jun 2007 13:49:44 +0000 (UTC)
Lines: 73
Message-ID: <loom.20070620T154003-450@post.gmane.org>
References: <98C49113-3775-4EDC-B8C2-C0E528B6375B@systbot.uzh.ch>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 66.140.109.199 (Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US;
	rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Dissimilarity Analysis
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
Content-Type: text/plain; charset="utf-8"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5KEkuL9011167

Hi Birgit - looks like you have a few issues here.
Birgit Lemcke <birgit.lemcke <at> systbot.uzh.ch> writes:
> > Hello you all!> > I am a completely new user of R and I have a problem to solve.> I am using Mac OS X on a PowerBook.> > I have a table that looks like this:> >             species X1 X2 X3 X4 X5 X6 X7 X8 X9 X10 X11 X12 X13 X14  > X15 X16 X17 X18 X19 X20 X21> 1        Anth_cap1  1  0  0  1  0  1  0  0  1   0   0   0   0   0    > 0   0   1   0   0   0   1> 2       Anth_crin1  1  0  0  1  0  1  0  0  1   0   1   0   0   0    > 0   0   0   1   0   0   1> 3        Anth_eck1  1  0  0  1  0  1  0  0  1   0   0   0   0   0    > 0   0   0   1   0   0   1> 4       Anth_gram1  1  0  0  1  0  1  0  0  1  NA  NA  NA  NA   0    > 0   0   0   1   0   0   0> 5       Anth_insi1  1  0  0  1  0  1  0  0  1   0   0   0   1   0    > 0   0   0   1   0   0   1> > All columns  are binary coded characters.> The Import was done by this> > Test<-read.table("TestRFemMalBivariat1.csv",header = TRUE, sep = ";")
First - you need to transpose the matrix to have species as columns.  You can dothis with:
d2 = data.frame(t(Test[,-1]))colnames(d2) = Test[,1]  #now use d2

 > Now I try to perform a similarity analysis with the dsvdis function  > of the labdsv package with the sorensen-Index.> > My first question is if all zeros in my table are seen as missing  > values and if it islike that how can I change without turning zero  > into other numbers?
no - the zeros are valid observations.  the na's are missing data.

>   DisTest<-dsvdis(Test, index = "sorensen")> > But I always get back this error message:> > Warnung in symbol.For("dsvdis") :'symbol.For' is not needed: please  > remove it> Fehler in dsvdis(Test, index = "sorensen") :> 	NA/NaN/Inf in externem Funktionsaufruf (arg 1)> Zusätzlich: Warning message:> NAs durch Umwandlung erzeugt


Second - you have an issue with missing data.  It looks like dsvdis does notlike the NA's - so you must make a decision about what to do.  Delete thatspecies, delete that site, or whatever...
Finally - the warning over symbol.For is an issue with the labdsv library itself- nothing you are doing wrong.  The results will still be valid - but the use ofsymbol.For is something that will eventually need to be changed in the labdsvlibrary.
hth,
stephen
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

 

VoZc