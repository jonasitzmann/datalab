From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 03:52:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5B7qUL9011234
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 03:52:30 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5B7ph0E018754;
	Mon, 11 Jun 2007 09:51:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5B7pXFG018585
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 09:51:34 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HxegN-0005bc-0z
	for r-help@stat.math.ethz.ch; Mon, 11 Jun 2007 09:51:25 +0200
Received: from mail.bfro.uni-lj.si ([193.2.110.131])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 09:51:23 +0200
Received: from gregor.gorjanc by mail.bfro.uni-lj.si with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 09:51:23 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Gregor Gorjanc <gregor.gorjanc@bfro.uni-lj.si>
Date: Mon, 11 Jun 2007 07:51:14 +0000 (UTC)
Lines: 49
Message-ID: <loom.20070611T094218-204@post.gmane.org>
References: <1181295518.4669239ed658f@webmail.shef.ac.uk>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 193.2.110.131 (Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty))
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] icc from GLMM?
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

Shinichi Nakagawa <S.Nakagawa <at> sheffield.ac.uk> writes:
... 
> I am a little confused which one to trust and use. Or there are no easy form
> to do this? I am guessing formula would change depending on what distribution
> you use and what link function as well? I want to calculate icc from GLMM with
> Poisson with log link function and also binomial with logit function. Could
> anybody help me please?

Yes, you are right that ICC depends on assumed data distribution. While ICC is
very handy in linear models it is not the case in GLMM. I suggest you take a
look at the references bellow. There is also some online material by the same
authors. Additionally, I remember that there were lively discussions about ICC
on "multilevel" list at

http://www.jiscmail.ac.uk/lists/multilevel.html

Best wishes, Gregor

@Article{Goldstein:2002,
  author =       {Goldstein, H. and Browne, W. and Rabash, J.},
  title =        {Partitioning variation in multilevel models},
  journal =      {Understanding Statistics},
  year =         {2002},
  volume =       {1},
  number =       {4},
  pages =        {223--231},
  keywords =     {variance ratio, variance partition coefficient,
                  intra-unit correlation, intra-class correlation, normal
                  models, discrete models, random coefficient models}
}

@Article{Browne:2005,
  author =       {Browne, W. J. and Subramanian, S. V. and Jones, K. and
                  Goldstein, H.},
  title =        {Variance partitioning in multilevel logistic models that
                  exhibit overdispersion},
  journal =      {J. R. Stat. Soc. A Stat. Soc.},
  year =         {2005},
  volume =       {168},
  number =       {3},
  pages =        {599--613},
  doi =          {10.1111/j.1467-985X.2004.00365.x},
  checked =      {[2006-04-16]},
  keywords =     {heritability, ratios, intra-class correlation,
                  intra-unit correlation, simulation, linearization, latent
                  variable approach},
}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

-E:jw