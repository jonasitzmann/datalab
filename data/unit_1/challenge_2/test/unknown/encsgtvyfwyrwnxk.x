From r-help-bounces@stat.math.ethz.ch  Sat Jun  2 18:44:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52MiVhB028825
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 18:44:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l52Mi5gB025925;
	Sun, 3 Jun 2007 00:44:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.245])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l52MhuUC025890
	for <R-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 00:43:57 +0200
Received: by an-out-0708.google.com with SMTP id b2so231817ana
	for <R-help@stat.math.ethz.ch>; Sat, 02 Jun 2007 15:43:56 -0700 (PDT)
Received: by 10.100.153.17 with SMTP id a17mr1791815ane.1180824235735;
	Sat, 02 Jun 2007 15:43:55 -0700 (PDT)
Received: by 10.100.137.20 with HTTP; Sat, 2 Jun 2007 15:43:55 -0700 (PDT)
Message-ID: <255640f90706021543m2b527e0x50712a3941b8cd01@mail.gmail.com>
Date: Sun, 3 Jun 2007 00:43:55 +0200
From: "Soare Marcian-Alin" <soarealin@gmail.com>
To: R-help@stat.math.ethz.ch
In-Reply-To: <255640f90705261100q6ff74856ie9bd97ff50aec328@mail.gmail.com>
MIME-Version: 1.0
References: <255640f90705261100q6ff74856ie9bd97ff50aec328@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: Re: [R] canoncial correlation
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

hello,

Does nobody know what the problem could be? :((((

2007/5/26, Soare Marcian-Alin <soarealin@gmail.com>:
>
> Hello,
>
> I have a problem with the function concar:
>
> data set: http://www.statistik.tuwien.ac.at/public/filz/students/multi/ss07/world2.R
>
>
> source("world2.R")
>
> world[,8] <- log(world[,8])
> world[,9] <- log(world[,9])
> x <- world[,-c(1,2)]
> x <- scale(x)
>
> a <- cancor(x[,-c(6:9)],x[,-c(1:5)])
> attributes(a)
> a
>
> How do I plot the first two canonial variables of a? And I want to take
> the rownames of world as pch ...
>
> plot(..., pch=rownames(world), col=as.numeric(world[,1]))
>
> Thanks in advance!
>

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

<Gs</dpnesma-m