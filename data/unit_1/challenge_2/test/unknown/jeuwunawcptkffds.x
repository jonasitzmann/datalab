From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 09:02:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PD2VL9028637
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 09:02:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5P8STnS011519;
	Mon, 25 Jun 2007 10:28:52 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=AWL, BAYES_00,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5P8SNvE011427
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 10:28:24 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5P8SHhv011799; 
	Mon, 25 Jun 2007 09:28:17 +0100 (BST)
Date: Mon, 25 Jun 2007 09:28:17 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Vivek Menon <vivek.menon79@gmail.com>
In-Reply-To: <bf6a5a630706242110j57f408f1i8ee10425e78af804@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.0706250920330.9061@gannet.stats.ox.ac.uk>
References: <bf6a5a630706242110j57f408f1i8ee10425e78af804@mail.gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] R-2.5.0 compilation problem on Linux powerpc
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

Is this ppc32 or ppc64?  (What does uname -a say?)

If the former, you might need to set CPICFLAGS and FPICFLAGS to -fPIC 
(rather than -fpic): please look these up in the R-admin.html file (which 
INSTALL points you to).

For ppc64 configure should have found -fPIC.

On Mon, 25 Jun 2007, Vivek Menon wrote:

> Hello everybody,I am having an error while compiling R-2.5.0 on Linux
> powerpc.
> This is what I see when I do a make:
>
>
> gcc -std=gnu99 -shared -L/usr/local/lib -o grDevices.so chull.o devNull.o
> devPicTeX.o devPS.o devQuartz.o init.o
> ../../../../library/grDevices/libs/grDevices.so is unchanged
> make[5]: Leaving directory
> `/home/vivekv/sw_alg/R-2.5.0/src/library/grDevices/src'
>
> make[4]: Leaving directory `/home/vivekv/sw_alg/R-2.5.0
> /src/library/grDevices/src'
> Warning: unable to load shared library '/home/vivekv/sw_alg/R-2.5.0
> /modules//lapack.so':
>  /home/vivekv/sw_alg/R- 2.5.0/modules//lapack.so: R_PPC_REL24 relocation at
> 0x0e65d7e4 for symbol `strlen' out of range
> Error in solve.default(rgb) : lapack routines cannot be loaded
> Error: unable to load R code in package 'grDevices'
> Execution halted
> make[3]: *** [all] Error 1
> make[3]: Leaving directory `/home/vivekv/sw_alg/R-2.5.0
> /src/library/grDevices'
> make[2]: *** [R] Error 1
> make[2]: Leaving directory `/home/vivekv/sw_alg/R- 2.5.0/src/library'
> make[1]: *** [R] Error 1
> make[1]: Leaving directory `/home/vivekv/sw_alg/R-2.5.0/src'
> make: *** [R] Error 1
>
> Please let me know what needs to be done for a successful installation.
> Thanks,
> Vivek
>
> 	[[alternative HTML version deleted]]
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

                  

f3gd�,DNAaecll