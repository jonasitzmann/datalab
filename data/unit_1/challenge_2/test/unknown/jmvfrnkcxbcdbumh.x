From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 05:03:02 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64930L9008590
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 05:03:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l6491NGQ006177;
	Wed, 4 Jul 2007 11:01:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pascal.uni-erfurt.de (pascal.uni-erfurt.de [194.95.117.230])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l6491Gbc006123
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 11:01:16 +0200
Received: from webshield.net.uni-erfurt.de ([194.95.117.245])
	by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with SMTP id <0JKN00874D259T20@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 11:01:17 +0200 (MEST)
Received: from pascal.uni-erfurt.de(194.95.117.230)
	by webshield.net.uni-erfurt.de via smtp	id
	1be2_691409c4_2a0c_11dc_862b_0011433682c5;
	Wed, 04 Jul 2007 10:56:10 +0200
Received: from [194.95.14.91] by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with ESMTP id <0JKN00872D259T20@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 11:01:17 +0200 (MEST)
Date: Wed, 04 Jul 2007 11:01:16 +0200
From: Stefan Grosse <singularitaet@gmx.net>
In-reply-to: <11426235.post@talk.nabble.com>
To: Grimbough <msmith@ebi.ac.uk>
Message-id: <468B61DC.5080004@gmx.net>
MIME-version: 1.0
References: <1183099152.5873.5.camel@zhurx-desktop>
	<20070629072923.172990@gmx.net> <11426235.post@talk.nabble.com>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How to install R 2.5 with Synaptic in Ubuntu?
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


>  to end of the entry making it:
>
>  deb http://my.favorite.cran.mirror/bin/linux/ubuntu feisty main
>
> However after this it still complains that it can't find "packages.gz"
>
>   

Just a guess: have you replaced the my.favorite.cran.mirror by a mirror
which is close to you? If you're in UK it would be for example

deb http://www.stats.bris.ac.uk/R/bin/linux/ubuntu feisty main

;o)
Stefan

> It appears to be looking in 
> http://my.favorite.cran.mirror/bin/linux/ubuntu/distsfeisty
> which isn't the directory structure of the cran repository, but 
> I can see anyway to modify this behaviour.  Every other Ubuntu repositoy
> I have looked at contains the dists directory.
>
> Any suggestions for modifying this behaviour are gratefully recieved.
> Many thanks
>
> Mike Smith
>
>
>   




-=-=-
... The simple truth is that interstellar distances will not fit into
the human imagination - (The Hitchhiker's Guide to the Galaxy)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

ph.g=RS