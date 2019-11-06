From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 22:45:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5K2jfL9004883
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 22:45:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5K2iKC8017612;
	Wed, 20 Jun 2007 04:44:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from sccrmhc13.comcast.net (sccrmhc13.comcast.net [204.127.200.83])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5K2iDh2017569
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 04:44:14 +0200
Received: from basebud.nulle.part
	(c-67-174-13-164.hsd1.il.comcast.net[67.174.13.164])
	by comcast.net (sccrmhc13) with ESMTP
	id <2007062002441201300sn6eme>; Wed, 20 Jun 2007 02:44:12 +0000
Received: from edd by basebud.nulle.part with local (Exim 4.67)
	(envelope-from <edd@debian.org>)
	id 1I0qAw-0007nL-JF; Tue, 19 Jun 2007 21:44:06 -0500
MIME-Version: 1.0
Message-ID: <18040.38006.565172.64274@basebud.nulle.part>
Date: Tue, 19 Jun 2007 21:44:06 -0500
To: "M. Jankowski" <mjankowski@gmail.com>
In-Reply-To: <500c63990706191923p261f2ed4nde48eb130cebe15@mail.gmail.com>
References: <500c63990706191923p261f2ed4nde48eb130cebe15@mail.gmail.com>
X-Mailer: VM 7.19 under Emacs 21.4.1
From: Dirk Eddelbuettel <edd@debian.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Help With Sweave:
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


Matt,

On 19 June 2007 at 21:23, M. Jankowski wrote:
| Hi All,
| 
| I am running Ubuntu Feisty (7.04) on a Thinkpad T41. I've installed
| the nowebm package for Ubuntu. Working from this HowTo:
| http://www.ci.tuwien.ac.at/~leisch/Sweave/example-1.Snw
| I try to compile the example *.Snw as in the Sweave manual:
| 
| mdj@lapmdj:~/Desktop/Sweave/example1$ noweb example-1.Snw
| Can't open output file
| 
| Despite the error, a *.tex file is produced. Now I am stuck because I
| cannot seem to get the CTAN noweb package correctly installed  for my
| Latex installation. I guess I am somewhat spoiled by the Synaptic
| package manager. Here is the result of my best attempt to get the
| noweb package installed:

i)   No external noweb package is needed
ii)  Synaptic is not used to install CRAN / CTAN packages
iii) Everything should be provided by r-base-core and tetex-extra.

Since relatively recently, a 'Sweave' command has been added.  So simply do

	$ R CMD Sweave example-1.Snw 
	$ pdflatex example-1.tex
	$ kpdf example-1.pdf		# or xpdf, or gv, or ...

| A bunch of errors. What am I doing wrong? Any help is much
| appreciated!

You simply make your life too complicated when Debian and Ubuntu make it
easier for you :)

| Of course, if there is a better place for me to ask this question
| please let me know where! Thanks!

The r-sig-debian list is appropriate for problems with Debian / Ubuntu.

Dirk

PS  I usually use simple shell wrappers like this one. Others prefer
Makefile. 


edd@basebud:~> cat /home/edd/bin/sweave
#!/bin/bash -e

function errorexit () {
    echo "Error: $1"
    exit 1
}

function filetest () {
    if [ ! -f $1 ]; then
       errorexit "File $1 not found"
    fi
    return 0
}


if [ "$#" -lt 1 ]; then
    errorexit "Need to specify argument file"
fi


BASENAME=$(basename $1 .Rnw)

RNWFILE=$BASENAME.Rnw
filetest $RNWFILE
echo "library(tools); Sweave(\"$RNWFILE\")" \
      | R --no-save --no-restore --slave

LATEXFILE=$BASENAME.tex
filetest $LATEXFILE && pdflatex $LATEXFILE

PDFFILE=$BASENAME.pdf
#filetest $PDFFILE && acroread $PDFFILE &
#filetest $PDFFILE && xpdf $PDFFILE &
filetest $PDFFILE && kpdf $PDFFILE &


-- 
Hell, there are no rules here - we're trying to accomplish something. 
                                                  -- Thomas A. Edison

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

aa3/