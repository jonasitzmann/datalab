From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 04:21:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l648LSL9008183
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 04:21:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l648KBCc025946;
	Wed, 4 Jul 2007 10:20:27 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp801.mail.ird.yahoo.com (smtp801.mail.ird.yahoo.com
	[217.146.188.61])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l648K2D7025903
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 10:20:02 +0200
Received: (qmail 56206 invoked from network); 4 Jul 2007 08:20:02 -0000
Received: from unknown (HELO ?192.168.2.11?)
	(robertsonburns@btinternet.com@86.129.90.109 with plain)
	by smtp801.mail.ird.yahoo.com with SMTP; 4 Jul 2007 08:20:02 -0000
X-YMail-OSG: 0fjPR80VM1kA6VKaG_FnR1ig9xCwniT3dW8Ng76qRJ._cthQS6TD5Q9aMgdllj6FbA8BSV0dSmh7vzeQTKlD10Ay85LHPrxkJbIxz3fxqapZJMPu
Message-ID: <468B5843.8060708@pburns.seanet.com>
Date: Wed, 04 Jul 2007 09:20:19 +0100
From: Patrick Burns <pburns@pburns.seanet.com>
User-Agent: Mozilla Thunderbird 1.0.7 (Windows/20050923)
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: Paul Smith <phhs80@gmail.com>
References: <6ade6f6c0707031310m4bf83d91xb8f61264caa12645@mail.gmail.com>
In-Reply-To: <6ade6f6c0707031310m4bf83d91xb8f61264caa12645@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] Fine tunning rgenoud
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

I think fine tuning the function might be in order.

The function has just a single penalty for not meeting
the constraints no matter how close it is to meeting
them.  A better approach is to have a penalty that
depends on the amount by which all of the constraints
are breached.


Patrick Burns
patrick@burns-stat.com
+44 (0)20 8525 0696
http://www.burns-stat.com
(home of S Poetry and "A Guide for the Unwilling S User")


Paul Smith wrote:

>Dear All,
>
>I am trying to solve the following maximization problem, but I cannot
>have rgenoud giving me a reliable solution.
>
>Any ideas?
>
>Thanks in advance,
>
>Paul
>
>----------------------------
>library(rgenoud)
>
>v <- 0.90
>O1 <- 10
>O2 <- 20
>O0 <- v*O1+(1-v)*O2
>
>myfunc <- function(x) {
>  U0 <- x[1]
>  U1 <- x[2]
>  U2 <- x[3]
>  q0 <- x[4]
>  q1 <- x[5]
>  q2 <- x[6]
>  p <- x[7]
>
>  if (U0 < 0)
>    return(-1e+200)
>  else if (U1 < 0)
>    return(-1e+200)
>  else if (U2 < 0)
>    return(-1e+200)
>  else if ((U0-(U1+(O1-O0)*q1)) < 0)
>    return(-1e+200)
>  else if ((U0-(U2+(O2-O0)*q2)) < 0)
>    return(-1e+200)
>  else if ((U1-(U0+(O0-O1)*q0)) < 0)
>    return(-1e+200)
>  else if ((U1-(U2+(O2-O1)*q2)) < 0)
>    return(-1e+200)
>  else if((U2-(U0+(O0-O2)*q0)) < 0)
>    return(-1e+200)
>  else if((U2-(U1+(O1-O2)*q1)) < 0)
>    return(-1e+200)
>  else if(p < 0)
>    return(-1e+200)
>  else if(p > 1)
>    return(-1e+200)
>  else if(q0 < 0)
>    return(-1e+200)
>  else if(q1 < 0)
>    return(-1e+200)
>  else if(q2 < 0)
>    return(-1e+200)
>  else return(p*(sqrt(q0)-(O0*q0+U0))+(1-p)*(v*(sqrt(q1)-(O1*q1+U1))+(1-v)*(sqrt(q2)-(O2*q2+U2))))
>
>}
>genoud(myfunc,nvars=7,max=T,pop.size=6000,starting.values=runif(7),wait.generations=150,max.generations=300,boundary.enforcement=2)
>
>______________________________________________
>R-help@stat.math.ethz.ch mailing list
>https://stat.ethz.ch/mailman/listinfo/r-help
>PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
>and provide commented, minimal, self-contained, reproducible code.
>
>
>  
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              


m/tu#arrhrJ<ova