From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 09:24:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CDOuL9026760
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 09:24:57 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CDNEuo021515;
	Tue, 12 Jun 2007 15:23:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SARE_URI_EQUALS autolearn=no version=3.2.0
Received: from postman.ihelse.net (jess.ihelse.net [161.4.81.13])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5CDANmA016822
	for <r-help@hypatia.math.ethz.ch>; Tue, 12 Jun 2007 15:10:23 +0200
Received: (qmail 30830 invoked from network); 12 Jun 2007 13:10:21 -0000
Received: from unknown (HELO patsy.ihelse.net) (161.4.3.136)
	by jess.ihelse.net with SMTP; 12 Jun 2007 13:10:20 -0000
Received: from EC3.ihelse.net ([161.4.9.59]) by patsy.ihelse.net with
	Microsoft SMTPSVC(6.0.3790.1830); Tue, 12 Jun 2007 15:10:17 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5.7232.53
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 12 Jun 2007 15:10:20 +0200
Message-ID: <7132663E78AE3E45AD4471CBC2738EF501648C9E@EC3.ihelse.net>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: is: distribution graph
Thread-Index: Aces8wcyO5bCnTnHR3ij2+6n5lRoCw==
From: "Wentzel-Larsen, Tore" <tore.wentzel-larsen@helse-bergen.no>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 12 Jun 2007 13:10:17.0522 (UTC)
	FILETIME=[05A72920:01C7ACF3]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5CDANmA016822
Subject: [R] distribution graph
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

The following gives two functions for producing distribution graphs:

distribution-graph

produces a single graph, and

multiple.distribution.graph

produces a number of graphs side by side.

Regards,
Tore Wentzel-Larsen
statistician
Centre for Clinical research
Armauer Hansen house 
Haukeland University Hospital
N-5021 Bergen
tlf   +47 55 97 55 39 (a)
faks  +47 55 97 60 88 (a)
email tore.wentzel-larsen@helse-bergen.no 


Documentation:

distribution.graph

Description

distribution.graph produces a distribution graph of the data values. 

Usage

distribution.graph(xx, grouping=FALSE,
	ngroups=10, xplace=c(0,1,.5),  halfband=.25,
	xlab='', ylab='', pch=16,
	lines=FALSE, lty='solid')

Arguments

xx		numeric, a vector of values for which to produce the 
		distribution graph. Missing values are allowed, and are 
		disregarded.

grouping	logical, if FALSE (the default) the actual values are graphed,
		if TRUE the values are grouped before being plotted.

ngroups	the number of groups (default 10) if grouping=TRUE.

xplace	vector with three components. The first two components define
		the horizontal plotting range. The last component defines the
		horizontal placement of the centre of the distribution graph.

halfband	Half-length of the maximal horizontal band in the distribution
		Graph, from the centre outwards. The bands should be within the 
		Horizontal plotting range.

xlab, 
ylab		x and y axis labels, as in plot.default.

pch		plotting symbol, default 16 (solid circle).

lines		logical, if FALSE (the default) only points are plotted, if
		TRUE the points are connected by lines.

lty		line type, as in plot.default.


Value

A frequency table for the values actually plotted.

Examples

# a simple distribution graph with no grouping:
distribution.graph(floor(runif(100, 200, 310)))

# a similar graph with vertical bars only:
distribution.graph(floor(runif(100, 200, 310)), lines=TRUE, pch='')

# a distribution graph with grouping (points or line bars):
distribution.graph(runif(1000 ,0, 3), grouping=TRUE)
distribution.graph(runif(1000, 0, 3), grouping=TRUE, lines=TRUE, pch='')

# a distribution graph with grouping, 5 groups:
distribution.graph(runif(1000, 0, 10), grouping=TRUE, ngroups=5)
distribution.graph(rbinom(1000, 20, .7), grouping=TRUE, ngroups=5)


- - - - - - - - - - - - - - -

multiple.distribution.graph

Description

multiple.distribution.graph produces a number of distribution graphs of the data values, side by side. 

Usage

multiple.distribution.graph(xx, grouping=FALSE,
	ngroups=10, xleft=0, xright=1, xmiddle=.5, xband=.5,
	xlab=c(1:length(xx)), ylab='', pch=16,
	lines=FALSE, lty='solid')
Arguments

