From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 05:11:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T9BkL9023459
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 05:11:47 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T9B0Qi024103;
	Fri, 29 Jun 2007 11:11:15 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_20,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail.precheza.cz (mail.precheza.cz [80.188.29.243])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T9AcXg023873;
	Fri, 29 Jun 2007 11:10:38 +0200
Received: from localhost (localhost [127.0.0.1])
	by mail.precheza.cz (Mailer) with ESMTP id 12DA134E586;
	Fri, 29 Jun 2007 11:10:37 +0200 (CEST)
Received: from mail.precheza.cz ([127.0.0.1])
	by localhost (mail.precheza.cz [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 05094-01-63; Fri, 29 Jun 2007 11:10:34 +0200 (CEST)
Received: from n5en1.precheza.cz (n5en1.precheza.cz [192.168.210.35])
	by mail.precheza.cz (Mailer) with ESMTP id 275A234E584;
	Fri, 29 Jun 2007 11:10:33 +0200 (CEST)
In-Reply-To: <CC6EFC32-9919-4F1F-97D1-C7EA38F27489@csbl.bmb.uga.edu>
To: Kyle Ellrott <kellrott@csbl.bmb.uga.edu>
MIME-Version: 1.0
X-Mailer: Lotus Notes Release 7.0.1 January 17, 2006
Message-ID: <OFA64395C6.246D2B02-ONC1257309.00320FDA-C1257309.00326858@precheza.cz>
From: Petr PIKAL <petr.pikal@precheza.cz>
Date: Fri, 29 Jun 2007 11:10:34 +0200
X-MIMETrack: Serialize by Router on SRVDomino/PRECHEZA(Release 7.0.1FP1 | May
	25, 2006) at 29.06.2007 11:10:35,
	Serialize complete at 29.06.2007 11:10:35
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, r-help-bounces@stat.math.ethz.ch,
   Prof Brian Ripley <ripley@stats.ox.ac.uk>
Subject: Re: [R] "no applicable method"
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

Hi

>From help page

A data frame is a list of variables of the same length with unique row 
names, given class "data.frame". 

so something completely different from matrix (which is AFAIK a vector 
with dimensions attribute). Therefore  matrix needs to have all its values 
of the same type (numeric, character) but in data framwe you can mix 
columns with different types.

Regards

Petr Pikal
petr.pikal@precheza.cz

r-help-bounces@stat.math.ethz.ch napsal dne 28.06.2007 20:12:49:

> You actually got it right.
> I didn't realize there was a difference between a data frame and 
> matrix.  What is the difference any way?  Seems like all two 
> dimensional arrays should be equivalent.
> 
> Kyle
> 
> 
> 
> > On Wed, 27 Jun 2007, Kyle Ellrott wrote:
> >
> >> I'm getting started in R, and I'm trying to use one of the gradient
> >> boosting packages, mboost.  I'm already installed the package with
> >> install.packages("mboost") and loaded it with library(mboost).
> >> My problem is that when I attempt to call glmboost, I get a message
> >> that " Error in glmboost() : no applicable method for "glmboost" ".
> >> Does anybody have an idea of what kind of problem this is 
> >> indicative of?
> >
> > The wrong class of input object 'x'.  The help page for glmboost is 
> > written obscurely, but it seems to imply that it has methods for 
> > 'formula' and 'matrix'.
> >
> > Perhaps you passed a data frame?
> >
> >> PLEASE do read the posting guide http://www.R-project.org/posting- 
> >> guide.html
> >> and provide commented, minimal, self-contained, reproducible code.
> >
> > is pertinent.  With an example and its output we would have been 
> > much better placed to help you.
> >
> > -- 
> > Brian D. Ripley,                  ripley@stats.ox.ac.uk
> > Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
> > University of Oxford,             Tel:  +44 1865 272861 (self)
> > 1 South Parks Road,                     +44 1865 272866 (PA)
> > Oxford OX1 3TG, UK                Fax:  +44 1865 272595
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

etT 0<