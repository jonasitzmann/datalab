From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 06:51:38 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59ApaL9008705
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 06:51:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59AoGsW010204;
	Sat, 9 Jun 2007 12:50:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32814.mail.mud.yahoo.com (web32814.mail.mud.yahoo.com
	[68.142.206.44])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l59Ao9m1010127
	for <r-help@stat.math.ethz.ch>; Sat, 9 Jun 2007 12:50:09 +0200
Received: (qmail 97837 invoked by uid 60001); 9 Jun 2007 10:50:08 -0000
X-YMail-OSG: hp4levMVM1mYRL6WCEM8cUqfDMntf7KxJaR7nG9dVQAHkAcuanOa1HV00NW9RGrSivh1MZ4IX7o9.xslOQPo.O3Yc65CIjTTQ1sSyycNf0GBa2_Xm.k-
Received: from [130.15.106.174] by web32814.mail.mud.yahoo.com via HTTP;
	Sat, 09 Jun 2007 06:50:08 EDT
Date: Sat, 9 Jun 2007 06:50:08 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: Gabor Grothendieck <ggrothendieck@gmail.com>
In-Reply-To: <971536df0706080815ge0dca51g16a3665237b5e2ea@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <631450.96975.qm@web32814.mail.mud.yahoo.com>
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

Thanks. I read your code too quickly.  I'll have a
look at the R News article. I read it last year but
apparently have forgotten just about all of it. :(


--- Gabor Grothendieck <ggrothendieck@gmail.com>
wrote:

> The code in my post uses "Date" class, not POSIX.
> sort.POSIXlt is never invoked.  Suggest you read the
> help desk article in R News 4/1 for more.
> 
> On 6/8/07, John Kane <jrkrideau@yahoo.ca> wrote:
> > Looks much better. I seldom use dates for much and
> > didn't think to look at the sort.POSIXlt function.
> >
> > If I understand this correctly the sort.POSIXlt
> with
> > na.last = FALSE is dropping all the NAs.  Very
> nice.
> >
> >
> > --- Gabor Grothendieck <ggrothendieck@gmail.com>
> > wrote:
> >
> > > Perhaps you want one of these:
> > >
> > > > sort(as.Date(aa$times, "%d/%m/%Y"))
> > > [1] "1995-03-02" "2001-05-12" "2007-02-14"
> > >
> > > > sort(as.Date(aa$times, "%d/%m/%Y"), na.last =
> > > TRUE)
> > > [1] "1995-03-02" "2001-05-12" "2007-02-14" NA
> > >    NA
> > > [6] NA
> > >
> > >
> > > On 6/7/07, John Kane <jrkrideau@yahoo.ca> wrote:
> > > > I am trying to clean up some dates and I am
> > > clearly
> > > > doing something wrong.  I have laid out an
> example
> > > > that seems to show what is happening with the
> > > "real"
> > > > data.  The  coding is lousy but it looks like
> it
> > > > should have worked.
> > > >
> > > > Can anyone suggest a) why I am getting that NA
> > > > appearing after the strptime() command and b)
> why
> > > the
> > > > NA is disappearing in the sort()? It happens
> with
> > > > na.rm=TRUE  and na.rm=FALSE
> > > >
> -------------------------------------------------
> > > > aa  <- data.frame( c("12/05/2001", " ",
> > > "30/02/1995",
> > > > NA, "14/02/2007", "M" ) )
> > > > names(aa)  <- "times"
> > > > aa[is.na(aa)] <- "M"
> > > > aa[aa==" "]  <- "M"
> > > > bb <- unlist(subset(aa, aa[,1] !="M"))
> > > > dates <- strptime(bb, "%d/%m/%Y")
> > > > dates
> > > > sort(dates)
> > > >
> --------------------------------------------------
> > > >
> > > > Session Info
> > > > R version 2.4.1 (2006-12-18)
> > > > i386-pc-mingw32
> > > >
> > > > locale:
> > > > LC_COLLATE=English_Canada.1252;
> > > > LC_CTYPE=English_Canada.1252;
> > > > LC_MONETARY=English_Canada.1252;
> > > > LC_NUMERIC=C;LC_TIME=English_Canada.1252
> > > >
> > > > attached base packages:
> > > > [1] "stats"     "graphics"  "grDevices"
> "utils"
> > > > "datasets"  "methods"   "base"
> > > >
> > > > other attached packages:
> > > >  gdata   Hmisc
> > > > "2.3.1" "3.3-2"
> > > >
> > > >  (Yes I know I'm out of date but I don't like
> > > > upgrading just as I am finishing a project)
> > > >
> > > > Thanks
> > > >
> > > > ______________________________________________
> > > > R-help@stat.math.ethz.ch mailing list
> > > > https://stat.ethz.ch/mailman/listinfo/r-help
> > > > PLEASE do read the posting guide
> > > http://www.R-project.org/posting-guide.html
> > > > and provide commented, minimal,
> self-contained,
> > > reproducible code.
> > > >
> > >
> >
> >
> >
> >      Be smarter than spam. See how smart SpamGuard
> is at giving junk email the boot with the All-new

> http://mrd.mail.yahoo.com/try_beta?.intl=ca
> >
> >
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

filr