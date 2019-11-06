From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 11:32:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FFWfL9003832
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 11:32:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FFV5DJ000752;
	Fri, 15 Jun 2007 17:31:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FFUb5R000645
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 17:30:37 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HzDkp-0004Fe-ER
	for r-help@stat.math.ethz.ch; Fri, 15 Jun 2007 17:30:27 +0200
Received: from cvi4047.ugr.es ([150.214.204.47])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 17:30:27 +0200
Received: from quesada by cvi4047.ugr.es with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 17:30:27 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Jose <quesada@gmail.com>
Date: Fri, 15 Jun 2007 15:30:19 +0000 (UTC)
Lines: 46
Message-ID: <loom.20070615T172404-132@post.gmane.org>
References: <op.ttxku71z4hcap5@delllap.ugr.es> <4671C1DB.10201@biostat.ku.dk>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 150.214.204.47 (Opera/9.21 (Windows NT 5.1; U; en))
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Error: bad value ? what is that?
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

Peter Dalgaard <p.dalgaard <at> biostat.ku.dk> writes:

> 
> Jose Quesada wrote:
> > Hi,
> >
> > I'm finding a very strange error.
> > For no good reason my R console (Rgui.exe, R 2.5.0, under win XP) stops  
> > producing anything meaningful, and just returns:
> > Error: bad value
> > to _whatever_ I enter. It starts doing this after a while, not immediately  
> > when launched.
> >
> > I have to restart R when this happens.
> > No idea why. I didn't change anything in the R config that I remenber.
> >
> > Any thoughts?
> >
> > Thanks.
> >
> >   
> Hmm that message comes from deep down inside SETCAR() and friends. I 
> can't see other reasons for it than memory corruption. Are you running 
> some rogue C code? Is the machine flaky in other respects?
> 
> ______________________________________________
> R-help <at> stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 

Thanks Peter,

Interesting; I upgraded my laptop to 2 gigs. and from that point on, it 
sometimes fauls to hibernate (just hangs). Maybe this is related? I installed 
an XP patch to solve hibernation problems with laptops over 2 gigs...

Maybe it didn't work?

-Jose
Re: Rogue c code: I was running library(Matrix), which is a pretty complicated 
piece of code and surely has c code...

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

dna1i<<l'eeeD/o