From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 16:17:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SKHuL9015089
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 16:17:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SKGDoG002237;
	Thu, 28 Jun 2007 22:16:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32802.mail.mud.yahoo.com (web32802.mail.mud.yahoo.com
	[68.142.206.32])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5SJ3gdF006923
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 21:03:43 +0200
Received: (qmail 94867 invoked by uid 60001); 28 Jun 2007 19:03:41 -0000
X-YMail-OSG: tLqn8OQVM1kCBveHxNkHrxsjuo2R9D_V_hLQ1era57goK3ElaQR0dINsPCY.SVUUav87KJNyDIRmS6Fo.mHmUmhis50_reCMwCshWOK_hbPKDrevT4Amrsiv3lJgIA--
Received: from [130.15.106.174] by web32802.mail.mud.yahoo.com via HTTP;
	Thu, 28 Jun 2007 15:03:41 EDT
Date: Thu, 28 Jun 2007 15:03:41 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: R R-help <r-help@stat.math.ethz.ch>
MIME-Version: 1.0
Message-ID: <935534.94598.qm@web32802.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Function call within a function.
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

I am trying to call a funtion within another function
and I clearly am misunderstanding what I should do. 
Below is a simple example.
I know lstfun works on its own but I cannot seem to
figure out how to get it to work within ukn. Basically
I need to create the variable "nts". I have probably
missed something simple in the Intro or FAQ.

Any help would be much appreciated.

EXAMPLE
-------------------------------------------------------------------------------
# create data.frame
cata <- c( 1,1,6,1,1,4)
catb <- c( 1,2,3,4,5,6)
id <- c('a', 'b', 'b', 'a', 'a', 'b')
dd1  <-  data.frame(id, cata,catb)

# function to create list from data.frame
lstfun  <- function(file, alpha , beta ) {
cda  <-  subset(file, file[,1] == alpha)
cdb  <-  subset (file, file[,1]== beta)
list1 <- list(cda,cdb)
}

# funtion to operate on list
ukn  <-  function(file, alpha, beta, nam1){
aa  <- alpha
bb  <- beta
myfile  <- file
nts <- lstfun(myfile, aa, bb)
mysum <- nam1[,3]*5
return(mysum)
}

results <- ukn(dd1, "a", "b", nts$cda)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

2.Mad�Pa8o<Oh