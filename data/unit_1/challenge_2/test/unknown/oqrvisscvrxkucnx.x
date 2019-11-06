From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 22:25:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5K2POL9004758
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 22:25:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5K2NhiJ011973;
	Wed, 20 Jun 2007 04:24:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.241])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5K2NXKd011572
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 04:23:34 +0200
Received: by an-out-0708.google.com with SMTP id b2so2552ana
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 19:23:32 -0700 (PDT)
Received: by 10.100.95.19 with SMTP id s19mr97729anb.1182306212592;
	Tue, 19 Jun 2007 19:23:32 -0700 (PDT)
Received: by 10.100.5.9 with HTTP; Tue, 19 Jun 2007 19:23:32 -0700 (PDT)
Message-ID: <500c63990706191923p261f2ed4nde48eb130cebe15@mail.gmail.com>
Date: Tue, 19 Jun 2007 21:23:32 -0500
From: "M. Jankowski" <mjankowski@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Help With Sweave:
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

Hi All,

I am running Ubuntu Feisty (7.04) on a Thinkpad T41. I've installed
the nowebm package for Ubuntu. Working from this HowTo:
http://www.ci.tuwien.ac.at/~leisch/Sweave/example-1.Snw
I try to compile the example *.Snw as in the Sweave manual:

mdj@lapmdj:~/Desktop/Sweave/example1$ noweb example-1.Snw
Can't open output file

Despite the error, a *.tex file is produced. Now I am stuck because I
cannot seem to get the CTAN noweb package correctly installed  for my
Latex installation. I guess I am somewhat spoiled by the Synaptic
package manager. Here is the result of my best attempt to get the
noweb package installed:

Following the guidelines for installing packages found here:

http://www.ctan.org/tex-archive/info/beginlatex/html/chapter5.html#pk...

I try to install this package:

http://tug.ctan.org/cgi-bin/ctanPackageInformation.py?id=noweb

But there are no *.ins or *.dtx files. There is a *.sty though...

I follow the instructions in the readme and this is the result (Here
are a few of the errors, the complete output is below):
make: [install-shell] Error 1 (ignored)
make: [install-tex] Error 1 (ignored)
make: [install-code] Error 1 (ignored)

A bunch of errors. What am I doing wrong? Any help is much
appreciated!

Of course, if there is a better place for me to ask this question
please let me know where! Thanks!

Matt

