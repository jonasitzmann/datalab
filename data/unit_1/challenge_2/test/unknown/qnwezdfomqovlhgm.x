From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 16:59:18 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PKxGL9001426
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 16:59:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PKwaYu022138;
	Mon, 25 Jun 2007 22:58:49 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, WEIRD_QUOTING autolearn=no version=3.2.0
Received: from omr12.networksolutionsemail.com
	(omr12.networksolutionsemail.com [205.178.146.62])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PKwPmu022094
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 22:58:26 +0200
Received: from mail.hostingplatform.com (ns-omr12.mgt.hosting.dc2.netsol.com
	[10.49.6.75])
	by omr12.networksolutionsemail.com (8.13.6/8.13.6) with SMTP id
	l5PKwPmY030099
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 16:58:25 -0400
Received: (qmail 17413 invoked by uid 78); 25 Jun 2007 20:58:24 -0000
Received: from unknown (HELO IATROS01) (64.25.91.154)
	by 10.49.36.75 with SMTP; 25 Jun 2007 20:58:24 -0000
From: "Christos Hatzis" <christos@nuverabio.com>
To: "'Andrej Kastrin'" <andrej.kastrin@siol.net>,
   "'R-help'" <r-help@stat.math.ethz.ch>
References: <46802AB3.20409@siol.net>
Date: Mon, 25 Jun 2007 17:00:40 -0400
Organization: Nuvera Biosciences
Message-ID: <005601c7b76b$e3f311d0$0e010a0a@headquarters.silicoinsights>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
In-Reply-To: <46802AB3.20409@siol.net>
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
Thread-Index: Ace3arEonvhQkwwKQJ68D3OKKXZlhgAAPvog
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] How to shadow 'power' area?
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: christos@nuverabio.com
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

Look at the following link:

http://addictedtor.free.fr/graphiques/RGraphGallery.php?graph=88 

This should be pretty close to what you want.
HTH

-Christos

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Andrej Kastrin
> Sent: Monday, June 25, 2007 4:51 PM
> To: R-help
> Subject: [R] How to shadow 'power' area?
> 
> Dear all,
> 
> Suppose I plot two normal distributions (A and B) side by 
> side and add vertical line which hipotheticaly represent 
> alpha value; e.g.:
> 
> x <- seq(-3.5,5, length=1000)
> y <- dnorm(x)
> # Plot distribution A
> plot(y~x, type='l',axes=F,xlab="",ylab="",lwd=2)
> # Plot distribution B
> y2 <- dnorm(x-1.5)
> lines(y2~x,lwd=2)
> # Plot vertical line for alpha value
> abline(h=0)
> segments(qnorm(.5)+1.5,0,qnorm(.5)+1.5,dnorm(qnorm(.5)))
> text(2,0.2,"Power")
> 
> Now I want to shadow area labeled as "Power". Any suggestion 
> how to do that using 'polygon' function?
> 
> Thanks in advance for any suggestion.
> 
> Andrej
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

Gssr< Q