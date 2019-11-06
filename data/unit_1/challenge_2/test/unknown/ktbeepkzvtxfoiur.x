From r-help-bounces@stat.math.ethz.ch  Sun Jun  3 11:22:50 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53FMihB016924
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 11:22:45 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53FLKp4009841;
	Sun, 3 Jun 2007 17:21:32 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from lmtp1.ucs.ed.ac.uk (lmtp1.ucs.ed.ac.uk [129.215.149.64])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53FLE7v009819
	for <r-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 17:21:14 +0200
Received: from smtp.staffmail.ed.ac.uk (mailwfe1.ucs.ed.ac.uk [129.215.149.65])
	by lmtp1.ucs.ed.ac.uk (8.13.8/8.13.7) with ESMTP id l53FLEC4013299;
	Sun, 3 Jun 2007 16:21:14 +0100 (BST)
Received: from bio-sbsr-1422.icmb.ed.ac.uk (bio-sbsr-1422.icmb.ed.ac.uk
	[129.215.14.63]) by www.staffmail.ed.ac.uk (Horde MIME library) with
	HTTP; Sun, 03 Jun 2007 16:21:14 +0100
Message-ID: <20070603162114.yqyq3h0qmg4kcsgs@www.staffmail.ed.ac.uk>
Date: Sun, 03 Jun 2007 16:21:14 +0100
From: J.delasHeras@ed.ac.uk
To: Bernard Colin <Bernard.Colin@usherbrooke.ca>
References: <1180823691.4661f08b460a8@www.usherbrooke.ca>
In-Reply-To: <1180823691.4661f08b460a8@www.usherbrooke.ca>
MIME-Version: 1.0
Content-Disposition: inline
X-Edinburgh-Scanned: at lmtp1.ucs.ed.ac.uk
	with MIMEDefang 2.52, Sophie, Sophos Anti-Virus
X-Scanned-By: MIMEDefang 2.52 on 129.215.149.64
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l53FLE7v009819
Cc: "r-help@lists.R-project.org" <r-help@stat.math.ethz.ch>
Subject: Re: [R] Re : I need some help please!
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

Quoting Bernard Colin <Bernard.Colin@usherbrooke.ca>:

>
> To whom it may concern,
>
> I want to plot two or more graphics in the same window by the means of the
> "plot" command. To do that, I have tried the "add=TRUE" option, but this last
> one does not work! Do you have an hint for me please?
>
> Thank you very much for your attention.
>
> Bernard Colin

You've already been offered the par(mfrow=c(x,y)) option, to plot  
multiple graphs into one figure.

If what you want is to plot something, and then add another one _on  
top_ of it, there are various ways to do that.
If you're plotting lines, points, etc... you can simply use 'plot' for  
the first one, and 'lines' or 'points' for the others.
Sometimes that's not good enough, in which case you should look at  
?par again, and check the effect of par(new=T).
You can make one plot, then call par(new=T) and plot again... the  
second plot gets drawn right on top of the first. You may have to plot  
without the automatic axis drawing, and specify the axes yourself  
(?axis)... that is also teh way to show multiple axes in plots (say a  
common X and two different Y axes... etc).

Jose


-- 
Dr. Jose I. de las Heras                      Email: J.delasHeras@ed.ac.uk
The Wellcome Trust Centre for Cell Biology    Phone: +44 (0)131 6513374
Institute for Cell & Molecular Biology        Fax:   +44 (0)131 6507360
Swann Building, Mayfield Road
University of Edinburgh
Edinburgh EH9 3JR
UK

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               


 zs<ouv >a <