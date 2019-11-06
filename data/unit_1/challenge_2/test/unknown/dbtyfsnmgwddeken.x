From r-help-bounces@stat.math.ethz.ch  Fri Jun 22 08:08:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5MC8sL9005968
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 08:08:55 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MC8KFs006362;
	Fri, 22 Jun 2007 14:08:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from gse-mta-08.emailsystems.com (gse-mta-08.emailsystems.com
	[62.249.212.168])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MBo1ql031505
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 13:50:03 +0200
Received: from tedmail2.lgc.co.uk ([194.73.101.131])
	by gse-mta-08.emailsystems.com with emfmta (version
	3.4.1.3246.0.rd-3.2.2-libc2.3.1) vanilla id 870039102
	for r-help@stat.math.ethz.ch; Fri, 22 Jun 2007 12:50:01 +0100
Received: from LGC_CLUST_GWIA-MTA by tedmail2.lgc.co.uk
	with Novell_GroupWise; Fri, 22 Jun 2007 12:50:01 +0100
Message-Id: <s67bc579.034@tedmail2.lgc.co.uk>
X-Mailer: Novell GroupWise Internet Agent 6.5.4 
Date: Fri, 22 Jun 2007 12:49:38 +0100
From: "S Ellison" <S.Ellison@lgc.co.uk>
To: <r-help@stat.math.ethz.ch>, <bwilfley@tripleringtech.com>
Mime-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5MBo1ql031505
Subject: Re: [R] abline plots at wrong abscissae after boxplot
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

Boxplot positions and labels are not the same thing.
You have groups 'called' "2", "3", "4". As factors - which is what bocplot will turn them into -  they will be treated as arbitrary labels and _numbered_ 1:3 (try as.numeric(factor(x)). 

So your lm() used 2:4, but your plot (and abline) uses 1:3 for positions and "2" - "4" as labels. 

The best option used to be to plot the boxes at positions 2:4. Look at the at= parameter in boxplot.
But that is now of little help because there is no way of overriding xlim, leaving you no alternative but to reformulate your model with an offset or something. 

I will take up the boxplot xlim issue separately on R-dev; it's not the only such.

Steve Ellison.

>>> "Brian Wilfley" <bwilfley@tripleringtech.com> 21/06/2007 22:44:17 >>>
I'm trying to add lines to a plot originally made with "boxplot", but
the lines appear in the wrong place. 

*******************************************************************
This email and any attachments are confidential. Any use, co...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

49Pzew