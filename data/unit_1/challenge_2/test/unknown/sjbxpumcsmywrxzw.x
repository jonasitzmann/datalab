From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 09:20:56 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EDKtL9022062
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 09:20:55 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EDK7XI029758;
	Thu, 14 Jun 2007 15:20:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.182])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ECxcGa021977
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 14:59:39 +0200
Received: by py-out-1112.google.com with SMTP id f31so921936pyh
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 05:59:38 -0700 (PDT)
Received: by 10.114.73.1 with SMTP id v1mr1869172waa.1181825977094;
	Thu, 14 Jun 2007 05:59:37 -0700 (PDT)
Received: by 10.114.77.4 with HTTP; Thu, 14 Jun 2007 05:59:37 -0700 (PDT)
Message-ID: <efb536d50706140559w2a37e32t17ad7fb0f49c1c1c@mail.gmail.com>
Date: Thu, 14 Jun 2007 08:59:37 -0400
From: "Sarah Goslee" <sarah.goslee@gmail.com>
To: "michael watson (IAH-C)" <michael.watson@bbsrc.ac.uk>
In-Reply-To: <8975119BCD0AC5419D61A9CF1A923E9504F0D564@iahce2ksrv1.iah.bbsrc.ac.uk>
MIME-Version: 1.0
Content-Disposition: inline
References: <8975119BCD0AC5419D61A9CF1A923E9504F0D557@iahce2ksrv1.iah.bbsrc.ac.uk>
	<11118602.post@talk.nabble.com>
	<8975119BCD0AC5419D61A9CF1A923E9504F0D564@iahce2ksrv1.iah.bbsrc.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, Mark Difford <mark_difford@yahoo.co.uk>
Subject: Re: [R] Difference between prcomp and cmdscale
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

On 6/14/07, michael watson (IAH-C) <michael.watson@bbsrc.ac.uk> wrote:

> ... I failed to find articles that compare and contrast PCA
> and MDS.  If you know of any, of course I would be happy to read them.

There's an excellent non-R discussion of a wide range of ordination methods
at http://ordination.okstate.edu/ (Mike Palmer's work).

If you look under "distance-based ordination" (like MDS/PCO),
you find:
"Special case: for Euclidean distance, PCoA = PCA."

and much other useful information. He also gives an extensive list of
references from the literature, if you'd like something more rigorous.
For an overview text, I'm partial to _Numerical Ecology_ by Legendre
and Legendre (1998) because of its readability, but there are many
more good texts.

Sarah
-- 
Sarah Goslee
http://www.functionaldiversity.org

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

odcit 