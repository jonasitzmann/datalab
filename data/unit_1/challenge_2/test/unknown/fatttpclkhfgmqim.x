From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 17:52:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SLqaL9016070
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 17:52:38 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SLprC2008922;
	Thu, 28 Jun 2007 23:52:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from dshsmxoly1504x.dshs.wa.gov (dshsmxoly1504x.dshs.wa.gov
	[147.56.163.40])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SL8BBd022684
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 23:08:13 +0200
X-WSS-ID: 0JKD6Q3-03-4XK-01
Received: from dshsmxoly1504w1.dshs.wa.gov (dshsmxoly1504w1.dshs.wa.lcl
	[147.56.163.39])
	by dshsmxoly1504x.dshs.wa.gov (Tumbleweed MailGate) with ESMTP id
	0F4FF9FDA6B
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 14:08:27 -0700 (PDT)
Received: from [147.56.163.29] by dshsmxoly1504w1.dshs.wa.gov with ESMTP
	(SMTP Relay (Email Firewall v6.3.1)); Thu, 28 Jun 2007 14:08:08 -0700
X-Server-Uuid: 7DF95734-8263-4399-9709-24D32820BD16
Received: from dshsmxoly1504g.dshs.wa.lcl ([147.56.163.16]) by
	dshsmxoly1504t.dshs.wa.lcl with Microsoft SMTPSVC(6.0.3790.3959); Thu,
	28 Jun 2007 14:08:08 -0700
Content-class: urn:content-classes:message
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft Exchange V6.5
Date: Thu, 28 Jun 2007 14:08:08 -0700
Message-ID: <941871A13165C2418EC144ACB212BDB04E1322@dshsmxoly1504g.dshs.wa.lcl>
In-Reply-To: <935534.94598.qm@web32802.mail.mud.yahoo.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Function call within a function.
Thread-Index: Ace5wcB8TXUqLMd8RBeTCeTBNLOgFwABB05g
References: <935534.94598.qm@web32802.mail.mud.yahoo.com>
From: "Nordlund, Dan (DSHS/RDA)" <NordlDJ@dshs.wa.gov>
To: "R R-help" <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 28 Jun 2007 21:08:08.0494 (UTC)
	FILETIME=[6D7E4CE0:01C7B9C8]
X-TMWD-Spam-Summary: TS=20070628210809; SEV=2.2.2; DFV=B2007062817;
	IFV=2.0.4,4.0-9; AIF=B2007062817; RPD=5.02.0125; ENG=IBF;
	RPDID=7374723D303030312E30413031303230332E34363834323333342E303046322C73733D312C6667733D30;
	CAT=NONE; CON=NONE
X-WSS-ID: 6A9AFCB21QK591061-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5SL8BBd022684
Subject: Re: [R] Function call within a function.
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

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of John Kane
> Sent: Thursday, June 28, 2007 12:04 PM
> To: R R-help
> Subject: [R] Function call within a function.
> 
> I am trying to call a funtion within another function
> and I clearly am misunderstanding what I should do. 
> Below is a simple example.
> I know lstfun works on its own but I cannot seem to
> figure out how to get it to work within ukn. Basically
> I need to create the variable "nts". I have probably
> missed something simple in the Intro or FAQ.
> 
> Any help would be much appreciated.
> 
> EXAMPLE
> --------------------------------------------------------------
> -----------------
> # create data.frame
> cata <- c( 1,1,6,1,1,4)
> catb <- c( 1,2,3,4,5,6)
> id <- c('a', 'b', 'b', 'a', 'a', 'b')
> dd1  <-  data.frame(id, cata,catb)
> 
> # function to create list from data.frame
> lstfun  <- function(file, alpha , beta ) {
> cda  <-  subset(file, file[,1] == alpha)
> cdb  <-  subset (file, file[,1]== beta)
> list1 <- list(cda,cdb)
> }
> 
> # funtion to operate on list
> ukn  <-  function(file, alpha, beta, nam1){
> aa  <- alpha
> bb  <- beta
> myfile  <- file
> nts <- lstfun(myfile, aa, bb)
> mysum <- nam1[,3]*5
> return(mysum)
> }
> 
> results <- ukn(dd1, "a", "b", nts$cda)

John,

The first problem I see is one of scope.  nts$cda refers to an object called nts which does not exist in the calling environment (it is local to the function ukn).  So trying to call ukn() with nts results in an error.  Second, even if you pass the name of the object, you will not be able to use it in ukn() in the manner that you are trying.  Your ukn() function definition also requires that it know the inner workings of function lstfun().  Functions generally shouldn't require knowing how other functions work, they should only rely on what value is returned.

You can get what you want by redefining ukn in the following way

# funtion to operate on list
ukn  <-  function(file, alpha, beta, nam1){
aa  <- alpha
bb  <- beta
myfile  <- file
nts <- lstfun(myfile, aa, bb)
mysum <- nts[[nam1]][,3]*5
return(mysum)
}

And change the function call to

results <- ukn(dd1, "a", "b", 1) 

This still leaves the functions coupled in a way that I don't like, but I'm not a good enough R programmer to solve that problem at the moment.  Maybe someone else will come along with a better solution.

Hope this is helpful,

Dan

Daniel J. Nordlund
Research and Data Analysis
Washington State Department of Social and Health Services
Olympia, WA  98504-5204

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

a4w+