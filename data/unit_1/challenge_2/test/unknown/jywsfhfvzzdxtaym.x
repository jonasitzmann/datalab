From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 11:20:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QFKNL9012597
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 11:20:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QFJX5L028295;
	Tue, 26 Jun 2007 17:19:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.229])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QFJMjd028231
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 17:19:23 +0200
Received: by nz-out-0506.google.com with SMTP id z31so99549nzd
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 08:19:22 -0700 (PDT)
Received: by 10.114.61.1 with SMTP id j1mr6492385waa.1182871161999;
	Tue, 26 Jun 2007 08:19:21 -0700 (PDT)
Received: by 10.115.58.9 with HTTP; Tue, 26 Jun 2007 08:19:21 -0700 (PDT)
Message-ID: <bf6a5a630706260819w3cb9df63y1cd3aeea26aa0004@mail.gmail.com>
Date: Tue, 26 Jun 2007 11:19:21 -0400
From: "Vivek Menon" <vivek.menon79@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] gcc and g++ errors while compiling R on Linux ppc64
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

I was going through the config.log after installing R successfully on a
Linux ppc64 machine. However, I could not install the MCMCpack and looked at
the config.log file for gcc and g++ errors.I found some of them and have
pasted them below. Please let me know if they can affect the installation of
other packages on R.
------------------
configure:7479: checking whether we are using the GNU Objective C compiler
configure:7508: gcc -c  -I/usr/local/include conftest.m >&5
gcc: error trying to exec 'cc1obj': execvp: No such file or directory
configure:7514: $? = 1
configure: failed program was:
| /* confdefs.h.  */
| #define PACKAGE_NAME "R"
| #define PACKAGE_TARNAME "R"
| #define PACKAGE_VERSION "2.5.0"
| #define PACKAGE_STRING "R 2.5.0"
| #define PACKAGE_BUGREPORT "r-bugs@R-project.org"
| #define PACKAGE "R"
| #define VERSION "2.5.0"
| #define R_PLATFORM "powerpc64-unknown-linux-gnu"
| #define R_CPU "powerpc64"
| #define R_VENDOR "unknown"
| #define R_OS "linux-gnu"
| #define Unix 1
| #define R_ARCH ""
| #define HAVE_VISIBILITY_ATTRIBUTE 1
| /* end confdefs.h.  */
|
| int
| int
| main ()
| {
| #ifndef __GNUC__
|        choke me
| #endif
|
|   ;
|   return 0;
| }
configure:7548: result: no
configure:7553: checking whether gcc accepts -g
configure:7583: gcc -c -g -I/usr/local/include conftest.m >&5
gcc: error trying to exec 'cc1obj': execvp: No such file or directory
configure:7589: $? = 1
configure: failed program was:
| /* confdefs.h.  */
.........................
configure:7638: gcc -c  -I/usr/local/include conftest.m >&5
gcc: error trying to exec 'cc1obj': execvp: No such file or directory
configure:7644: $? = 1
configure: failed program was:
| /* confdefs.h.  */
.......................
configure:7694: gcc -c -g -I/usr/local/include conftest.m >&5
gcc: error trying to exec 'cc1obj': execvp: No such file or directory
configure:7700: $? = 1
configure: failed program was:
| /* confdefs.h.  */
.......................
configure:7739: result: no
configure:7792: gcc -c  -I/usr/local/include conftest.m >&5
gcc: error trying to exec 'cc1obj': execvp: No such file or directory
configure:7798: $? = 1
configure: failed program was:
| /* confdefs.h.  */
......................
configure:41100: gcc -m64 -std=gnu99 -o conftest -mminimal-toc
-fno-optimize-sibling-calls -g -O2  -I/usr/local/include  -L/usr/local/lib
conftest.c -framework vecLib  -ldl -lm  >&5
gcc: vecLib: No such file or directory
cc1: error: unrecognized command line option "-framework"
configure:41106: $? = 1
configure: failed program was:
| /* confdefs.h.  */
........................
configure:46650: gcc -m64 -std=gnu99 -o conftest -mminimal-toc
-fno-optimize-sibling-calls -g -O2  -I/usr/local/include  -L/usr/local/lib
conftest.c -framework CoreFoundation  -ldl -lm  >&5
gcc: CoreFoundation: No such file or directory
cc1: error: unrecognized command line option "-framework"
configure:46656: $? = 1
configure: failed program was:
| /* confdefs.h.  */
........................
configure:56212: gcc -m64 -std=gnu99 -o conftest -mminimal-toc
-fno-optimize-sibling-calls -g -O2  -I/usr/local/include
 -I/System/Library/Frameworks/CoreFoundation.framework/Headers
-L/usr/local/lib conftest.c  -ldl -lm -framework CoreFoundation >&5
gcc: CoreFoundation: No such file or directory
cc1: error: unrecognized command line option "-framework"
configure:56218: $? = 1
configure: failed program was:
| /* confdefs.h.  */
.......................
configure:56300: gcc -m64 -std=gnu99 -o conftest -mminimal-toc
-fno-optimize-sibling-calls -g -O2  -I/usr/local/include
 -I/System/Library/Frameworks/CoreFoundation.framework/Headers
-L/usr/local/lib conftest.c  -ldl -lm -framework CoreFoundation >&5
gcc: CoreFoundation: No such file or directory
cc1: error: unrecognized command line option "-framework"
configure:56306: $? = 1
configure: failed program was:
| /* confdefs.h.  */
......................
R is now configured for powerpc64-unknown-linux-gnu

  Source directory:          .
  Installation directory:    /usr/local

  C compiler:                gcc -m64 -std=gnu99  -mminimal-toc
-fno-optimize-sibling-calls -g -O2
  Fortran 77 compiler:       gfortran -m64  -mminimal-toc
-fno-optimize-sibling-calls -g -O2

  C++ compiler:              gxx -m64
  Fortran 90/95 compiler:    gfortran -m64 -g -O2
  Obj-C compiler:

  Interfaces supported:
  External libraries:        readline
  Additional capabilities:   iconv, MBCS, NLS
  Options enabled:           shared BLAS, R profiling, Java

  Recommended packages:      yes



--------------------------------

I am assuming that the C++ compiler should have been g++. must have been a
typo while configuring. Should anything be done with respect to the other
gcc errors??
Thanks,
Vivek

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

ov3- um2.Tp&Tk9O