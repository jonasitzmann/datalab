From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 13:07:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TH74L9028459
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 13:07:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TH61Eh007155;
	Fri, 29 Jun 2007 19:06:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.176])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TH2nPT005545
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 19:02:50 +0200
Received: by wa-out-1112.google.com with SMTP id j37so1263453waf
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 10:02:49 -0700 (PDT)
Received: by 10.114.78.1 with SMTP id a1mr2753913wab.1183136569041;
	Fri, 29 Jun 2007 10:02:49 -0700 (PDT)
Received: by 10.114.240.17 with HTTP; Fri, 29 Jun 2007 10:02:49 -0700 (PDT)
Message-ID: <b59a37130706291002v2efd28enfa1e3a22a5ac5dc7@mail.gmail.com>
Date: Fri, 29 Jun 2007 18:02:49 +0100
From: "Mark Wardle" <mark@wardle.org>
To: "Dietrich Trenkler" <Dietrich.Trenkler@uni-osnabrueck.de>
In-Reply-To: <4684D039.2010302@uni-osnabrueck.de>
MIME-Version: 1.0
Content-Disposition: inline
References: <4684D039.2010302@uni-osnabrueck.de>
X-Google-Sender-Auth: b80098855c748c35
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] \include-mechanism in Sweave?
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

Hi Dietrich,

I am writing my thesis, made up of several papers that have been
expanded into chapters. Each "chapter" was a .tex file until I started
using Sweave.

Now each chapter is an .Rnw file. My master LaTeX document has this:

\include{introduction}
\include{epidemiology}
\include{report}

Latex will look for introduction.tex, epidemiology.tex and report.tex.
I can get LaTeX to only process the introduction by using \includeonly

Of course, the .tex files are generated from Rnw files via a Makefile.
This makefile will only re-generate tex files from Rnw files if the
Rnw file is updated (unless you  give it different rules).

See post: http://tolstoy.newcastle.edu.au/R/e2/help/06/11/4891.html

Hope this helps,

Mark

On 29/06/07, Dietrich Trenkler <Dietrich.Trenkler@uni-osnabrueck.de> wrote:
> Dear HelpeRs,
>
> I'm very fond of Sweave and I use it as often as possible.  It'a a pity
> I can't use it for larger projects or can I?
>
> For instance suppose I have three files file1.rnw, file2.rnw and
> file3.rnw with Sweave code.  Working on file2.rnw I whould like to
> exclude file1.rnw and file3.rnw temporarily and joining all of them
> later.  This amounts to a mechanism similar to using LaTeX's \include
> command.  *Is* there a way to achieve that?
>
> Thank you in advance.
>
> D. Trenkler
>
> --
> Dietrich Trenkler c/o Universitaet Osnabrueck
> Rolandstr. 8; D-49069 Osnabrueck, Germany
> email: Dietrich.Trenkler@Uni-Osnabrueck.de
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>
> ______________________________________________________________________
> This email has been scanned by the MessageLabs Email Security System.
> For more information please visit http://www.messagelabs.com/email
> ______________________________________________________________________
>


-- 
Dr. Mark Wardle
Clinical research fellow and specialist registrar, Neurology
Cardiff, UK

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



 r"S0wn.a