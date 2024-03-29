From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 03:02:50 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L72nL9020779
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 03:02:50 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L72DJE012768;
	Thu, 21 Jun 2007 09:02:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L726nq012733
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 09:02:07 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I1GdM-0006ZB-Pq
	for r-help@stat.math.ethz.ch; Thu, 21 Jun 2007 08:59:13 +0200
Received: from p54A08C6E.dip0.t-ipconnect.de ([84.160.140.110])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 08:59:12 +0200
Received: from dieter.menne by p54A08C6E.dip0.t-ipconnect.de with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 08:59:12 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Dieter Menne <dieter.menne@menne-biomed.de>
Date: Thu, 21 Jun 2007 06:57:22 +0000 (UTC)
Lines: 69
Message-ID: <loom.20070621T082438-963@post.gmane.org>
References: <500c63990706202050p7546ffc9ua191df3eb0f99098@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 84.160.140.110 (Mozilla/5.0 (Windows; U; Windows NT 5.0; de;
	rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] User Defined R Functions in Sweave/Latex
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

M. Jankowski <mjankowski <at> gmail.com> writes:

> My Sweave code is intended to make lots of plots and create a *.pdf
> document. Sweave is perfect for this. The only problem is that  I find
> myself using the same R code, within my Sweave input file over an
> over. 
....
 
> This is the R function:
> basicplot <- function(x, nplots, sectionname){
> # Begin to make figure here
> file = paste("scatter",nplots, ".pdf", sep="")
> pdf(file = file,paper="special", width=6, height = 6)
> plot(x)
> dev.off()
> cat("\\begin{figure}\n")
> cat("\\includegraphics{",file,"}\n", sep="")
> cat("\\caption{", sectionname,"}\n", sep = "")
> cat("\\end{figure}\n")
> #End figure making
> }
> 
I don't know if this is exactly what you want, but below an example of using
includegraphics in a latex macro. For a real application, I recommend
\FloatBarrier instead of \clearpage when you have lots of figures/tables and
little text, as it's common in technical stuff.

Dieter

% -- Begin Sweave example
\documentclass[a4paper]{article}
\usepackage{Sweave}
\SweaveOpts{engine=R,eval=TRUE,eps=FALSE,pdf=TRUE, strip.white=TRUE}
\SweaveOpts{echo=FALSE,results=hide,width=6,height=4}

\bibliography{menne}
\begin{document}
\section{Hello}

\newcommand\doaplot[3]{

\begin{figure}
  \centering
\subsection{ #1}
\includegraphics{#2}
  \caption{3}
  \label{fig:#2}
\end{figure}
The meaning of life is The meaning of life is
The meaning of life is
The meaning of life is
The meaning of life is
\clearpage

}

<<dotheplots, results=tex>>=
 for (nplots in 1:3) {
   file = paste("scatter",nplots, ".pdf", sep="")
   pdf(file = file,paper="special", width=6, height = 6)
   plot(rnorm(100),rnorm(100),main=paste("Plot",nplots))
   dev.off()
   cat("\\doaplot{Section",nplots,"}{scatter",nplots,"}{My caption for ",
     nplots,"}\n",sep="")
 }
@

\end{document}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

Y)v
;w3pQ