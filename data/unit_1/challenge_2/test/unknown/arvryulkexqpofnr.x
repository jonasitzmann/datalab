From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 13:50:41 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PHocL9031978
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 13:50:38 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PHmUZS020185;
	Mon, 25 Jun 2007 19:50:08 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from race4.oit.umass.edu (race4.oit.umass.edu [128.119.101.40])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PHSmEV013592
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 19:28:49 +0200
Received: from mail-www-1.oit.umass.edu (mail-www-1.oit.umass.edu
	[128.119.2.109])
	by race4.oit.umass.edu (8.13.7/8.13.7) with ESMTP id l5PHSlQ9021654;
	Mon, 25 Jun 2007 13:28:48 -0400
Received: (from apache@localhost)
	by mail-www-1.oit.umass.edu (8.13.7/8.13.7/Submit) id l5PHSlu0010448;
	Mon, 25 Jun 2007 13:28:47 -0400
Received: from dra-70.dhcp.umass.edu (dra-70.dhcp.umass.edu [128.119.99.198]) 
	by mail-www.oit.umass.edu (IMP) with HTTP 
	for <rbc@localhost>; Mon, 25 Jun 2007 13:28:47 -0400
Message-ID: <1182792527.467ffb4f655a6@mail-www.oit.umass.edu>
Date: Mon, 25 Jun 2007 13:28:47 -0400
From: Richard Chandler <rchandler@forwild.umass.edu>
To: Prof Brian Ripley <ripley@stats.ox.ac.uk>
References: <1182787921.467fe951b35e5@mail-www.oit.umass.edu>
	<Pine.LNX.4.64.0706251752100.15740@gannet.stats.ox.ac.uk>
In-Reply-To: <Pine.LNX.4.64.0706251752100.15740@gannet.stats.ox.ac.uk>
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) 3.2.8
X-Originating-IP: 128.119.99.198
X-Originating-Host: mail-www-1.oit.umass.edu
X-Brightmail-Tracker: AAAAAQAAAAI=
X-Whitelist: TRUE
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] problem building first package
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

Thanks so much. I was able to get it installed using:

R CMD INSTALL --docs=normal removal_1.0.tar.gz

However, setting --docs=txt gave me this error:

ERROR: invalid --docs value `txt'

The --help says it needs to be a list, but no matter, --docs=normal
worked fine.



Quoting Prof Brian Ripley <ripley@stats.ox.ac.uk>:

> You can ignore the message about latex (and 2.5.1 RC does not give
> it).
>
> hhc is part of HTML Help Workshop: you either have not installed
> that or
> not put it in your path.
>
> The settings in MkRules affect the types of help for building R,
> not 'R
> CMD INSTALL'.  If you only want text help you need to run
>
> R CMD INSTALL --docs=txt removal_1.0.tar.gz
>
>
> On Mon, 25 Jun 2007, Richard Chandler wrote:
>
> > Hi,
> >
> > I am trying to build a package from source for the first time.
> I'm
> > using Windows XP. After R CMD INSTALL or R CMD check I get an
> error
> > message that I don't understand. I've tried to follow the
> instrucions
> > provided in the R Installation and Administration .pdf and the
> text
> > file that comes with Rtools, but most of this is new to me and
> clearly
> > I'm missing something. Here's what I've done:
> >
> > -Downloaded perl and Rtools and put them in my c directory
> > -Used package.skeleton() to set up the package structure and put
> the
> > package-to-be "removal" in C:\toBuild
> > -I edited my path to :
> > C:\Rtools\bin;C:\perl\bin;C:\Rtools\MinGW\bin;C:\R-2.5.0\bin;...
> > -I changed the following in the MkRules file:
> > 1)HEADER=C:/Rtools/MinGW/include
> > 2)HELPTYPES = -txt
> > 3)WINHELP = NO
> > 4)HEADER=C:/Rtools/MinGW/include
> > 5)R_EXE=C:/R-2.5.0/bin/R.exe
>
> The last two are for cross-building, not what you are doing.
>
> > -Next, I opened up a command prompt and went to c:/toBuild
> > -Then I ran: R CMD build removal. No problems.
> > -Then I ran: R CMD INSTALL removal_1.0.tar.gz
> > and got this:
> > ---------------------
> > installing to 'c:/R-2.5.0/library'
> >
> > latex: not found
> > latex: not found
> > latex: not found
> >
> > ---------- Making package removal ------------
> > latex: not found
> >  adding build stamp to DESCRIPTION
> > latex: not found
> > latex: not found
> > latex: not found
> >  installing R files
> > latex: not found
> >  installing data files
> > latex: not found
> >  installing man source files
> >  installing indices
> > latex: not found
> > latex: not found
> >  not zipping data
> >  installing help
> > >>> Building/Updating help pages for package 'removal'
> >     Formats: text chm
> >  RemProbs                          text
> chm
> >  add.error                         text
> chm
> >  error.plot                        text
> chm
> >  firstDetect                       text
> chm
> >  funs                              text
> chm
> >  path                              text
> chm
> >  pll2                              text
> chm
> >  remll2                            text
> chm
> >  removal-package                   text
> chm
> >  removal2                          text
> chm
> >  var.d                             text
> chm
> > hhc: not found
> > cp: cannot stat
> `C:/toBuild/R.INSTALL.3064/removal/chm/removal.chm':
> > No such fil
> > e or directory
> > make[1]: *** [chm-removal] Error 1
> > make: *** [pkg-removal] Error 2
> > *** Installation of removal failed ***
> >
> > Removing 'c:/R-2.5.0/library/removal'
> > ---------------
> >
> > I don't know what hhc is. I'm guessing its trying to build the
> > compiled help files even though I tried to ask for only text
> files. It
> > also seems to want latex even though I read that it isn't
> necessary to
> > build simple packages. Can someone please tell me what I'm doing
> > wrong? Thanks.
> >
> > Richard
> >
> >
> >
>
> --
> Brian D. Ripley,                  ripley@stats.ox.ac.uk
> Professor of Applied Statistics,
> http://www.stats.ox.ac.uk/~ripley/
> University of Oxford,             Tel:  +44 1865 272861 (self)
> 1 South Parks Road,                     +44 1865 272866 (PA)
> Oxford OX1 3TG, UK                Fax:  +44 1865 272595
>


-- 
Richard Chandler, PhD student
Department of Natural Resources Conservation
UMass Amherst
(413)545-1237

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

 �uhej t:ze53tL