From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 01:57:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l625vaL9009673
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 01:57:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l625u4fD030869;
	Mon, 2 Jul 2007 07:56:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l625tvkJ030816
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 07:55:57 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l625to6t028278; 
	Mon, 2 Jul 2007 06:55:51 +0100 (BST)
Date: Mon, 2 Jul 2007 06:55:50 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: zhihua li <lzhtom@hotmail.com>
In-Reply-To: <BAY110-F320CE4503598BABC0AFC93C70D0@phx.gbl>
Message-ID: <Pine.LNX.4.64.0707020652040.27840@gannet.stats.ox.ac.uk>
References: <BAY110-F320CE4503598BABC0AFC93C70D0@phx.gbl>
MIME-Version: 1.0
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

You need to forward the X11 window to your local machine, which would need 
to be running an X server.  We do this using Exceed and PUTTY settings, 
but your sysadmins will be able to help you: it is not a question about R 
per se.

On Mon, 2 Jul 2007, zhihua li wrote:

> Hi netters,
>
> Now I'm connecting from my local windows machine to a remote linux machine 
> and launch R out there using SSH. When I tried to create grahics, like using 
> plot or heatmap, I cannot see the output. Maybe a new R window displaying the 
> graphics has popped out in the remote machine? Or I need to change some 
> settings for the graphics to display? I don't know. I googled it and tried 
> dev.copy but it didn't work. Can anyone help me here? I need to be able to 
> see the output graphics and save it to a file (like jpeg)
>
> Thanks a lot!

-- 
Brian D. Ripley,                  ripley@stats.ox.ac.uk
Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
University of Oxford,             Tel:  +44 1865 272861 (self)
1 South Parks Road,                     +44 1865 272866 (PA)
Oxford OX1 3TG, UK                Fax:  +44 1865 272595

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

tl�b1 i