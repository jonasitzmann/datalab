From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 01:35:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L5ZJL9020133
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 01:35:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L5YrFe018233;
	Thu, 21 Jun 2007 07:34:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.171])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L5XexF017716
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 07:33:40 +0200
Received: by ug-out-1314.google.com with SMTP id m3so469474uge
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 22:33:40 -0700 (PDT)
Received: by 10.82.170.2 with SMTP id s2mr3081348bue.1182404019542;
	Wed, 20 Jun 2007 22:33:39 -0700 (PDT)
Received: by 10.82.111.17 with HTTP; Wed, 20 Jun 2007 22:33:39 -0700 (PDT)
Message-ID: <dfed1c180706202233p3841276ajca84b6f14a332253@mail.gmail.com>
Date: Thu, 21 Jun 2007 13:33:39 +0800
From: "Ev Whin" <whinev@gmail.com>
To: r-help <r-help@stat.math.ethz.ch>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Question on package building
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

Hi dear R-Help members:

When I was building my R package, using
$R CMD build --binary pkg
it came out the following error:
........
** libs
Error: package 'methods' was built for x86_64-unknown-linux-gnu
Execution halted

The information about $R_HOME/library/methods/libs/methods.so is:
$file methods.so
methods.so: ELF 32-bit LSB shared object, Intel 80386, version 1 (SYSV), not
stripped

my machine is:
$uname -a
Linux whinev 2.4.21-37.EL #1 SMP Wed Sep 7 13:32:18 EDT 2005 x86_64 x86_64
x86_64 GNU/Linux

and I used the options below to build R src:
../configure --prefix=/home/whinev/R --enable-R-shlib CC="gcc -m32"
CXXFLAGS="-m32 -O2 -g" FFLAGS="-m32 -O2 -g" FCFLAGS="-m32 -O2 -g"
LDFLAGS="-L/usr/local/lib" LIBnn=lib --with-x=no

Would you please tell me what the matter is?
Thank you all!

Whinev

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

nz>mct 
8^a