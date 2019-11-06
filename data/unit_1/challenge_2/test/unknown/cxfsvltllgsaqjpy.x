From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 18:03:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57M3UhB007600
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 18:03:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57M1WpU012799;
	Fri, 8 Jun 2007 00:01:55 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_40, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.173])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57M1Qph012778
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 00:01:26 +0200
Received: by ug-out-1314.google.com with SMTP id 36so734684uga
	for <r-help@stat.math.ethz.ch>; Thu, 07 Jun 2007 15:01:25 -0700 (PDT)
Received: by 10.66.244.12 with SMTP id r12mr1474418ugh.1181253685329;
	Thu, 07 Jun 2007 15:01:25 -0700 (PDT)
Received: by 10.67.28.5 with HTTP; Thu, 7 Jun 2007 15:01:25 -0700 (PDT)
Message-ID: <971536df0706071501s6c744f12o3ad64e98d590bcc9@mail.gmail.com>
Date: Thu, 7 Jun 2007 18:01:25 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "John Kane" <jrkrideau@yahoo.ca>
In-Reply-To: <603794.26626.qm@web32807.mail.mud.yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <603794.26626.qm@web32807.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] character to time problem
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

Perhaps you want one of these:

> sort(as.Date(aa$times, "%d/%m/%Y"))
[1] "1995-03-02" "2001-05-12" "2007-02-14"

> sort(as.Date(aa$times, "%d/%m/%Y"), na.last = TRUE)
[1] "1995-03-02" "2001-05-12" "2007-02-14" NA           NA
[6] NA


On 6/7/07, John Kane <jrkrideau@yahoo.ca> wrote:
> I am trying to clean up some dates and I am clearly
> doing something wrong.  I have laid out an example
> that seems to show what is happening with the "real"
> data.  The  coding is lousy but it looks like it
> should have worked.
>
> Can anyone suggest a) why I am getting that NA
> appearing after the strptime() command and b) why the
> NA is disappearing in the sort()? It happens with
> na.rm=TRUE  and na.rm=FALSE
> -------------------------------------------------
> aa  <- data.frame( c("12/05/2001", " ", "30/02/1995",
> NA, "14/02/2007", "M" ) )
> names(aa)  <- "times"
> aa[is.na(aa)] <- "M"
> aa[aa==" "]  <- "M"
> bb <- unlist(subset(aa, aa[,1] !="M"))
> dates <- strptime(bb, "%d/%m/%Y")
> dates
> sort(dates)
> --------------------------------------------------
>
> Session Info
> R version 2.4.1 (2006-12-18)
> i386-pc-mingw32
>
> locale:
> LC_COLLATE=English_Canada.1252;
> LC_CTYPE=English_Canada.1252;
> LC_MONETARY=English_Canada.1252;
> LC_NUMERIC=C;LC_TIME=English_Canada.1252
>
> attached base packages:
> [1] "stats"     "graphics"  "grDevices" "utils"
> "datasets"  "methods"   "base"
>
> other attached packages:
>  gdata   Hmisc
> "2.3.1" "3.3-2"
>
>  (Yes I know I'm out of date but I don't like
> upgrading just as I am finishing a project)
>
> Thanks
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

             

pt6Wn4tn> pRg