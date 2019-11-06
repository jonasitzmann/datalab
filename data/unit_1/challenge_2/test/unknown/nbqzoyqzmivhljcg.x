From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 03:37:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5J7bJL9026499
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 03:37:21 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J7ZMvT018224;
	Tue, 19 Jun 2007 09:35:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from msg-mx5.usc.edu (msg-mx5.usc.edu [128.125.137.10])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J7ZDCk018185
	for <r-help@lists.R-project.org>; Tue, 19 Jun 2007 09:35:14 +0200
Received: from gisheal10.usc.edu ([128.125.32.64])
	by msg-mx5.usc.edu (Sun Java System Messaging Server 6.2-7.05 (built
	Sep 5 2006)) with ESMTPS id <0JJV0059PH2N47D0@msg-mx5.usc.edu> for
	r-help@lists.R-project.org; Tue, 19 Jun 2007 00:35:12 -0700 (PDT)
Date: Tue, 19 Jun 2007 00:35:06 -0700
From: Juan Pablo Lewinger <lewinger@usc.edu>
To: r-help@stat.math.ethz.ch
Message-id: <0JJV0059QH2O47D0@msg-mx5.usc.edu>
MIME-version: 1.0
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Controlling text and strip arrangement in xyplot
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

I've searched the archives and read the xyplot help but can't figure 
out the 2 lattice questions below?

Consider:

library(lattice)
DF <- data.frame(x=rnorm(20), y=rnorm(20), g1=rep(letters[1:2], 10),
                  g2=rep(LETTERS[1:2], each=10), 
g3=rep(rep(letters[3:4],each=5),2))

xyplot(y ~ x | g1 + g2, groups=g3, data=DF)

1) Is there a way to get one strip per row and column of panels as 
below instead of the default?


        _|__a__|__b__|
         |
       B
         |
        --
         |
       A
         |

2) How do I control the text of the strips so that for instance 
instead of "a" and "b" it reads"g1=alpha", "g1=beta" where "alpha" 
and "beta" stand for the corresponding greek symbols? (my difficulty 
here is not with the plotmath symbols but with controlling the text 
of the strips directly from the call to xyplot and not by renaming 
the levels of g1)

I'd appreciate any help!


Juan Pablo Lewinger
Department of Preventive Medicine
Keck School of Medicine
University of Southern California

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

fzzrGi=tk