xx		list of numeric variables, a vector of values for which to produce the distribution 		graph. Missing values are allowed, and are disregarded.

grouping	logical, if FALSE (the default) the actual values are graphed,
		if TRUE the values are grouped before being plotted.

ngroups	the number of groups (default 10) if grouping=TRUE.

xleft
xright
xmiddle	xleft and xright define the horizontal plotting range within
		each distribution graph. xmiddle defines the horizontal placement of the centre of each 		distribution graph.

xband		the part actually used for plotting, of the horizontal range
		allocated top each individual graph.

xlab, 
ylab		x and y axis labels, as in plot.default.

pch		plotting symbol, default 16 (solid circle).

lines		logical, if FALSE (the default) only points are plotted, if
		TRUE the points are connected by lines.

lty		line type, as in plot.default.


Value

A list of frequency tables for the values actually plotted.


Examples

par(ask=TRUE)
multiple.distribution.graph(as.list(data.frame(matrix(runif(72),ncol=9))))
multiple.distribution.graph(as.list(data.frame(matrix(runif(72),ncol=9))),
	grouping=TRUE)
multiple.distribution.graph(as.list(data.frame(matrix(runif(72),ncol=9))),
	grouping=TRUE,ngroups=3)
multiple.distribution.graph(as.list(data.frame(matrix(runif(72),ncol=9))),
	grouping=TRUE,ngroups=3,lines=TRUE)
multiple.distribution.graph(as.list(data.frame(matrix(runif(72),ncol=9))),
	grouping=TRUE,ngroups=3,lines=TRUE,pch='')
multiple.distribution.graph(as.list(data.frame(matrix(runif(72),ncol=9))),
	grouping=TRUE,ngroups=5,lines=TRUE,pch='')
par(ask=FALSE)

# a more complicated list of numeric vectors:
xx <- as.list(as.list(data.frame(matrix(runif(72,10,45),ncol=9))))
xx[[1]][c(1,3,4,8)]<- NA
xx[[2]][c(2,4)]<- NA
xx[[4]][c(3)]<- NA
xx[[6]][c(2,5,8)]<- NA
xx[[8]][c(1,2,8)]<- NA
xx <- lapply(xx,stripmiss)
xx[[1]][c(3)]<- NA
xx[[3]][c(1,3,4,5)]<- NA
xx[[4]][c(2,3)]<- NA
xx[[8]][c(3,4)]<- NA

multiple.distribution.graph(xx)
multiple.distribution.graph(xx,grouping=TRUE,ngroups=3,lines=TRUE,
	pch='')
multiple.distribution.graph(xx,grouping=TRUE,ngroups=3,lines=TRUE,
	pch='.',lty='blank')






Code:
- - -

# auxiliary functions: stripmiss and grouping.v :

# function for deleting missing values from a vector:

stripmiss <- function(xx) xx[is.na(xx)==0]

# grouping of a vector into a specified number of
#	intervals of equal size:

grouping.v <- function(xx,ngroups=10,eps=.001) {
minx<- min(xx)
maxx <-max(xx)
if (minx == maxx | ngroups == 1) x2 <- xx
if(ngroups==1) x2 <- mean(x2)
if (minx < maxx & ngroups > 1) {
x1 <- round(.5+eps + (xx - minx)*(ngroups - 2*eps)/(maxx - minx))
x2 <- minx + (x1 - 1) * (maxx - minx)/(ngroups -1)
} # end if
x2
} # end function grouping.v (grouping of a vector)


# function for a single distribution graph:

distribution.graph <- function(xx, grouping=FALSE,
	ngroups=10, xplace=c(0,1,.5),  halfband=.25,
	xlab='', ylab='', pch=16,
	lines=FALSE, lty='solid') {
x1 <- stripmiss(xx)
if (grouping) x1 <- grouping.v(x1,ngroups=ngroups)
xv <- as.numeric(names(table(x1))) # actual values
minxv <-min(xv)
maxxv <-max(xv)
xn <- as.numeric(table(x1)) # number of occurences
nx <- length(xv)
maxn <- max(xn)
plot(x=xplace[1]+(xv-minxv)*(xplace[2]-xplace[1])/
	(maxxv-minxv),y=xv,xlab='',ylab='',
	axes=FALSE,col='white')
box()
axis(1,at=xplace[3],labels=xlab)
axis(2)
for (value.nr in 1:nx) {
n.act <- xn[value.nr]
if (n.act==1) xpositions.act <- xplace[3]
if (n.act > 1) {
halfband.act <- halfband * n.act/maxn
left.act  <- xplace[3] - halfband.act
right.act <- xplace[3] + halfband.act
xpositions.act <- left.act + (0:(n.act-1)) * 
	(right.act - left.act)/(n.act-1)
} # end if n.act > 1
if (!lines)
points(x=xpositions.act,y=rep(xv[value.nr],n.act),pch=pch)
if (lines)
points(x=xpositions.act,y=rep(xv[value.nr],n.act),
	pch=pch,type='o',lty=lty)
} # end for xvalue
distribution <- x1
table(distribution)
} # end function distribution.graph

