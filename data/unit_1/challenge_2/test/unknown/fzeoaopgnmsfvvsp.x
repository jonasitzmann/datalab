From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 06:23:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62ANeL9012420
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 06:23:41 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62AMm3e013214;
	Mon, 2 Jul 2007 12:23:16 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from nibbel.kulnet.kuleuven.ac.be (nibbel.kulnet.kuleuven.ac.be
	[134.58.240.41])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62AMNCL012848
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 12:22:24 +0200
Received: from localhost (localhost [127.0.0.1])
	by nibbel.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 8973D4DCE6; Mon,  2 Jul 2007 12:22:23 +0200 (CEST)
Received: from smtps01.kuleuven.be (smtpshost01.kulnet.kuleuven.be
	[134.58.240.74]) by nibbel.kulnet.kuleuven.ac.be (Postfix) with ESMTP
	id 8ABC14DB57; Mon,  2 Jul 2007 12:22:22 +0200 (CEST)
Received: from smtps01.kuleuven.be (localhost [127.0.0.1])
	by smtps01.kuleuven.be (Postfix) with ESMTP id 353B431E705;
	Mon,  2 Jul 2007 12:22:22 +0200 (CEST)
Received: from UCSPC32 (ucs-044.ucs.kuleuven.ac.be [10.33.112.44])
	by smtps01.kuleuven.be (Postfix) with ESMTP id 2840F31E702;
	Mon,  2 Jul 2007 12:22:22 +0200 (CEST)
X-Kuleuven: This mail passed the K.U.Leuven mailcluster
From: "Jan Wijffels" <Jan.Wijffels@ucs.kuleuven.be>
To: "'zhihua li'" <lzhtom@hotmail.com>
Date: Mon, 2 Jul 2007 12:25:27 +0200
Message-ID: <002601c7bc93$4ebdbb60$2c70210a@UCSPC32>
MIME-Version: 1.0
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook, Build 10.0.2627
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1506
Importance: Normal
In-Reply-To: <Pine.LNX.4.64.0707020652040.27840@gannet.stats.ox.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] working with R graphics remotely
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

?pdf
?jpeg
and load the files back to your windows machine unless you need to work
interactively through X11

-----Original Message-----
From: Prof Brian Ripley [mailto:ripley@stats.ox.ac.uk] 
Sent: maandag 2 juli 2007 7:56
To: zhihua li
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] working with R graphics remotely

You need to forward the X11 window to your local machine, which would
need 
to be running an X server.  We do this using Exceed and PUTTY settings, 
but your sysadmins will be able to help you: it is not a question about
R 
per se.

On Mon, 2 Jul 2007, zhihua li wrote:

> Hi netters,
>
> Now I'm connecting from my local windows machine to a remote linux
machine 
> and launch R out there using SSH. When I tried to create grahics, like
using 
> plot or heatmap, I cannot see the output. Maybe a new R window
displaying the 
> graphics has popped out in the remote machine? Or I need to change
some 
> settings for the graphics to display? I don't know. I googled it and
tried 
> dev.copy but it didn't work. Can anyone help me here? I need to be
able to 
> see the output graphics and save it to a file (like jpeg)
>
> Thanks a lot!

-- 
Brian D. Ripley,                  ripley@stats.ox.ac.uk
Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
University of Oxford,             Tel:  +44 1865 272861 (self)
1 South Parks Road,                     +44 1865 272866 (PA)
Oxford OX1 3TG, UK                Fax:  +44 1865 272595




Disclaimer: http://www.kuleuven.be/cwis/email_disclaimer.htm

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

m r 