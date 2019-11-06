From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 12:35:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PGZNL9031192
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 12:35:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PGYmsQ023807;
	Mon, 25 Jun 2007 18:34:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.175])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PGOMhx019937
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 18:24:22 +0200
Received: by ug-out-1314.google.com with SMTP id m3so1223733uge
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 09:24:22 -0700 (PDT)
Received: by 10.78.140.16 with SMTP id n16mr2663655hud.1182788662576;
	Mon, 25 Jun 2007 09:24:22 -0700 (PDT)
Received: by 10.78.183.10 with HTTP; Mon, 25 Jun 2007 09:24:22 -0700 (PDT)
Message-ID: <551186a70706250924l39395d1ld684588278639ff7@mail.gmail.com>
Date: Mon, 25 Jun 2007 17:24:22 +0100
From: "Gavin Kelly" <gavinpaulkelly@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Re : Half of a heatmap
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: gavin.kelly@cancer.org.uk
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

 > I am trying to produce a heatmap of pairwise correlations, but
since the matrix is
> symmetric, I only need either the upper or the lower triangle.  I have scoured the
> web and R documentation, but I have not been able to find a way to produce such a
> figure.  Is there a simple way to produce a heat map with only the part above or
> below the diagonal?

Can you not just set the lower or upper triangle to NAs, and pass this
on to heatmap - or am I misunderstanding you?

tmp <- matrix(rnorm(100),10,10)
tmp[lower.tri(tmp)] <- NA
heatmap(tmp, Rowv=NA, Colv=NA)

Regards - Gavin
--
Gavin Kelly
Senior Statistician, Bioinformatics & Biostatistics Group
Cancer Research UK

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

 e[
u>