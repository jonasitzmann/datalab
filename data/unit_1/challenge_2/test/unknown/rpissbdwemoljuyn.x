From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 17:25:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57LPbhB007276
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 17:25:38 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57LOkgW002950;
	Thu, 7 Jun 2007 23:25:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32807.mail.mud.yahoo.com (web32807.mail.mud.yahoo.com
	[68.142.206.37])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l57LHe6n000725
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 23:17:40 +0200
Received: (qmail 26679 invoked by uid 60001); 7 Jun 2007 21:17:39 -0000
X-YMail-OSG: tRnjsmIVM1kNEcPauW9u9bbOwXuwWYbs8uU9vJ1u_Pa.cgpHcQ5G4pTCyKZbpZIKeA--
Received: from [130.15.106.174] by web32807.mail.mud.yahoo.com via HTTP;
	Thu, 07 Jun 2007 17:17:39 EDT
Date: Thu, 7 Jun 2007 17:17:39 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: R R-help <r-help@stat.math.ethz.ch>
MIME-Version: 1.0
Message-ID: <603794.26626.qm@web32807.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] character to time problem
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

I am trying to clean up some dates and I am clearly
doing something wrong.  I have laid out an example
that seems to show what is happening with the "real"
data.  The  coding is lousy but it looks like it
should have worked.

Can anyone suggest a) why I am getting that NA
appearing after the strptime() command and b) why the
NA is disappearing in the sort()? It happens with
na.rm=TRUE  and na.rm=FALSE
-------------------------------------------------
aa  <- data.frame( c("12/05/2001", " ", "30/02/1995",
NA, "14/02/2007", "M" ) )
names(aa)  <- "times"
aa[is.na(aa)] <- "M"
aa[aa==" "]  <- "M"
bb <- unlist(subset(aa, aa[,1] !="M"))
dates <- strptime(bb, "%d/%m/%Y")
dates
sort(dates)
--------------------------------------------------

Session Info
R version 2.4.1 (2006-12-18) 
i386-pc-mingw32 

locale:
LC_COLLATE=English_Canada.1252;
LC_CTYPE=English_Canada.1252;
LC_MONETARY=English_Canada.1252;
LC_NUMERIC=C;LC_TIME=English_Canada.1252

attached base packages:
[1] "stats"     "graphics"  "grDevices" "utils"    
"datasets"  "methods"   "base"     

other attached packages:
  gdata   Hmisc 
"2.3.1" "3.3-2" 

 (Yes I know I'm out of date but I don't like
upgrading just as I am finishing a project)

Thanks

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

i.dFGiutn7 