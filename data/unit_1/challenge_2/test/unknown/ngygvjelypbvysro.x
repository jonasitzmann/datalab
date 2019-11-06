From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 12:41:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5IGfAL9019608
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 12:41:11 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IGeVin012845;
	Mon, 18 Jun 2007 18:40:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from vms040pub.verizon.net (vms040pub.verizon.net [206.46.252.40])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IGeNxE012814
	for <R-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 18:40:23 +0200
Received: from CeleronLCF.lcfltd.com ([70.106.23.203])
	by vms040.mailsrvcs.net (Sun Java System Messaging Server 6.2-6.01
	(built Apr
	3 2006)) with ESMTPA id <0JJU008ERBJVSI42@vms040.mailsrvcs.net> for
	R-help@stat.math.ethz.ch; Mon, 18 Jun 2007 11:38:20 -0500 (CDT)
Date: Mon, 18 Jun 2007 12:38:16 -0400
From: Robert A LaBudde <ral@lcfltd.com>
In-reply-to: <11178663.post@talk.nabble.com>
To: R-help@stat.math.ethz.ch
Message-id: <0JJU008EUBJWSI42@vms040.mailsrvcs.net>
MIME-version: 1.0
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
References: <11178663.post@talk.nabble.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Optimization
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

You don't need optimization for the solution to your problem. You 
just need an understanding of the meaning of qnorm() and some simple algebra.

Try: x<- (0.01-0.0032)/qnorm(0.7,0,1)


At 12:01 PM 6/18/2007, you wrote:

>Hi, I would like to minimize the value of x1-x2, x2 is a fixed value of 0.01,
>x1 is the quantile of normal distribution (0.0032,x) with probability of
>0.7, and the changing value should be x. Initial value for x is 0.0207. I am
>using the following codes, but it does not work.
>
>fr <- function(x) {
>       x1<-qnorm(0.7,0.0032,x)
>       x2=0.01
>       x1-x2
>}
>xsd <- optim(0.0207, fr, NULL,method="BFGS")
>
>It is the first time I am trying to use optimization. Could anyone give me
>some advice?
>--
>View this message in context: 
>http://www.nabble.com/Optimization-tf3941212.html#a11178663
>Sent from the R help mailing list archive at Nabble.com.
>
>______________________________________________
>R-help@stat.math.ethz.ch mailing list
>https://stat.ethz.ch/mailman/listinfo/r-help
>PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
>and provide commented, minimal, self-contained, reproducible code.

================================================================
Robert A. LaBudde, PhD, PAS, Dpl. ACAFS  e-mail: ral@lcfltd.com
Least Cost Formulations, Ltd.            URL: http://lcfltd.com/
824 Timberlake Drive                     Tel: 757-467-0954
Virginia Beach, VA 23464-3239            Fax: 757-467-2947

"Vere scire est per causas scire"

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

-qErra