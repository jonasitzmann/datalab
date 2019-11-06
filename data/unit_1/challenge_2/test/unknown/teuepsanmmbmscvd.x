From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 08:48:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TCmVL9025775
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 08:48:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TClq9K008260;
	Fri, 29 Jun 2007 14:48:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from gse-mta-08.emailsystems.com (gse-mta-08.emailsystems.com
	[62.249.212.168])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TCbbJ6005112
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 14:37:38 +0200
Received: from tedmail2.lgc.co.uk ([194.73.101.131])
	by gse-mta-08.emailsystems.com with emfmta (version
	3.4.1.3246.0.rd-3.2.2-libc2.3.1) vanilla id 877441046
	for r-help@stat.math.ethz.ch; Fri, 29 Jun 2007 13:37:36 +0100
Received: from LGC_CLUST_GWIA-MTA by tedmail2.lgc.co.uk
	with Novell_GroupWise; Fri, 29 Jun 2007 13:37:37 +0100
Message-Id: <s6850b21.046@tedmail2.lgc.co.uk>
X-Mailer: Novell GroupWise Internet Agent 6.5.4 
Date: Fri, 29 Jun 2007 13:37:20 +0100
From: "S Ellison" <S.Ellison@lgc.co.uk>
To: <r-help@stat.math.ethz.ch>
Mime-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5TCbbJ6005112
Subject: Re: [R] : regular expressions: escaping a dot
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

EOF from a keyboard on Windows is often Ctrl+Z. 

But you're right; it's platform dependent. CtrlZ in Unix has less desirable effects on readLines(). And on your running R process...

Drat.

>>> Peter Dalgaard <P.Dalgaard@biostat.ku.dk> 29/06/2007 12:42:41 >>>
S Ellison wrote:
> Wouldn't it be nice if the Help for readLines mentioned how to introduce an EOF when reading from stdin ...?
>
> Steve E
>
>   
Yes (in a couple of other cases, too) but it is likely platform
dependent. What do you use on Windows and is it the same in the terminal
and the GUI versions? And on Mac?


*******************************************************************
This email and any attachments are confidential. Any use, co...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

ffler
 VLa