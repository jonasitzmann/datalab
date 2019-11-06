From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 10:42:54 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55EgqhB010117
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 10:42:52 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55EgCum008159;
	Tue, 5 Jun 2007 16:42:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55Edf0F006972
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 16:39:41 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l55EdJH9022506; 
	Tue, 5 Jun 2007 15:39:20 +0100 (BST)
Date: Tue, 5 Jun 2007 15:39:19 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Alberto Monteiro <albmont@centroin.com.br>
In-Reply-To: <20070605130556.M17907@centroin.com.br>
Message-ID: <Pine.LNX.4.64.0706051530050.17610@gannet.stats.ox.ac.uk>
References: <20070605130556.M17907@centroin.com.br>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Inverse of encodeString
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

On Tue, 5 Jun 2007, Alberto Monteiro wrote:

> What is the inverse of encodeString?
>
> For example, \u1 is some Unicode symbol. If I do
>
> s <- encodeString("\u1")
>
> then s will be the string "\001". But anything I do
> with s, will not return the Unicode that corresponds to \u1:
>
> cat(s, "\n") # prints \001
> cat("\u1", "\n")  # prints y with umlaut

Not on a properly operational UTF-8 system: your terminal has a problem.

The help says

      'encodeString' escapes the strings in a character vector in the
      same way 'print.default' does, and optionally fits the encoded
      strings within a field width.

The printed representation is not necessarily invertible, but scan() would 
be a good start:

> scan(con<-textConnection(s), "", allowEscapes=TRUE); close(con)
Read 1 item
[1] "\001"

as might parse(text=) be.

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

                

h 0eftr2n1hFC