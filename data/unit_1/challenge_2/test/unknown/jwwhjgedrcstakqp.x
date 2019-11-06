From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 13:10:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5IHAKL9019904
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 13:10:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IH9YdB025597;
	Mon, 18 Jun 2007 19:09:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp1.kolej.mff.cuni.cz (smtp1.kolej.mff.cuni.cz [195.113.24.4])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IH9Sqi025566
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 19:09:29 +0200
X-Envelope-From: klaster@karlin.mff.cuni.cz
Received: from [195.113.26.47] (krtek.kolej.mff.cuni.cz [195.113.26.47])
	by smtp1.kolej.mff.cuni.cz (8.13.8/8.13.8) with ESMTP id l5IH8qhM047066;
	Mon, 18 Jun 2007 19:09:28 +0200 (CEST)
	(envelope-from klaster@karlin.mff.cuni.cz)
Message-ID: <4676BC1C.1050305@karlin.mff.cuni.cz>
Date: Mon, 18 Jun 2007 19:08:44 +0200
From: Petr Klasterecky <klaster@karlin.mff.cuni.cz>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: livia <yn19832@msn.com>
References: <11178663.post@talk.nabble.com>
In-Reply-To: <11178663.post@talk.nabble.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Optimization
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

Hi,

my first guess is that the algorithm returns a negative value in some 
step - recall that you start from 0.0207!! This negative value is then 
passed as standard error to qnorm and that cannot work...
My guess is based on a small experiment where I tried a different 
starting point (.02 is so close to 0 that one cannot see anything):
xsd <- optim(20, fr, NULL,method="BFGS",control=list(trace=6))

The warnings which you didn't include also tell you about NaNs in 
qnorm() - another strong indication of wrong arguments to qnorm().

Try constrained optimization to resctrict to positive values.
See ?constrOptim or use optim() with a method allowing for box 
constraints - see ?optim, arguments lower, upper.

Petr

livia napsal(a):
> Hi, I would like to minimize the value of x1-x2, x2 is a fixed value of 0.01,
> x1 is the quantile of normal distribution (0.0032,x) with probability of
> 0.7, and the changing value should be x. Initial value for x is 0.0207. I am
> using the following codes, but it does not work.
> 
> fr <- function(x) {
>       x1<-qnorm(0.7,0.0032,x)
>       x2=0.01
>       x1-x2
> }
> xsd <- optim(0.0207, fr, NULL,method="BFGS")
> 
> It is the first time I am trying to use optimization. Could anyone give me
> some advice?

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

       

Kljev�aa>vtii