From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 15:42:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65Jg2L9030460
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 15:42:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65JfJIw003784;
	Thu, 5 Jul 2007 21:41:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65Jf9ao003741
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 21:41:10 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I6XCD-0004Cu-G1
	for r-help@stat.math.ethz.ch; Thu, 05 Jul 2007 21:40:57 +0200
Received: from edina-ce1.atk.com ([138.64.8.51])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 05 Jul 2007 21:40:57 +0200
Received: from mark.lyman by edina-ce1.atk.com with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 05 Jul 2007 21:40:57 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Mark Lyman <mark.lyman@gmail.com>
Date: Thu, 5 Jul 2007 19:40:50 +0000 (UTC)
Lines: 51
Message-ID: <loom.20070705T213616-529@post.gmane.org>
References: <loom.20070705T164554-595@post.gmane.org>
	<eb555e660707051124k40e8f89byb48fb4a5b9db4601@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 138.64.8.51 (Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1;
	.NET CLR 1.1.4322; .NET CLR 2.0.50727))
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Adding points to a wireframe with conditioning variable
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

Deepayan Sarkar <deepayan.sarkar <at> gmail.com> writes:

> 
> On 7/5/07, Mark Lyman <mark.lyman <at> gmail.com> wrote:
> > I would like to add points to a wireframe but with a conditioning 
variable. I
> > found a solution for this without a conditioning variable here,
> > http://finzi.psych.upenn.edu/R/Rhelp02a/archive/65321.html. Does anyone 
know
> > how to plot a wireframe conditioned on a variable and add the points
> > conditioned on the same variable, similar to the solution at the link 
above?
> 
> Depends on what form you have your points in. Inside a panel function,
> packet.number() will give you the packet number in sequential order
> (column major order if you think of the conditioning variables as
> defining a multiway cross-tabulation), and which.packet() will give
> you a vector with the current level of each conditioning variable. You
> can use these to extract the appropriate subset of points.
> 
> -Deepayan

Thank you Deepayan. I modified the panel function you wrote in the post 
referenced above according to your suggestion. Here is the panel function, I 
came up with


panel.3dwire.points <- function(x, y, z, xlim, ylim, zlim, xlim.scaled,
	ylim.scaled, zlim.scaled, pts, ...)
{
	panel.3dwire(x=x, y=y, z=z, xlim=xlim, ylim=ylim, zlim=zlim,
		xlim.scaled=xlim.scaled, ylim.scaled=ylim.scaled,
		zlim.scaled=zlim.scaled, ...)
	pts.sub <- subset(pts, g==levels(g)[which.packet()])
	xx <- xlim.scaled[1] + diff(xlim.scaled)*(pts.sub$x - xlim[1])/diff
(xlim)
	yy <- ylim.scaled[1] + diff(ylim.scaled)*(pts.sub$y - ylim[1])/diff
(ylim)
	zz <- zlim.scaled[1] + diff(zlim.scaled)*(pts.sub$z - zlim[1])/diff
(zlim)
	panel.3dscatter(x=xx, y=yy, z=zz, xlim=xlim, ylim=ylim, zlim=zlim,
		xlim.scaled=xlim.scaled, ylim.scaled=ylim.scaled,
		zlim.scaled=zlim.scaled, ...)
}

where pts is a dataframe with the three dimensional points (x,y,z) and the 
conditioning variable g.

Mark

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

zAAd