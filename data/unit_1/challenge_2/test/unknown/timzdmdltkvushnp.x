From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 11:38:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64FcDL9012349
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 11:38:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64FbdU7026930;
	Wed, 4 Jul 2007 17:37:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pascal.uni-erfurt.de (pascal.uni-erfurt.de [194.95.117.230])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64FGrfe019332
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 17:16:53 +0200
Received: from webshield.net.uni-erfurt.de ([194.95.117.245])
	by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with SMTP id <0JKN008RKUG5IC00@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 17:16:53 +0200 (MEST)
Received: from pascal.uni-erfurt.de(194.95.117.230)
	by webshield.net.uni-erfurt.de via smtp	id
	1b84_e1717a1c_2a40_11dc_807c_0011433682c5;
	Wed, 04 Jul 2007 17:11:46 +0200
Received: from [194.95.14.91] by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with ESMTP id <0JKN008TBUG5I600@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 17:16:53 +0200 (MEST)
Date: Wed, 04 Jul 2007 17:16:51 +0200
From: Stefan Grosse <singularitaet@gmx.net>
In-reply-to: <000101c7be41$7b2a4d30$6501a8c0@kLab>
To: Keith Alan Chamberlain <Keith.Chamberlain@Colorado.EDU>
Message-id: <468BB9E3.2010309@gmx.net>
MIME-version: 1.0
References: <mailman.11.1183543206.28203.r-help@stat.math.ethz.ch>
	<000101c7be41$7b2a4d30$6501a8c0@kLab>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] A More efficient method?
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


> Cat=c('a','a','a','b','b','b','a','a','b')	# Categorical variable
> C1=vector(length=length(Cat))	# New vector for numeric values
>
> # Cycle through each column and set C1 to corresponding value of Cat.
> for(i in 1:length(C1)){
> 	if(Cat[i]=='a') C1[i]=-1 else C1[i]=1
> }
>
> C1
> [1] -1 -1 -1  1  1  1 -1 -1  1
> Cat
> [1] "a" "a" "a" "b" "b" "b" "a" "a" "b"
>
>   
how about:

Cat<-c('a','a','a','b','b','b','a','a','b')
c1<- -2*(Cat=="a")+1



-=-=-
... Time is an illusion, lunchtime doubly so. (Ford Prefect)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

o28l<�deoJStwa