From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 18:17:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DMHrL9013176
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 18:17:54 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DMH40j014382;
	Thu, 14 Jun 2007 00:17:17 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, STOX_REPLY_TYPE autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.250])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DMFiuK014040
	for <R-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 00:15:44 +0200
Received: by an-out-0708.google.com with SMTP id b2so68587ana
	for <R-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 15:15:43 -0700 (PDT)
Received: by 10.100.173.19 with SMTP id v19mr693272ane.1181772943343;
	Wed, 13 Jun 2007 15:15:43 -0700 (PDT)
Received: from TDWKST14 ( [65.242.180.138])
	by mx.google.com with ESMTP id d24sm1895778and.2007.06.13.15.15.42
	(version=SSLv3 cipher=RC4-MD5); Wed, 13 Jun 2007 15:15:43 -0700 (PDT)
Message-ID: <010f01c7ae08$b420fa60$3927a8c0@treesdalellc.net>
From: "AA" <aa2007r@gmail.com>
To: <ngottlieb@marinercapital.com>, <R-help@stat.math.ethz.ch>
References: <0946E293C7C22A45A0E33BA14FAA8D88F38822@500MAIL.goldbox.com>
Date: Wed, 13 Jun 2007 18:17:59 -0400
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Formatted Data File Question for Clustering -Quickie Project
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

if you look at
the data USArrests by doing
> data(USArrets)
> USArrets
you will see that it is a data.frame.
so by analogy you could do the following:
Probably you have this data in Excel (I guess from the format in your mail).
Have the data in a sheet as:

            converts    shortBais ....
19940131  0.004       -0.0016
19940228  .......................

save this sheet as tab limited txt file.
then use
mydata <- read.table("yourdata.txt")
now you can use the data.frame mydata in the cluster analysis.
I would suggest you read the intro to R.
You can also use
read.csv see
?read.table
for more info, read R import/export on
http://finzi.psych.upenn.edu/R/doc/manual/R-data.html

good luck.
AA.
----- Original Message ----- 
From: <ngottlieb@marinercapital.com>
To: <R-help@stat.math.ethz.ch>
Sent: Wednesday, June 13, 2007 11:46 AM
Subject: [R] Formatted Data File Question for Clustering -Quickie Project


>I am trying to learn how to format Ascii data files for scan or read
> into R.
>
> Precisely for a quickie project, I found some code (at end of this
> email) to do exactly what I need:
> To cluster and graph a dendrogram from package (stats).
>
> I am stuck on how to format a text file to run the script.
> I looked at the dataset USArrests (which would be replaced by my data
> and labels) using UltraEdit. That data appears to be in binary format
> and I would simply like a readable ASCII text file.
>
> How can I:
> A) format this data to a file for the script below?
> B) I would like to use squared Euclidean distance, can hclust support
> this?
>
> Thanks,
> Neil Gottlieb
>
> Here is sub-set example of my data set, return series to cluster: 13
> cases by 36 observations):
> Month   Convertible Arbitrage   Dedicated Short Bias   Emerging
> Markets
> 1/31/1994 0.004 -0.016 0.105
> 2/28/1994 0.002 0.020 -0.011
> 3/31/1994 -0.010 0.072 -0.046
> 4/30/1994 -0.025 0.013 -0.084
> 5/31/1994 -0.010 0.023 -0.007
> 6/30/1994 0.002 0.064 0.005
> 7/31/1994 0.001 -0.012 0.058
> 8/31/1994 0.000 -0.057 0.164
> 9/30/1994 -0.012 0.016 0.052
> 10/31/1994 -0.014 -0.004 -0.035
> 11/30/1994 -0.002 0.030 -0.014
> 12/31/1994 -0.019 -0.002 -0.042
> 1/31/1995 -0.006 0.013 -0.100
> 2/28/1995 0.012 -0.022 -0.079
> 3/31/1995 0.013 0.004 -0.055
> 4/30/1995 0.023 -0.004 0.073
> 5/31/1995 0.017 -0.013 0.013
> 6/30/1995 0.019 -0.069 0.008
> 7/31/1995 0.009 -0.059 0.022
> 8/31/1995 0.008 0.008 0.010
> 9/30/1995 0.011 -0.029 0.019
> 10/31/1995 0.013 0.064 -0.057
> 11/30/1995 0.023 -0.010 -0.031
> 12/31/1995 0.014 0.049 0.007
> 1/31/1996 0.021 0.006 0.079
> 2/29/1996 0.012 -0.056 -0.006
> 3/31/1996 0.015 -0.009 -0.009
> 4/30/1996 0.013 -0.066 0.051
> 5/31/1996 0.016 0.000 0.045
> 6/30/1996 0.015 0.051 0.054
> 7/31/1996 0.014 0.098 -0.027
> 8/31/1996 0.013 -0.034 0.036
> 9/30/1996 0.011 -0.059 0.016
> 10/31/1996 0.014 0.043 0.017
> 11/30/1996 0.014 -0.029 0.026
>
> Code Example from Help files:
> hc <- hclust(dist(USArrests), "ave")
> (dend1 <- as.dendrogram(hc)) # "print()" method
> str(dend1)          # "str()" method
> str(dend1, max = 2) # only the first two sub-levels
>
> op <- par(mfrow= c(2,2), mar = c(5,2,1,4))
> plot(dend1)
> ## "triangle" type and show inner nodes:
> plot(dend1, nodePar=list(pch = c(1,NA), cex=0.8, lab.cex = 0.8),
>      type = "t", center=TRUE)
> plot(dend1, edgePar=list(col = 1:2, lty = 2:3), dLeaf=1, edge.root =
> TRUE)
> plot(dend1, nodePar=list(pch = 2:1,cex=.4*2:1, col = 2:3), horiz=TRUE)
>
> dend2 <- cut(dend1, h=70)
> plot(dend2$upper)
> ## leafs are wrong horizontally:
> plot(dend2$upper, nodePar=list(pch = c(1,7), col = 2:1))
> ##  dend2$lower is *NOT* a dendrogram, but a list of .. :
> plot(dend2$lower[[3]], nodePar=list(col=4), horiz = TRUE, type = "tr")
> ## "inner" and "leaf" edges in different type & color :
> plot(dend2$lower[[2]], nodePar=list(col=1),# non empty list
>     edgePar = list(lty=1:2, col=2:1), edge.root=TRUE)
> par(op)
> str(d3 <- dend2$lower[[2]][[2]][[1]])
>
> nP <- list(col=3:2, cex=c(2.0, 0.75), pch= 21:22, bg= c("light blue",
> "pink"),
>           lab.cex = 0.75, lab.col = "tomato")
> plot(d3, nodePar= nP, edgePar = list(col="gray", lwd=2), horiz = TRUE)
> addE <- function(n) {
>      if(!is.leaf(n)) {
>        attr(n, "edgePar") <- list(p.col="plum")
>        attr(n, "edgetext") <- paste(attr(n,"members"),"members")
>      }
>      n
> }
> d3e <- dendrapply(d3, addE)
> plot(d3e, nodePar= nP)
> plot(d3e, nodePar= nP, leaflab = "textlike")
> --------------------------------------------------------
>
>
>
> This information is being sent at the recipient's request or...{{dropped}}
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

<hwZxxu