par(ask=TRUE)
distribution.graph(floor(runif(100,200,310)))
distribution.graph(floor(runif(100,200,310)),lines=TRUE,pch='.')
distribution.graph(runif(1000,0,3),grouping=TRUE)
distribution.graph(runif(1000,0,3),grouping=TRUE,lines=TRUE,pch='')
distribution.graph(runif(1000,0,10),grouping=TRUE,ngroups=5)
distribution.graph(rbinom(1000,20,.7),grouping=TRUE,ngroups=5)
par(ask=FALSE)

# function for several distribution graphs in the same plot:

multiple.distribution.graph <- function(xx, grouping=FALSE,
	ngroups=10, xleft=0, xright=1, xmiddle=.5, xband=.5,
	xlab=c(1:length(xx)), ylab='', pch=16,
	lines=FALSE, lty='solid') {
xx <- lapply(xx,stripmiss) # remove missing values
if (grouping) xx <- lapply(xx,grouping.v,ngroups=ngroups)
xtable <- lapply(xx,table)
xtable.values <- lapply(lapply(xtable,names),as.numeric)
xtable.freq <- lapply(xtable,as.numeric)
max.freq <- max(as.numeric(lapply(xtable.freq,max)),na.rm=TRUE)
min.value <- min(as.numeric(lapply(xtable.values,min)),na.rm=TRUE)
max.value <- max(as.numeric(lapply(xtable.values,max)),na.rm=TRUE)
ncomp <- length(xx)
plot.xtotal<- xleft + c(0,ncomp) * (xright - xleft)
plot.ytotal<- c(min.value,max.value)
plot.mids <- xleft + c(0:(ncomp-1)) * (xright - xleft) + xmiddle
plot(x=plot.xtotal,y=plot.ytotal,xlab='',ylab=ylab,
	xlim=plot.xtotal,ylim=plot.ytotal,
	axes=FALSE,col='white')
box()
axis(1,at=plot.mids,labels=xlab)
axis(2)
for (comp in 1:ncomp) {
left.outer <- xleft + (comp - 1) * (xright - xleft)
right.outer <- xleft + comp * (xright - xleft)
mid <- plot.mids[comp]
max.freq.comp <- max(xtable.freq[[comp]],na.rm=TRUE)
values.comp <- xtable.values[[comp]]
nvalues.comp <- length(values.comp)
freq.comp <- xtable.freq[[comp]]
maxband.comp <- xband * ((xright - xleft)/2) * 
	max.freq.comp / max.freq
if (comp==1) abline(v=left.outer,lty=lty)
abline(v=right.outer,lty=lty)
for (nr in 1:nvalues.comp) {
value.nr <- values.comp[nr]
freq.nr <- freq.comp[nr]
left.nr <- mid - maxband.comp * freq.nr/max.freq.comp 
right.nr <- mid + maxband.comp * freq.nr/max.freq.comp 
if (freq.nr==1) points(x=mid,y=value.nr,pch=pch)
if (freq.nr>1 & !lines) points(x=left.nr + c(0:(freq.nr-1))*
	(right.nr-left.nr)/(freq.nr-1),y=rep(value.nr,freq.nr),pch=pch)
if (freq.nr>1 & lines) points(x=left.nr + c(0:(freq.nr-1))*
	(right.nr-left.nr)/(freq.nr-1),y=rep(value.nr,freq.nr),
	pch=pch,type='o',lty=lty)
} # end for value.nr
} # end for comp
lapply(xx,table)
} # end function multiple.distribution.graph

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

-ca4mEPLTtv