mdj@lapmdj:~/downloads/noweb-2.11b/src$ sudo make all install
cd c; make "CC=gcc -ansi -pedantic" "CFLAGS=" all
make[1]: Entering directory `/home/mdj/downloads/noweb-2.11b/src/c'
make[1]: Nothing to be done for `all'.
make[1]: Leaving directory `/home/mdj/downloads/noweb-2.11b/src/c'
for i in shell lib xdoc tex; do (cd $i; make all); done
make[1]: Entering directory `/home/mdj/downloads/noweb-2.11b/src/
shell'
make[1]: Nothing to be done for `all'.
make[1]: Leaving directory `/home/mdj/downloads/noweb-2.11b/src/shell'
make[1]: Entering directory `/home/mdj/downloads/noweb-2.11b/src/lib'
chmod +x unmarkup emptydefn toascii nwmtime pipedocs h2a btdefn
make[1]: Leaving directory `/home/mdj/downloads/noweb-2.11b/src/lib'
make[1]: Entering directory `/home/mdj/downloads/noweb-2.11b/src/xdoc'
make[1]: Nothing to be done for `all'.
make[1]: Leaving directory `/home/mdj/downloads/noweb-2.11b/src/xdoc'
make[1]: Entering directory `/home/mdj/downloads/noweb-2.11b/src/tex'
make[1]: Nothing to be done for `all'.
make[1]: Leaving directory `/home/mdj/downloads/noweb-2.11b/src/tex'
cd awk; make "ICONT=icont" "ICONC=iconc" all
make[1]: Entering directory `/home/mdj/downloads/noweb-2.11b/src/awk'
chmod +x noindex  totex noidx tohtml
make[1]: Leaving directory `/home/mdj/downloads/noweb-2.11b/src/awk'
mkdir /usr/local/noweb /usr/local/noweb/lib 2>/dev/null
make: [install-shell] Error 1 (ignored)
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/noweb > /usr/local/noweb/
noweb
chmod +x /usr/local/noweb/noweb
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/notangle > /usr/local/
noweb/notangle
chmod +x /usr/local/noweb/notangle
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/noweave             > /
usr/local/noweb/noweave
chmod +x /usr/local/noweb/noweave
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/nountangle > /usr/local/
noweb/nountangle
chmod +x /usr/local/noweb/nountangle
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/nodefs > /usr/local/noweb/
nodefs
chmod +x /usr/local/noweb/nodefs
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/noroots > /usr/local/
noweb/noroots
chmod +x /usr/local/noweb/noroots
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/nuweb2noweb > /usr/local/
noweb/nuweb2noweb
chmod +x /usr/local/noweb/nuweb2noweb
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/cpif > /usr/local/noweb/
cpif
chmod +x /usr/local/noweb/cpif
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/htmltoc > /usr/local/
noweb/htmltoc
chmod +x /usr/local/noweb/htmltoc
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/noroff > /usr/local/noweb/
noroff
chmod +x /usr/local/noweb/noroff
sed "s@|LIBDIR|@/usr/local/noweb/lib@" shell/toroff > /usr/local/noweb/
lib/toroff
chmod +x /usr/local/noweb/lib/toroff
cp shell/tmac.w /usr/local/noweb/lib
mkdir /usr/local/noweb /usr/local/noweb/lib 2>/dev/null
make: [install-code] Error 1 (ignored)
strip c/nt c/markup c/mnt c/finduses
cp c/nt c/markup c/mnt c/finduses /usr/local/noweb/lib
cd awk; make ICONT=icont ICONC=iconc LIB=/usr/local/noweb/lib BIN=/usr/
local/noweb install
make[1]: Entering directory `/home/mdj/downloads/noweb-2.11b/src/awk'
chmod +x noindex  totex noidx tohtml
cp totex noidx tohtml /usr/local/noweb/lib
cp noindex  /usr/local/noweb
make[1]: Leaving directory `/home/mdj/downloads/noweb-2.11b/src/awk'
cd lib; make LIB=/usr/local/noweb/lib install
make[1]: Entering directory `/home/mdj/downloads/noweb-2.11b/src/lib'
chmod +x unmarkup emptydefn toascii nwmtime pipedocs h2a btdefn
cp unmarkup emptydefn toascii nwmtime h2a btdefn /usr/local/noweb/lib
sed 's@|LIBDIR|@/usr/local/noweb/lib@g' pipedocs > /usr/local/noweb/
lib/pipedocs
chmod +x /usr/local/noweb/lib/pipedocs
make[1]: Leaving directory `/home/mdj/downloads/noweb-2.11b/src/lib'
mkdir /usr/local/noweb/man /usr/local/noweb/man/man1 /usr/local/noweb/
man/man7 2>/dev/null
make: [install-man] Error 1 (ignored)
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/cpif.1 > /usr/local/noweb/man/man1/cpif.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/nodefs.1 > /usr/local/noweb/man/man1/nodefs.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/noroots.1 > /usr/local/noweb/man/man1/noroots.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/noweb.1 > /usr/local/noweb/man/man1/noweb.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/noindex.1 > /usr/local/noweb/man/man1/noindex.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/nuweb2noweb.1 > /usr/local/noweb/man/man1/
nuweb2noweb.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/notangle.1 > /usr/local/noweb/man/man1/notangle.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/noroff.1 > /usr/local/noweb/man/man1/noroff.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/sl2h.1 > /usr/local/noweb/man/man1/sl2h.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/htmltoc.1 > /usr/local/noweb/man/man1/htmltoc.1
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/nowebstyle.7 > /usr/local/noweb/man/man7/nowebstyle.
7
sed -e "s@|LIBDIR|@/usr/local/noweb/lib@" -e "s@|TEXINPUTS|@/usr/local/
tex/inputs@" xdoc/nowebfilters.7 > /usr/local/noweb/man/man7/
nowebfilters.7
rm -f /usr/local/noweb/man/man1/noweave.1
(cd /usr/local/noweb/man/man1; ln notangle.1 noweave.1)
rm -f /usr/local/noweb/man/man1/nountangle.1
(cd /usr/local/noweb/man/man1; ln notangle.1 nountangle.1)
mkdir /usr/local/tex/inputs 2>/dev/null
make: [install-tex] Error 1 (ignored)
cp tex/nwmac.tex tex/noweb.sty /usr/local/tex/inputs
texhash || echo "Program texhash not found or failed"
no
texhash: Updating /var/lib/texmf/ls-R-TEXMFMAIN...
texhash: Updating /var/lib/texmf/ls-R-TEXMFDIST-TETEX...
texhash: Updating /var/lib/texmf/ls-R...
texhash: Done.
mkdir /dev/null 2>/dev/null
make: [install-elisp] Error 1 (ignored)
cp elisp/noweb-mode.el /dev/null
mdj@lapmdj:~/downloads/noweb-2.11b/src$ texhash
texhash: /var/lib/texmf/ls-R-TEXMFMAIN: no write permission.
Skipping...
texhash: /var/lib/texmf/ls-R-TEXMFDIST-TETEX: no write permission.
Skipping...
texhash: /var/lib/texmf/ls-R: no write permission. Skipping...
texhash: Done.
mdj@lapmdj:~/downloads/noweb-2.11b/src$ sudo texhash
no
texhash: Updating /var/lib/texmf/ls-R-TEXMFMAIN...
texhash: Updating /var/lib/texmf/ls-R-TEXMFDIST-TETEX...
texhash: Updating /var/lib/texmf/ls-R...
texhash: Done.
mdj@lapmdj:~/downloads/noweb-2.11b/src$ cd /var/lib/texmf/
mdj@lapmdj:/var/lib/texmf$ ls
fonts  ls-R  ls-R-TEXMFDIST-TETEX  ls-R-TEXMFMAIN  tex  web2c
mdj@lapmdj:/var/lib/texmf$ texhash
texhash: /var/lib/texmf/ls-R-TEXMFMAIN: no write permission.
Skipping...
texhash: /var/lib/texmf/ls-R-TEXMFDIST-TETEX: no write permission.
Skipping...
texhash: /var/lib/texmf/ls-R: no write permission. Skipping...
texhash: Done.
mdj@lapmdj:/var/lib/texmf$ sudo texhash
no
texhash: Updating /var/lib/texmf/ls-R-TEXMFMAIN...
texhash: Updating /var/lib/texmf/ls-R-TEXMFDIST-TETEX...
texhash: Updating /var/lib/texmf/ls-R...
texhash: Done.
mdj@lapmdj:/var/lib/texmf$

I thought that 'sudo texhash' would fix the installation error...but
apparently it did not because:

mdj@lapmdj:~/Desktop/Sweave/example1$ pdflatex example-1.tex
This is pdfeTeX, Version 3.141592-1.30.5-2.2 (Web2C 7.5.5)
entering extended mode
(./example-1.tex
LaTeX2e <2003/12/01>
Babel <v3.8g> and hyphenation patterns for english, usenglishmax,
dumylang, noh
yphenation, loaded.
(/usr/share/texmf-texlive/tex/latex/base/article.cls
Document Class: article 2004/02/16 v1.4f Standard LaTeX document class
(/usr/share/texmf-texlive/tex/latex/base/size10.clo)) (./
example-1.aux)
! Undefined control sequence.
l.13 \nwfilename
                {example-1.Snw}
\nwbegincode{1}\sublabel{NW3jPyRy-0-1}\nwmarg...

?
#Which apparently means that the noweb package has not yet been
installed correctly. What is going wrong?

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

 iSras