From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 12:00:59 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62G0sL9015711
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 12:00:57 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62G0AV1009403;
	Mon, 2 Jul 2007 18:00:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.9 required=5.0 tests=AWL, BAYES_99,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from slim.kubism.ku.dk (slim.kubism.ku.dk [192.38.18.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62G04ot009341
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 18:00:04 +0200
Received: from titmouse2.kubism.ku.dk (0x50c633f5.boanxx12.adsl-dhcp.tele.dk
	[80.198.51.245])
	by slim.kubism.ku.dk (Postfix) with ESMTP id CE9BD21EAF;
	Mon,  2 Jul 2007 17:59:53 +0200 (CEST)
Message-ID: <468920F8.3000804@biostat.ku.dk>
Date: Mon, 02 Jul 2007 17:59:52 +0200
From: Peter Dalgaard <p.dalgaard@biostat.ku.dk>
User-Agent: Thunderbird 2.0.0.4 (X11/20070615)
MIME-Version: 1.0
To: Hao Liu <hao.liu@bms.com>
References: <46891A2E.6050709@bms.com>
In-Reply-To: <46891A2E.6050709@bms.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] focus to tkwindow after a PDF window pop up
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

Hao Liu wrote:
> Dear All:
>
> I currently have a TK window start a acroread window: However, when the 
> acroread window is open, I can't get back to the TK window unless I 
> close the acroead.
>
> I invoked the acroread window using: system(paste("acroread ",file, sep=""))
>
> anything I can do to make them both available to users?
>   
Tell system() not to _wait_ for command to complete.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

 a�d>20pur,w