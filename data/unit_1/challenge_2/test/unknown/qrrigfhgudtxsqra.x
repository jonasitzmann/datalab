From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 10:04:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CE48L9027085
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 10:04:09 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CE2lnH004404;
	Tue, 12 Jun 2007 16:02:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=AWL, BAYES_20,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CE2eNA004352
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 16:02:40 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5CE2Zcg001848; 
	Tue, 12 Jun 2007 15:02:35 +0100 (BST)
Date: Tue, 12 Jun 2007 15:02:35 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Cinzia Viroli <cinzia.viroli@unibo.it>
In-Reply-To: <DF025CBD019FD846B06D381BE3D0C3D302CC51@EXBK04.personale.dir.unibo.it>
Message-ID: <Pine.LNX.4.64.0706121453420.19641@gannet.stats.ox.ac.uk>
References: <DF025CBD019FD846B06D381BE3D0C3D302CC51@EXBK04.personale.dir.unibo.it>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Building packages with subroutine in fortran 90 under
 windows xp
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

The tools do not include an F9x compiler: you need to edit MkRules to 
specify the path to one (after installing it) (and you did last March).

If I do that, I can install and check packages such as oc and wnominate 
from CRAN that make use of F9x.


On Tue, 12 Jun 2007, Cinzia Viroli wrote:

> Hello,
>
> I work under windows xp and I am trying to build a R package with a 
> subroutine written in fortran 90. I have installed all the updated tools 
> and I am working with R-2.4.0 or R-2.5.0.

'all the updated tools' is just too vague to be useful.

> When I check a package with a subroutine in fortran 77 (and extension f) 
> everything is ok. When I try to build the same package with a subroutine 
> in fortran 90 (with extension f90) the following warning appears:
>
> Subdirectory 'src' contains no source files
>
> and the package can not be built.
>
> The funny thing is that I have successfully built the same package with 
> fortran 90 last March and everything was good.
>
> I can not imagine what is the problem, can anyone help me?
> Thank you in advance,
> best,
> Cinzia
>
>
>
>
>
> ------------------------------------------------------------------------------------------------------------------------------------------------
> Cinzia Viroli
> Dipartimento di Scienze Statistiche "Paolo Fortunati"
> Via delle Belle Arti 41
> 40126 Bologna
> Italy
> Ph.  +39 051 2094628
> Fax  +39 051 232153
>
> home: www2.stat.unibo.it/viroli
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

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

        

ews i<on"r