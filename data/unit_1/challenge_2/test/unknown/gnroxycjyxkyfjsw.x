From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 11:13:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LFDYL9025665
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 11:13:34 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LFCWf7031768;
	Thu, 21 Jun 2007 17:13:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LEpgLC022300
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 16:51:43 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5LEpYFs011232; 
	Thu, 21 Jun 2007 15:51:35 +0100 (BST)
Date: Thu, 21 Jun 2007 15:51:34 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Steve Antos <steve.antos@gmail.com>
In-Reply-To: <d78532210706210644y8ae9b6dg5dc05a0d9566a74c@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.0706211530480.14246@gannet.stats.ox.ac.uk>
References: <d78532210706210644y8ae9b6dg5dc05a0d9566a74c@mail.gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] MDS size limitations
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

On Thu, 21 Jun 2007, Steve Antos wrote:

> What are the limitations on size of matrix for MDS functions?

MDS works with a dissimilarity, not a matrix (neither conceptually nor in 
most R implementations, which typically use an object of class "dist").
It is better to think in terms of the number of objects 'n' and the number 
of dimensions of the representation (which I guess you mean as 2).

There are O(n^2) dissimilarities to be considered, and most of the 
algorithms appear to be slightly superlinear in that number. n=1000 runs 
in isoMDS in about a minute on my laptop, using about 75Mb of memory, and 
about 10 secs in sammon or cmdscale.  (Highly non-Euclidean 
dissimilarities are likely to be slower.)

Even 1000 objects is a lot to be considering for what is primarily a 
visualization technique.

Cruder forms of MDS such as Kohonen mapping are able to handle much larger 
datasets (but reveal less about them).

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

                  

aVrknpJr