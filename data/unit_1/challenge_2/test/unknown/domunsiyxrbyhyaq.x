From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 08:32:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ECWZL9021471
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 08:32:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ECVxuU011437;
	Thu, 14 Jun 2007 14:32:12 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from lsrv4.ts-cs.de (ts-cs.de [85.214.67.134])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ECUkmt010975
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 14:30:49 +0200
Received: from localhost (lsrv4.ts-cs.de [127.0.0.1])
	by lsrv4.ts-cs.de (Postfix) with ESMTP id 3EC3E117AF7
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 14:30:47 +0200 (CEST)
Received: from lsrv4.ts-cs.de ([127.0.0.1])
	by localhost (lsrv4.ts-cs.de [127.0.0.1]) (amavisd-maia, port 10024)
	with ESMTP id 09400-09 for <r-help@stat.math.ethz.ch>;
	Thu, 14 Jun 2007 14:30:47 +0200 (CEST)
Received: from webmail.ts-cs.de (lsrv4.ts-cs.de [127.0.0.1])
	by lsrv4.ts-cs.de (Postfix) with ESMTP id 09CE4118367
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 14:30:47 +0200 (CEST)
Received: from zoo2cluster31.biologie.uni-mainz.de ([134.93.157.71])
	(SquirrelMail authenticated user mario@dejung.net)
	by webmail.ts-cs.de with HTTP; Thu, 14 Jun 2007 14:30:47 +0200 (CEST)
Message-ID: <34232.134.93.157.71.1181824247.squirrel@webmail.ts-cs.de>
Date: Thu, 14 Jun 2007 14:30:47 +0200 (CEST)
From: "Mario Dejung" <forum@dejung.net>
To: r-help@stat.math.ethz.ch
User-Agent: SquirrelMail/1.4.10a
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] problem with hist()
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

Hey everybody,
I try to make a graph with two different plots.


First I make a boxplot of my data. It is a collection off correlation
values of different pictures. For example:

0.23445 pica
0.34456 pica
0.45663 pica
0.98822 picb
0.12223 picc
0.34443 picc
etc.

Ok, I make this boxplot and I get for every picture the boxes. After this
I want to know, how many correlations per picture exist.
So I make a new vector y <- as.numeric(data$picture)

So I get for my example something like this:

y
[1] 1 1 1 1 1 1 1 1 1 1
[11] 1 1 1 1 1 1 1 1 2 2
...
[16881] 59 59 59 60 60 60 60 60 60 60

After this I make something like this

boxplot(cor ~ pic)
par(new = TRUE)
hist(y, nclass = 60)

But there is my problem. I have 60 pictures, so I get 60 different
boxplots, and I want the hist behind the boxes. But it makes only 59
histbars.

What can I do? I tried also
hist(y, 1:60) # same effect
and
hist(y, 1:61)
this give me 60 places, but only 59 bars. the last bar is 0.

I hope anyone can help me.

Regards Mario

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

(4�d</dD