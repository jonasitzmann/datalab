From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 15:26:46 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51JQjhB013802
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 15:26:45 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51JPndG017216;
	Fri, 1 Jun 2007 21:26:15 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	FH_HOST_EQ_D_D_D_D, RDNS_DYNAMIC autolearn=no version=3.2.0
Received: from vs159204.vserver.de
	(static-ip-62-75-159-204.inaddr.intergenia.de [62.75.159.204])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51JNJu1016735
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 21:23:19 +0200
Received: from [192.168.2.32] (p5B207293.dip.t-dialin.net [91.32.114.147])
	(authenticated bits=0)
	by vs159204.vserver.de (8.12.8/8.12.8) with ESMTP id l51JNLQU029949
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 21:23:21 +0200
Message-ID: <46607226.5070704@thomas-zastrow.de>
Date: Fri, 01 Jun 2007 21:23:18 +0200
From: Thomas Zastrow <listen@thomas-zastrow.de>
User-Agent: Thunderbird 2.0.0.0 (X11/20070326)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Beginners Question
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

Dear all,

I'm completely new to R and at first I must say that it is a great program!

But I have a problem with the function isoMDS from the MASS package. I 
have this code which I load with source() from a file:

x <- c(163.59514923926784, 150.01448475257115, ...... {here are some 
more values})
x.sort <- sort(x)
x.dist <- dist(x.sort)
library(MASS)
x.mds <- isoMDS(x.dist)
plot(x.mds$points, type="n")
text(x.mds$points, labels=as.character("x"))

The problem is in the line where the isoMDS function is applied: I got 
the error:

Fehler in isoMDS(x.dist) : zero or negative distance between objects 9 
and 10

When I look at values 8 and 9 of x.dist, I see that they have the same 
values (I'm not wrong, it's values of 8 and 9 and not 9 and 10):

x.dist[8:9]
[1] 39.8214  39.8214

So, just to give'm a try, I changed the value of x.dist[8]:

x.dist[8] <- c(39.7)

Now, there are defintitely different values in this part of x.dist:

x.dist[7:10]
[1] 39.69898     39.70000      39.82140      39.98892

But when I start isoMDS again, I got again the error:

x.mds <- isoMDS(x.dist)
Fehler in isoMDS(x.dist) : zero or negative distance between objects 9 
and 10


So, where's my error?

Thank you!

Best,

Tom


-- 
----------------------------
http://www.thomas-zastrow.de

German Forum - DTP under Linux:

http://www.opendtp.de

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

�&=e6- .Nrlp