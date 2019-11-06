From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 13:54:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58HsYhB018302
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 13:54:34 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58HrKf4024556;
	Fri, 8 Jun 2007 19:53:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from relay3.mail.ox.ac.uk (relay3.mail.ox.ac.uk [163.1.2.165])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58Ho52B023166
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 19:50:05 +0200
Received: from smtp1.mail.ox.ac.uk ([129.67.1.207])
	by relay3.mail.ox.ac.uk with esmtp (Exim 4.62)
	(envelope-from <ramasamy@cancer.org.uk>)
	id 1Hwib4-00053K-C9; Fri, 08 Jun 2007 18:50:02 +0100
Received: from dhcp-132.wolf.ox.ac.uk ([163.1.180.132] helo=[127.0.0.1])
	by smtp1.mail.ox.ac.uk with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.63) (envelope-from <ramasamy@cancer.org.uk>)
	id 1Hwib4-0008B1-4Y; Fri, 08 Jun 2007 18:50:02 +0100
Message-ID: <466996C7.8060702@cancer.org.uk>
Date: Fri, 08 Jun 2007 18:49:59 +0100
From: Adaikalavan Ramasamy <ramasamy@cancer.org.uk>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Rub=E9n_Roa-Ureta?= <rroa@udec.cl>
References: <46696F71.6080407@udec.cl>
In-Reply-To: <46696F71.6080407@udec.cl>
X-Oxford-Username: scro0777
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How to make a table of a desired dimension
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l58HsYhB018302

You need to basically use table on factors with fixed pre-specified 
levels. For example:

  x <- c(runif(100,10,40), runif(100,43,55))
  y <- c(runif(100,7,35),  runif(100,37,50))
  z <- c(runif(100,10,42), runif(100,45,52))
  xx <- ceiling(x);  yy <- ceiling(y);  zz <- ceiling(z)


  mylevels <- min( c(xx, yy, zz) ) : max( c(xx, yy, zz) )

  out <- cbind( table( factor(xx, levels=mylevels) ),
                table( factor(yy, levels=mylevels) ),
                table( factor(zz, levels=mylevels) ) )

You could replace the last command with simply

  sapply( list(xx, yy, zz),
                function(vec) table( factor(vec, levels=mylevels) ) )

Regards, Adai



Rub�n Roa-Ureta wrote:
> Hi ComRades,
> 
> I want to make a matrix of frequencies from vectors of a continuous 
> variable spanning different values. For example this code
> x<-c(runif(100,10,40),runif(100,43,55))
> y<-c(runif(100,7,35),runif(100,37,50))
> z<-c(runif(100,10,42),runif(100,45,52))
> a<-table(ceiling(x))
> b<-table(ceiling(y))
> c<-table(ceiling(z))
> a
> b
> c
> 
> will give me three tables that start and end at different integer 
> values, and besides, they have 'holes' in between different integer 
> values. Is it possible to use 'table' to make these three tables have 
> the same dimensions, filling in the absent labels with zeroes? In the 
> example above, the desired tables should all start at 8 and tables 'a' 
> and 'c' should put a zero at labels '8' to '10', should all put zeros in 
> the frequencies of the labels corresponding to the holes, and should all 
> end at label '55'. The final purpose is the make a matrix and use 
> 'matplot' to plot all the frequencies in one plot, such as
> 
> #code valid only when 'a', 'b', and 'c' have the proper dimension
> p<-mat.or.vec(48,4)
> p[,1]<-8:55
> p[,2]<-c(matrix(a)[1:48])
> p[,3]<-c(matrix(b)[1:48])
> p[,4]<-c(matrix(c)[1:48])
> matplot(p)
> 
> I read the help about 'table' but I couldn't figure out if dnn, 
> deparse.level, or the other arguments could serve my purpose. Thanks for 
> your help
> Rub�n
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

nSs"y7:
RbtRi>