From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 17:19:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JLIwL9001674
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 17:18:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JLHuhd000878;
	Tue, 19 Jun 2007 23:18:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mxout5.cac.washington.edu (mxout5.cac.washington.edu
	[140.142.32.135])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JLEo0v032689
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 23:14:51 +0200
Received: from homer24.u.washington.edu (homer24.u.washington.edu
	[140.142.15.10])
	by mxout5.cac.washington.edu (8.13.7+UW06.06/8.13.7+UW07.05) with ESMTP
	id l5JLEn1E029133
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Jun 2007 14:14:49 -0700
Received: from localhost (tlumley@localhost)
	by homer24.u.washington.edu (8.13.7+UW06.06/8.13.7+Submit) with ESMTP
	id l5JLEmja003078; Tue, 19 Jun 2007 14:14:48 -0700
Date: Tue, 19 Jun 2007 14:14:48 -0700 (PDT)
From: Thomas Lumley <tlumley@u.washington.edu>
To: Peter Sajosi <petersajosi@yahoo.com>
In-Reply-To: <273142.97552.qm@web43142.mail.sp1.yahoo.com>
Message-ID: <Pine.LNX.4.64.0706191414020.26395@homer24.u.washington.edu>
References: <273142.97552.qm@web43142.mail.sp1.yahoo.com>
MIME-Version: 1.0
X-PMX-Version: 5.3.1.294258, Antispam-Engine: 2.5.1.298604,
	Antispam-Data: 2007.6.19.135533
X-Uwash-Spam: Gauge=IIIIIII, Probability=7%, Report='SUPERLONG_LINE 0.05,
	__CP_URI_IN_BODY 0, __CT 0, __CT_TEXT_PLAIN 0, __HAS_MSGID 0,
	__MIME_TEXT_ONLY 0, __MIME_VERSION 0, __SANE_MSGID 0'
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Error handling
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


This is FAQ 7.32 How can I capture or ignore errors in a long simulation?

 	-thomas

On Tue, 19 Jun 2007, Peter Sajosi wrote:

> Hello,
>
>  I have a question about error handling. I run simulation studies and often the program stops with an error, for example during maximum likelihood. I would like the program not to stop but to continue and I would like to ask how the error handling can be set up for this (if it can). I tried to look through manuals etc but unfortunately did not get closer to the solution. Below is a small example with some numbers, where the nlm function gives an error. Is it possible to make R and the program ignore the error?
>
>  (there is a small for loop in the end of the example, which breaks - ideally the program would complete the for loop even though there are errors). Of course this is just an example, in the simulation study the error comes up quite rarely but still it is annoying to handle it manually each time.
>  Many thanks
> Peter
>
>  The example:
>  ------------
>
> logfunc <- function (params) {
>  vutil1 <- as.matrix(x2[,1:3]) %*% params
> vutil2 <- as.matrix(x2[,4:6]) %*% params
>  logl <- 0
>  for (i in 1:6) {
>  prob <- log((exp(vutil1[i])*achoices[i,1]+exp(vutil2[i])*achoices[i,2])/(exp(vutil1[i])+exp(vutil2[i])))
>  logl <- logl + prob
>  }
>  return (-logl)
>  }
>
> x2 <- array(c(0,4,1,3,5,3,3,2,1,4,1,2,0,2,2,1,1,4,1.2233310 ,0.0000000 ,0.8155540 ,0.9320617 ,1.4272195 ,1.8349965 , 0.6116655, 3.2622160, 0.8155540, 3.7282469,0.0000000 ,4.5874913 ,0.6116655,3.2622160 ,1.6311080 ,1.8641235, 4.2816586, 0.9174983),dim=c(6,6))
> achoices <- array(c(1,0,1,0,1,0,0,1,0,1,0,1),dim=c(6,2))
>  for (k in 1:5) {
>  nlm(logfunc, c (1,1,1),print.level=2)
>  }
>  ---
>  Thanks!!!
>  -------
>
>
>
>
> ---------------------------------
> Moody friends. Drama queens. Your life? Nope! - their life, your story.
>
> 	[[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

Thomas Lumley			Assoc. Professor, Biostatistics
tlumley@u.washington.edu	University of Washington, Seattle

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

AaJmhv
-a