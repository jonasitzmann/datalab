From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 12:06:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62G69L9015790
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 12:06:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62G5I1X011798;
	Mon, 2 Jul 2007 18:05:33 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62G55kq011695
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 18:05:06 +0200
Received: from root by ciao.gmane.org with local (Exim 4.43)
	id 1I5OOc-0007c8-6Y
	for r-help@stat.math.ethz.ch; Mon, 02 Jul 2007 18:05:03 +0200
Received: from unreg-65.trdlnk.com ([192.160.124.65])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Mon, 02 Jul 2007 18:05:02 +0200
Received: from skip by unreg-65.trdlnk.com with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Mon, 02 Jul 2007 18:05:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Skip Montanaro <skip@pobox.com>
Date: Mon, 2 Jul 2007 16:00:00 +0000 (UTC)
Lines: 83
Message-ID: <loom.20070702T154902-879@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 192.160.124.65 (Mozilla/5.0 (X11; U; SunOS i86pc; en-US;
	rv:1.8.1) Gecko/20061024 Firefox/2.0)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] relocation error in grDevices.so
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

(Warning: I'm not an R guy.  I'm a Python guy trying to get the
R-Python interface working again after some upgrades.)

I'm trying to upgrade our numpy/rpy/matplotlib environment (Solaris
10/Intel, Python 2.4).  In the process I found I needed to rebuild R
(2.1.1) because it was compiled with gcc 3.3.2 and we have since
migrated to gcc 3.4.1.  I'm using this configure setup:

    export CPPFLAGS=-I/opt/app/include
    export LDFLAGS='-L/opt/app/lib -R/opt/app/lib'
    ./configure --prefix=/opt/app/R-2.1.1-gcc-3.4.1

After building and installing R I downloaded and installed the
contributed quadprog library.  I ran this simple solver example using
Python+rpy which works (well, except for some R error I haven't
figured out yet) in the old installation:

    import numpy
    import rpy
    rpy.r("library(quadprog)")

    Dmat = numpy.identity(3, numpy.float_)
    print Dmat
    rpy.r.assign("Dmat", Dmat)

    dvec = numpy.array([0,5,0], numpy.float_)
    print dvec
    rpy.r.assign("dvec", dvec)

    Amat = numpy.array([[-4,-3,0], [2,1,0], [0,-2,1]], numpy.float_)
    print Amat
    rpy.r.assign("Amat", Amat.transpose())

    bvec = numpy.array([-8,2,0], numpy.float_)
    print bvec
    rpy.r.assign("bvec", bvec)

    result = rpy.r("solve.QP(Dmat, dvec, Amat, bvec=bvec)")
    print result['solution']

and get this error:

    Error in dyn.load(x, as.logical(local), as.logical(now)) :
	    unable to load shared library
'/opt/app/R-2.1.1-gcc-3.4.1/lib/R/library/grDevices/libs/grDevices.so':
      ld.so.1: python: fatal: relocation error: file
/opt/app/R-2.1.1-gcc-3.4.1/lib/R/library/grDevices/libs/grDevices.so: symbol
R_NilValue: referenced symbol not found
    Loading required package: grDevices
    Error in dyn.load(x, as.logical(local), as.logical(now)) :
	    unable to load shared library
'/opt/app/R-2.1.1-gcc-3.4.1/lib/R/library/grDevices/libs/grDevices.so':
      ld.so.1: python: fatal: relocation error: file
/opt/app/R-2.1.1-gcc-3.4.1/lib/R/library/grDevices/libs/grDevices.so: symbol
R_NilValue: referenced symbol not found
    In addition: Warning message:
    package grDevices in options("defaultPackages") was not found
    Error: package 'grDevices' could not be loaded
    Traceback (most recent call last):
      File "rpytest.py", line 3, in ?
	rpy.r("library(quadprog)")
      File
"/opt/app/g++lib6/python-2.4-pre-release/lib/python2.4/site-packages/rpy.py",
line 299, in __call__
	return self.eval(self.parse(text=s))
    rpy.RException: Error: package/namespace load failed for 'quadprog'

Looking at grDevices.so I see that it wasn't even linked against the R
library:

    % ldd /opt/app/R-2.1.1-gcc-3.4.1/lib/R/library/grDevices/libs/grDevices.so
	    libc.so.1 =>     /lib/libc.so.1
	    libm.so.2 =>     /lib/libm.so.2

so I can't see how it could possibly resolve the R_NilValue symbol.

Can someone tell me where I've gone awry?

Thanks,

Skip Montanaro
skip@pobox.com

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

dMoE