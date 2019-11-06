From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 09:14:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KDEDL9010249
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 09:14:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KDDNPZ010875;
	Wed, 20 Jun 2007 15:13:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from po-smtp2.temple.edu (po-smtp2.temple.edu [155.247.166.196])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KD96g2008876
	(version=TLSv1/SSLv3 cipher=DES-CBC3-SHA bits=168 verify=FAIL)
	for <R-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 15:09:08 +0200
Received: from po-d.temple.edu (po-d.temple.edu [155.247.166.222])
	by po-smtp2.temple.edu (MOS 3.8.2-GA) with ESMTP id ANN73005;
	Wed, 20 Jun 2007 09:09:06 -0400 (EDT)
Received: (from po-d.temple.edu [68.162.64.204])
	by po-d.temple.edu (MOS 3.8.2-GA)
	with HTTPS/1.1 id CEN35979 (AUTH rmh);
	Wed, 20 Jun 2007 09:09:05 -0400 (EDT)
From: "Richard M. Heiberger" <rmh@temple.edu>
To: Jim Lemon <jim@bitwrit.com.au>,
   elyakhlifi mustapha <elyakhlifi_mustapha@yahoo.fr>
X-Mailer: Mirapoint Webmail Direct 3.8.2-GA
MIME-Version: 1.0
Message-Id: <20070620090905.CEN35979@po-d.temple.edu>
Date: Wed, 20 Jun 2007 09:09:05 -0400 (EDT)
X-Junkmail-Status: score=10/50, host=po-smtp2.temple.edu
X-Junkmail-SD-Raw: score=unknown,
	refid=str=0001.0A090201.467926F1.00E8:SCFONLINE528566,ss=1,fgs=0,
	ip=155.247.166.222, so=2006-09-22 03:48:54,
	dmn=5.3.14/2007-05-31
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] names over names
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

If your data.frame is entirely numeric, then you could design a print
function that builds on this example of converting it to a data.matrix:


mydf <- data.frame(Mon=1:3, Tue=4:6, Wed=7:9, Thu=10:12, Fri=13:15)
mydm <- data.matrix(mydf)
names(dimnames(mydm)) <- c("", "Weekdays")
mydm
data.frame(mydm) ## loses names(dimnames)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

c_ tx
iZd

: i