From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 01:34:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l575YJhB030452
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 01:34:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l575Wddc009938;
	Thu, 7 Jun 2007 07:33:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l575WWFC009910
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 07:32:32 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l575WTtC015516; 
	Thu, 7 Jun 2007 06:32:30 +0100 (BST)
Date: Thu, 7 Jun 2007 06:32:29 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Erin Hodgess <hodgess@gator.dt.uh.edu>
In-Reply-To: <200706062031.l56KViT3002451@gator.dt.uh.edu>
Message-ID: <Pine.LNX.4.64.0706070614480.32661@gannet.stats.ox.ac.uk>
References: <200706062031.l56KViT3002451@gator.dt.uh.edu>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] compiling from source on Vista
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

On Wed, 6 Jun 2007, Erin Hodgess wrote:

> Dear R People:
>
> In the "R Installation and Administration" manual, there is a note
> that the process used to compile R from source will NOT work on Windows Vista.
>
> Does anyone know if that situation has changed, please?

That's not quite what it says:

   Note that there are known problems with using this compiler set (and all
   others available at the time of writing) on Windows Vista 
(@url{http://www.nabble.com/environment-hosed-during-upgrade-tf3305745.html#a9195667}
   and that some updates are needed (see the URL above).

As far as I know no update for 'g77' is available for download (so in that 
sense the situation is unchanged) but I believe that the existing tools 
can be gotten to work by setting suitable paths.

We had expected a new MinGW release by now (June 1 was mentioned), so 
hopefully the official solution to this is imminent.

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

               

yC	rxc)ccg