From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 05:10:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l629ANL9011714
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 05:10:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l6298tAN025440;
	Mon, 2 Jul 2007 11:09:12 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.3 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from out2.smtp.messagingengine.com (out2.smtp.messagingengine.com
	[66.111.4.26])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l6298mXc025411
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 11:08:49 +0200
Received: from compute1.internal (compute1.internal [10.202.2.41])
	by out1.messagingengine.com (Postfix) with ESMTP id DB6435393
	for <r-help@stat.math.ethz.ch>; Mon,  2 Jul 2007 05:08:47 -0400 (EDT)
Received: from heartbeat1.messagingengine.com ([10.202.2.160])
	by compute1.internal (MEProxy); Mon, 02 Jul 2007 05:08:47 -0400
X-Sasl-enc: SImZzfo59DtetPVQpak4qu7Qr4iQ4TD+LDPwnEFJfQJg4j0 1183367327
Received: from [131.155.176.100] (dyn-176100.nbw.tue.nl [131.155.176.100])
	by mail.messagingengine.com (Postfix) with ESMTP id 7B36C1928
	for <r-help@stat.math.ethz.ch>; Mon,  2 Jul 2007 05:08:47 -0400 (EDT)
Message-ID: <4688C09E.7080400@tue.nl>
Date: Mon, 02 Jul 2007 11:08:46 +0200
From: Dieter Vanderelst <d.vanderelst@tue.nl>
Organization: TUe - Eindhoven University of Technology
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Combine graphical and textual output
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

Hi,

I would like to know whether anybody knows a simple way to combine 
textual and graphical output in R.

A typical analysis produces textual output (e.g. model fits) and plots 
in R. I would like to know whether R has the possibility of combining 
these into a single 'report' or output. An example of a program that 
does this is SPSS. After running the analysis you have a combination of 
textual output (tables) and plots that are easy to print and distribute.

I know of the possibility to embed R code into LATEX (using Sweave), but 
I wouldn't call this quick since a lot of coding will go into writing 
the Sweave file.

Any other suggestions?

Regards,
Dieter

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

>r5t(1  bpen;