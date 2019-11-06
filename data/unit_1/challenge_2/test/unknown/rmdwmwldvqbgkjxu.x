From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 08:30:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DCU6L9007535
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 08:30:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DCT8A2025687;
	Wed, 13 Jun 2007 14:29:27 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, DKIM_SIGNED, DKIM_VERIFIED,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.179])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DCOTNQ023527
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 14:24:29 +0200
Received: by py-out-1112.google.com with SMTP id f31so289928pyh
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 05:24:28 -0700 (PDT)
Received: by 10.65.133.8 with SMTP id k8mr952868qbn.1181737468506;
	Wed, 13 Jun 2007 05:24:28 -0700 (PDT)
Received: by 10.65.51.12 with HTTP; Wed, 13 Jun 2007 05:24:28 -0700 (PDT)
Message-ID: <509e0620706130524qc064d57m40c1b736ce8a7986@mail.gmail.com>
Date: Wed, 13 Jun 2007 07:24:28 -0500
From: "Michael Lawrence" <lawremi@iastate.edu>
To: "marco.R.help marco.R.help" <marco.r.help@gmail.com>
In-Reply-To: <605b4120706130438v6dd912c6x93f9e9e554e0f4ac@mail.gmail.com>
MIME-Version: 1.0
References: <605b4120706130438v6dd912c6x93f9e9e554e0f4ac@mail.gmail.com>
X-Google-Sender-Auth: 92fd4acadc05e7d1
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] installing Rgraphviz under fedora 5
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

On 6/13/07, marco.R.help marco.R.help <marco.r.help@gmail.com> wrote:
>
> Dear list,
>
> I have a lot of troubles installing Rgraphviz.
> I installed graphviz 2.13 from  "graphviz-2.13.20061222.0540.tar"
> I installed the library Rgraphviz
>
> > getBioC("Rgraphviz")
> Running biocinstall version 2.0.8 with R version 2.5.0
> Your version of R requires version 2.0 of Bioconductor.
> trying URL '
>
> http://bioconductor.org/packages/2.0/bioc/src/contrib/Rgraphviz_1.14.0.tar.gz
> '
> Content type 'application/x-gzip' length 1522949 bytes
>
> etc etc....
>
> but when I do: library(Rgraphviz)
>
> > library(Rgraphviz)
> Error in dyn.load(x, as.logical(local), as.logical(now)) :
>         unable to load shared library '/home/jke/mazu/SOFTWARE_INST/R-
> 2.5.0
> /library/Rgraphviz/libs/Rgraphviz.so':
>   libgvc.so.3: cannot open shared object file: No such file or directory
> Error : .onLoad failed in 'loadNamespace' for 'Rgraphviz'
> Error: package/namespace load failed for 'Rgraphviz'
>
> The path to Rgraphviz.so is correct !


But it's libgvc.so.3 that's missing. Make sure your LD_LIBRARY_PATH
environment variable points to the directory containing it.

Can someone help with this?
>
> this is the session info ....
>
>
> regards
>
> Marco
>
>
> > sessioninfo()
> Error: could not find function "sessioninfo"
> > sessionInfo()
> R version 2.5.0 (2007-04-23)
> x86_64-unknown-linux-gnu
> locale:
>
> LC_CTYPE=en_US.UTF-8;LC_NUMERIC=C;LC_TIME=en_US.UTF-8;LC_COLLATE=en_US.UTF-8;LC_MONETARY=en_US.UTF-8;LC_MESSAGES=en_US.UTF-8;LC_PAPER=en_US.UTF-8;LC_NAME=C;LC_ADDRESS=C;LC_TELEPHONE=C;LC_MEASUREMENT=en_US.UTF-8;LC_IDENTIFICATION=C
>
> attached base packages:
> [1] "tools"     "stats"     "graphics"  "grDevices" "datasets"  "utils"
> [7] "methods"   "base"
>
> other attached packages:
> geneplotter     lattice    annotate     Biobase       graph
>    "1.14.0"    "0.15-4"    "1.14.1"    "1.14.0"    "1.14.2"
>
>         [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

0uea�r1hviE