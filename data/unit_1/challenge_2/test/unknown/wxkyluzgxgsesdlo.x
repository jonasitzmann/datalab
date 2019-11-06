From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 11:07:29 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KF7SL9011476
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 11:07:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KF6f8Q028785;
	Wed, 20 Jun 2007 17:06:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from alnrmhc11.comcast.net (alnrmhc11.comcast.net [204.127.225.91])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KEZ98Y016401
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 16:35:10 +0200
Received: from basebud.nulle.part
	(c-67-174-13-164.hsd1.il.comcast.net[67.174.13.164])
	by comcast.net (alnrmhc11) with ESMTP
	id <20070620143458b1100i312qe>; Wed, 20 Jun 2007 14:35:08 +0000
Received: from edd by basebud.nulle.part with local (Exim 4.67)
	(envelope-from <edd@debian.org>)
	id 1I11Gr-0004yV-IV; Wed, 20 Jun 2007 09:34:57 -0500
Date: Wed, 20 Jun 2007 09:34:57 -0500
From: Dirk Eddelbuettel <edd@debian.org>
To: Robert Dunne <rob.dunne@gmail.com>, r-help@stat.math.ethz.ch
Message-ID: <20070620143457.GA19115@eddelbuettel.com>
References: <f5b6gc$d1a$1@sea.gmane.org>
	<20070620141047.GA18846@eddelbuettel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20070620141047.GA18846@eddelbuettel.com>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] compiler cannot create executables
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

On Wed, Jun 20, 2007 at 09:10:47AM -0500, Dirk Eddelbuettel wrote:
> On Wed, Jun 20, 2007 at 10:25:07PM +1000, Robert Dunne wrote:
> > Hi List,
> > 
> > 
> > I get an error message "compiler cannot create executables" when I try 
> > to install a package.
> > 
> > Searching the list archives reveals many messages with the same error 
> > message. The advice is generally to install g++ and development libraries.
> > 
> > However, I have g++ installed and can compile and run programs as myself 
> > and via sudo. I got the library to install by using
> > 
> > %sudo R CMD INSTALL --no-configure e1071_1.5-16.tar.gz
> 
> This statement of your conflicts with the msg you show below. Do you,
> or don't you, succeed?
> 
> > can anyone explain this? Also where is the config.log that I should look 
> > in (see output below)? Isn't that in a tmp directory that is removed 
> > when the install fails?
> > 
> > 
> > %  sudo R CMD INSTALL e1071_1.5-16.tar.gz
> > Password:
> > * Installing *source* package 'e1071' ...
> > checking for C++ compiler default output file name... configure: error: 
> > C++ compiler cannot create executables
> > See `config.log' for more details.
> > 
> > R 2.3.1 on kubuntu  breezy (5.10 I think)
> 
> Please try 
> 
>        $ sudo apt-get install r-base-dev
> 
> as you seem to missing g++, and probably a host of other things.

I don't have access to a 'breezy' box anymore but what it could be is
that R expects a different compiler version then the system has as
default -- g++-4.0 vs g++-3.4.

What does 'grep g++ /etc/R/Makeconf' yield?

-- 
Hell, there are no rules here - we're trying to accomplish something. 
                                                  -- Thomas A. Edison

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

ae ef
e