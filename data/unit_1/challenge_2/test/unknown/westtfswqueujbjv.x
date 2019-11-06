From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 09:11:23 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BDBLL9014291
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 09:11:22 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BDAfFo028243;
	Mon, 11 Jun 2007 15:10:48 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BDAUsL028194
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 15:10:30 +0200
Received: from root by ciao.gmane.org with local (Exim 4.43)
	id 1Hxjel-0004xe-3Z
	for r-help@stat.math.ethz.ch; Mon, 11 Jun 2007 15:10:03 +0200
Received: from mag36.gfz-potsdam.de ([139.17.150.136])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 15:10:03 +0200
Received: from michaeli by mag36.gfz-potsdam.de with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 15:10:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Ingo Michaelis <michaeli@gfz-potsdam.de>
Date: Mon, 11 Jun 2007 13:03:14 +0000 (UTC)
Lines: 28
Message-ID: <loom.20070611T150007-317@post.gmane.org>
References: <466D3B89.8020007@agr.uni-goettingen.de>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 139.17.150.136 (Mozilla/5.0 (X11; U; Linux i686; de-DE;
	rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty))
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Selecting all values smaller than X in a dataframe
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

Christoph Scherber <Christoph.Scherber <at> agr.uni-goettingen.de> writes:

> 
> Dear R users,
> 
> I have a correlation matrix for a dataframe called "synth", for which I 
> now want to select only those cells that have correlations larger than 
> +/-0.6:
> 
> synth=data.frame(x=rnorm(10,1),y=rnorm(10,2),z=rnorm(10,0.5))
> 
> w=cor(synth,use="pairwise.complete.obs")
> w=as.data.frame(w)
> w[,sapply(w,abs(w),">",0.6)]
 

Dear Christoph,

just change the last command to

w[abs(w)>0.6]


Best wishes
Ingo

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

<ons-Y wL