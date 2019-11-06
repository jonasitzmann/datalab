From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 07:56:44 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RBuhL9026083
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 07:56:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RBt0Xs031961;
	Wed, 27 Jun 2007 13:55:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, WEIRD_QUOTING autolearn=no version=3.2.0
Received: from web39708.mail.mud.yahoo.com (web39708.mail.mud.yahoo.com
	[209.191.106.54])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5RBsiDU031790
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 13:54:45 +0200
Received: (qmail 89390 invoked by uid 60001); 27 Jun 2007 11:54:43 -0000
X-YMail-OSG: fdtdC10VM1mGjrmBQAo5W6Z7ZOn5RiXKuzPXK305Zksm5pUkA1t0C8jYadh_Ia7BIwBYPBwuZeC04IDWCGYNZvC6Jhz7xMtLKj.lZJdCpmrynrKzOwM-
Received: from [66.91.227.183] by web39708.mail.mud.yahoo.com via HTTP;
	Wed, 27 Jun 2007 04:54:43 PDT
Date: Wed, 27 Jun 2007 04:54:43 -0700 (PDT)
From: Stephen Tucker <brown_emu@yahoo.com>
To: El-ad David Amir <amel@cs.bgu.ac.il>
In-Reply-To: <46824476.2020703@bitwrit.com.au>
MIME-Version: 1.0
Message-ID: <177186.88359.qm@web39708.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Looking for parallel functionality between Matlab and R
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

This zooming function on the R-Wiki page was very neat:

http://wiki.r-project.org/rwiki/doku.php?id=tips:graphics-misc:interactive_zooming

Also, to answer question (a), maybe these examples might help?

## add elements to plot
plot(1:10,1:10)
lines(1:10,(1:10)/2)
points(1:10,(1:10)/1.5)

## add second y-axis
par(mar=c(5,4,2,4)+0.1)
plot(1:10,1:10)
par(new=TRUE)
plot(-20:20,20:-20,col=4,
     type="l",axes=FALSE,
     xlab="",ylab="",
     xaxs="i",
     xlim=par("usr")[1:2])
axis(4,col=4,col.axis=4)
mtext("second y-axis label",4,outer=TRUE,padj=-2,col=4)






--- Jim Lemon <jim@bitwrit.com.au> wrote:

> El-ad David Amir wrote:
> > I'm slowly moving my statistical analysis from Matlab to R, and find
> myself
> > missing two features:
> > 
> > a) How do I mimic Matlab's 'hold on'? (I want to show several plots
> > together, when I type two plots one after the other the second overwrites
> > the first)
> > b) How do I mimic Matlab's 'axis'? (after drawing my plots I want to zoom
> on
> > specific parts- for example, x=0:5, y=0:20).
> > 
> I think what you want for a) is par(ask=TRUE).
> 
> There have been a few discussions of zooming on the help list - see:
> 
> http://stats.math.uni-augsburg.de/iPlots/index.shtml
> 
> for one solution.
> 
> Jim
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 



      ____________________________________________________________________________________
Luggage? GPS? Comic books?

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

Abrst
3AB0;	to	