From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 11:34:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BFYuL9015693
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 11:34:57 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BFYCVP012573;
	Mon, 11 Jun 2007 17:34:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mwi1.de (5038.whserv.de [80.190.192.164])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BFY238012485
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 17:34:02 +0200
Received: from [192.168.1.32] (p5492C896.dip.t-dialin.net [84.146.200.150])
	by mwi1.de (mwi1.de) with ESMTP id 1E94739017C
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 17:34:03 +0200 (CEST)
Message-ID: <466D6B68.2050602@web.de>
Date: Mon, 11 Jun 2007 17:34:00 +0200
From: Carmen Meier <carmei3@web.de>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: "'R R-help'" <r-help@stat.math.ethz.ch>
References: <E1Hvs4m-0000hS-HM@www19.emo.freenet-rz.de>
	<466D6870.1060005@web.de>
	<651DAEB4-431D-4FF5-A98C-D33009AB4CE1@jhsph.edu>
In-Reply-To: <651DAEB4-431D-4FF5-A98C-D33009AB4CE1@jhsph.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] p-value from GEE why factor 2*pnorm?
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

Benilton Carvalho schrieb:
> the recommendation was to use lower.tail=FALSE.
>
> b
>
> O
but then the results are significant and this does not match the 
observation.
The results are matching the observations if the formula is

pnorm(c(1.8691945,0.5882351,2.4903091,1.9287802,2.3172983,2.2092593,2.2625959,1.6395695),
lower.tail =TRUE) 

so I have any unknown problem .... anywhere :-(

REgards Carmen

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

oaA v- 