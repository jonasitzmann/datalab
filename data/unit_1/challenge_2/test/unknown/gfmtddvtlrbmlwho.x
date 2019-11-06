From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 15:50:17 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TJoFL9030230
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 15:50:16 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TJmWX0023880;
	Fri, 29 Jun 2007 21:48:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=AWL, BAYES_99,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.179])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TJmQNj023853
	for <r-help@lists.r-project.org>; Fri, 29 Jun 2007 21:48:26 +0200
Received: from [84.160.168.165] (helo=dieter)
	by mrelayeu.kundenserver.de (node=mrelayeu0) with ESMTP (Nemesis),
	id 0MKwh2-1I4MS91HXM-0004JP; Fri, 29 Jun 2007 21:48:26 +0200
From: "Dieter Menne" <dieter.menne@menne-biomed.de>
To: "R-Help" <r-help@stat.math.ethz.ch>
Date: Fri, 29 Jun 2007 21:48:25 +0200
Message-ID: <LPEJLJACLINDNMBMFAFIIEFICIAA.dieter.menne@menne-biomed.de>
MIME-Version: 1.0
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook IMO, Build 9.0.6604 (9.0.2911.0)
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
Importance: Normal
X-Provags-ID: V01U2FsdGVkX19r10mAfc5unw6wxcTHgrUxr6j3rrOK+6AxoB6
	2ps8zg7rXgjtUssWKG2gEvvXZiB6Lw5nOy57bo+AI2/v8y1IMr
	DlbQHCw693jPJs6FL8mig==
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Print grid/ggplot to a metafile
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: dieter.menne@menne-biomed.de
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

Dear UseRs called Hadley, or Paul,

I am trying to print an edited ggplot2/grid graphics to a metafile. With the
commented line below it works, but when I edit the plot by uncommenting the
line, it fails, because it's illegal to have 2 graphics in a metafile. It
works with pdf, but even then I get two plots, which is a nuisance.

I found a workaround by using windows(); savePlot, but it only works in
interactive mode, not when called with something like (Windows)

rterm --no-save < printit.r

Any ideas?

Dieter

#------
library(ggplot2)
win.metafile(file="bar.emf")
mtcars$cyls = factor(mtcars$cyl,
  labels=c("four\ncylinders","six\ncylinders","eight\ncylinders"))
ggplot(mtcars, aes(x=cyls)) + geom_bar()
#grid.gedit("xaxis::labels::label.text",just=c("center","center"))
dev.off()

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

=
tV=4 ioaR 