From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 08:47:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FCljL9002434
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 08:47:47 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FCkNYC005556;
	Fri, 15 Jun 2007 14:46:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp1.kolej.mff.cuni.cz (smtp1.kolej.mff.cuni.cz [195.113.24.4])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FCkDvm005494
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 14:46:13 +0200
X-Envelope-From: klaster@karlin.mff.cuni.cz
Received: from [195.113.26.47] (krtek.kolej.mff.cuni.cz [195.113.26.47])
	by smtp1.kolej.mff.cuni.cz (8.13.8/8.13.8) with ESMTP id l5FCjbpu040834;
	Fri, 15 Jun 2007 14:46:14 +0200 (CEST)
	(envelope-from klaster@karlin.mff.cuni.cz)
Message-ID: <467289EA.7070204@karlin.mff.cuni.cz>
Date: Fri, 15 Jun 2007 14:45:30 +0200
From: Petr Klasterecky <klaster@karlin.mff.cuni.cz>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: billycorg <billycorg1@virgilio.it>
References: <11135888.post@talk.nabble.com>
In-Reply-To: <11135888.post@talk.nabble.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] problems with matrix, list and other..
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

You only got what you deserved when not reading the manual...
R-Intro, Chapters 5 and 6, page 26 in particular.
http://cran.r-project.org/doc/manuals/R-intro.pdf

Petr


billycorg napsal(a):
> hi
> 
> can anyone help me to solve these problems?
> 
> i have:
> 1) "d" matrix with 1096 rows;
> for example, 
> d[2]=        
>                    [,1]           [,2]          [,3]
> [1,] 0.1192566 0.0000000 0.0000000
> [2,] 0.0000000 0.1065938 0.0000000
> [3,] 0.0000000 0.0000000 0.1038888
> 
> if I
> class (d[2]) = "list" 
> solve(d[2]) = error!!!
> 
> 2) "e" list with 1096 rows;
> for example
> e[2]2=
> [[1]]
> [1] -1.0892216 -0.7304947 -1.2883680
> 
> d[2]%*%t(e[2])
> this is the error: requires numeric matrix/vector arguments
> 
> i've tried to coerce "e" to a matrix, but it's doesn't work...
> 
> in the end.. i'd like this:
> for (i in (1:1096)) {solve(d[i])*t(e[i])}
> 
> help me, please :)
> 
> Vincenzo

-- 
Petr Klasterecky
Dept. of Probability and Statistics
Charles University in Prague
Czech Republic

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

 ;>Bni	agpAstokl