From r-help-bounces@stat.math.ethz.ch  Fri Jun 22 03:53:10 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5M7r9L9003128
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 03:53:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5M7pjHm005681;
	Fri, 22 Jun 2007 09:52:00 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5M7ohSa005295
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 09:50:43 +0200
Received: from root by ciao.gmane.org with local (Exim 4.43)
	id 1I1du6-0006Rs-5J
	for r-help@stat.math.ethz.ch; Fri, 22 Jun 2007 09:50:02 +0200
Received: from rkrug-uct.sun.ac.za ([146.232.208.144])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 09:50:02 +0200
Received: from rmk by rkrug-uct.sun.ac.za with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 09:50:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: "Rainer M. Krug" <rmk@krugs.de>
Date: Fri, 22 Jun 2007 09:31:45 +0200
Lines: 27
Message-ID: <f5ftp5$sb0$1@sea.gmane.org>
References: <405017.3092.qm@web56612.mail.re3.yahoo.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: rkrug-uct.sun.ac.za
User-Agent: Thunderbird 2.0.0.0 (X11/20070326)
In-Reply-To: <405017.3092.qm@web56612.mail.re3.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Generating vetor (shapefiles) from AscGrid raster in R
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

What about using grass 6, combined with spgrass6 and the command r.to.vect?

Rainer

Milton Cezar Ribeiro wrote:
> Hi there,
> 
> I need to convert a raster (ascGrid) format to Shape files.
> Is there a way of to do that on R?
> 
> Kind regards
> 
> miltinho
> 
> 
>        
> ____________________________________________________________________________________
> 
> http://yahoo.com.br/oqueeuganhocomisso 
> 	[[alternative HTML version deleted]]
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

MMlw;PX
eAa	