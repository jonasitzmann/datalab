From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 03:46:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5K7kSL9007044
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 03:46:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5K7jAqs001299;
	Wed, 20 Jun 2007 09:45:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from lynne.ethz.ch (lynne [129.132.58.30])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5K7j5RP001268
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 20 Jun 2007 09:45:05 +0200
Received: (from maechler@localhost)
	by lynne.ethz.ch (8.13.1/8.13.1/Submit) id l5K7j48f026991;
	Wed, 20 Jun 2007 09:45:04 +0200
From: Martin Maechler <maechler@stat.math.ethz.ch>
MIME-Version: 1.0
Message-ID: <18040.56064.380950.526299@stat.math.ethz.ch>
Date: Wed, 20 Jun 2007 09:45:04 +0200
To: Steve Brady <steven.brady@yale.edu>
In-Reply-To: <D79FB99C-641D-4D98-B2A7-13B00C23A312@yale.edu>
References: <D79FB99C-641D-4D98-B2A7-13B00C23A312@yale.edu>
X-Mailer: VM 7.19 under Emacs 22.1.1
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Could not find lmer function in {Matrix} package
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: Martin Maechler <maechler@stat.math.ethz.ch>
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

>>>>> "SB" == Steve Brady <steven.brady@yale.edu>
>>>>>     on Tue, 19 Jun 2007 11:59:15 -0400 writes:

    SB> I am having trouble calling the lmer function in the {Matrix}  

    SB> package.  I first installed and loaded {Matrix} as follows:

    >> install.packages("Matrix")
    >> library(Matrix)

    SB> The package loaded successfully, however when I attempted to call  
    SB> lmer, I received the following message:

    SB> Error: could not find function "lmer"

    SB> I also tried:

    SB> < ?lmer

    SB> which produced no search results.

And who told you  lmer() was in the Matrix package ?
It's in the lme4 package, and --- conceptually has always been there --
Only for some maintenance convenience (C code shared between
lme4 and Matrix) reasons, lmer() has actually been in the Matrix
package for some time in the past, 
however you were always supposed to say
    
    require(lme4)  or  library(lme4)

to get to lmer.

Regards,
Martin

    SB> I have attempted these actions in both MacOSx R Versions 2.4.1 and  
    SB> 2.5.0.  I have also tried this in Version 2.5.1. beta on a Windows  
    SB> machine.

    SB> Thanks in advance for any suggestions.

    SB> Steve

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

6e0Hcpe
aDd8