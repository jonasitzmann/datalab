From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 00:26:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5J4QgL9025110
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 00:26:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J4P0Ri028268;
	Tue, 19 Jun 2007 06:25:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_80,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from biomail.ucsd.edu (biomail.ucsd.edu [132.239.58.91])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J4OLuu028200
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 06:24:22 +0200
Received: from biomail.ucsd.edu (localhost [127.0.0.1])
	by biomail.ucsd.edu (8.14.1/8.14.1/IH) with ESMTP id l5J4OKOa006681
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 21:24:20 -0700 (PDT)
Received: from localhost (bigic@localhost)
	by biomail.ucsd.edu (8.14.1/8.14.1/Submit) with ESMTP id l5J4OJFK006678
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 21:24:20 -0700 (PDT)
X-Authentication-Warning: biomail.ucsd.edu: bigic owned process doing -bs
Date: Mon, 18 Jun 2007 21:24:19 -0700 (PDT)
From: Boris Igic <bigic@ucsd.edu>
X-X-Sender: bigic@biomail
To: r-help@stat.math.ethz.ch
Message-ID: <Pine.GSO.4.64.0706182102470.4484@biomail>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Iterative Solver [Converting Matlab's solve()]
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

I can't for the life of me figure out how to get the roots for this simple
(but sovable only iteratively) equation in R:

x = z*(1-(1-2/z)^y

where x and y are known, and z is unknown. In Matlab, this amounts to:

[my.solution] = solve('x = z*(1-(1-2/z)^y') 
my.solution.real = solution(y-1,y)

% bottom line displays non-imaginary solution (last element)

Obviously, I'm deeply unqualified as a mathematician or programmer and 
regret wasting your time if this question is really basic. I would very 
much appreciate even the smallest morsel of time that you might spend on 
this, and yes, you could be my hero.

Many Thanks,

Boris

P.S. The above equation is from: Paxman GJ (1963). Maximum likelihood 
estimation of the number of self-sterility alleles in a population. 
Genetics 48: 1029-1032.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

no Rx