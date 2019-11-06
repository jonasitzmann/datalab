From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 16:52:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PKqUL9001355
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 16:52:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PKpEg8019989;
	Mon, 25 Jun 2007 22:51:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME, WEIRD_QUOTING autolearn=no version=3.2.0
Received: from mta1.siol.net (mta1.siol.net [193.189.160.86])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PKp7Q9019958
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 22:51:07 +0200
Received: from edge2.siol.net ([10.10.10.211]) by mta1.siol.net with ESMTP
	id <20070625205102.TCGO21179.mta1.siol.net@edge2.siol.net>
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 22:51:02 +0200
Received: from [192.168.1.100] (really [193.95.242.186]) by edge2.siol.net
	with ESMTP
	id <20070625205102.XZMP1923.edge2.siol.net@[192.168.1.100]>
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 22:51:02 +0200
Message-ID: <46802AB3.20409@siol.net>
Date: Mon, 25 Jun 2007 22:50:59 +0200
From: Andrej Kastrin <andrej.kastrin@siol.net>
User-Agent: Thunderbird 1.5.0.12 (X11/20070509)
MIME-Version: 1.0
To: R-help <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] How to shadow 'power' area?
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

Suppose I plot two normal distributions (A and B) side by side and add 
vertical line which hipotheticaly represent alpha value; e.g.:

x <- seq(-3.5,5, length=1000)
y <- dnorm(x)
# Plot distribution A
plot(y~x, type='l',axes=F,xlab="",ylab="",lwd=2)
# Plot distribution B
y2 <- dnorm(x-1.5)
lines(y2~x,lwd=2)
# Plot vertical line for alpha value
abline(h=0)
segments(qnorm(.5)+1.5,0,qnorm(.5)+1.5,dnorm(qnorm(.5)))
text(2,0.2,"Power")

Now I want to shadow area labeled as "Power". Any suggestion how to do 
that using 'polygon' function?

Thanks in advance for any suggestion.

Andrej

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

n S3e:=0i US