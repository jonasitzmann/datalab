From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 10:02:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KE2ZL9010767
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 10:02:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KE20ht000515;
	Wed, 20 Jun 2007 16:02:12 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from BAY0-OMC3-S10.bay0.hotmail.com (bay0-omc3-s10.bay0.hotmail.com
	[65.54.246.210])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KDwO76031372
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 15:58:26 +0200
Received: from hotmail.com ([64.4.39.106]) by BAY0-OMC3-S10.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Wed, 20 Jun 2007 06:58:24 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Wed, 20 Jun 2007 06:58:24 -0700
Message-ID: <BAY140-F26BC6524F53A21362F139DC6110@phx.gbl>
Received: from 64.4.39.123 by by140fd.bay140.hotmail.msn.com with HTTP;
	Wed, 20 Jun 2007 13:58:20 GMT
X-Originating-IP: [130.237.102.209]
X-Originating-Email: [perimessaggini@hotmail.com]
X-Sender: perimessaggini@hotmail.com
In-Reply-To: <OF38D0F60A.BD593F52-ONC1257300.0048A3A2-C1257300.004907A4@basf-c-s.be>
From: "Giulio Di Giovanni" <perimessaggini@hotmail.com>
To: joris.dewolf@cropdesign.com
Date: Wed, 20 Jun 2007 13:58:20 +0000
Mime-Version: 1.0
X-OriginalArrivalTime: 20 Jun 2007 13:58:24.0366 (UTC)
	FILETIME=[11A698E0:01C7B343]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Linear Mixed Models with nlme, more than one random effect
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5KE2ZL9010767

Thanks a lot !!!

I was about to reply to my previous email that I found a solution via lme4 !
But really thanks.




>From: joris.dewolf@cropdesign.com
>To: "Giulio Di Giovanni" <perimessaggini@hotmail.com>
>CC: r-help@stat.math.ethz.ch, r-help-bounces@stat.math.ethz.ch
>Subject: Re: [R] Linear Mixed Models with nlme, more than one random effect
>Date: Wed, 20 Jun 2007 15:17:42 +0200
>
>
>
>Guilio,
>
>Have a look at Rnew volume 5/1 (http://cran.r-project.org/doc/Rnews/) where
>Spie Bates explains this nicely. Condider using lme4 for your purpose.
>
>Joris
>
>
>
>
>
>
>
>
>
>              "Giulio Di
>              Giovanni"
>              <perimessaggini@h                                          To
>              otmail.com>               r-help@stat.math.ethz.ch
>              Sent by:                                                   cc
>              r-help-bounces@st
>              at.math.ethz.ch                                       Subject
>                                        [R] Linear Mixed Models with nlme,
>                                        more than one random effect
>              20/06/2007 14:09
>
>
>
>
>
>
>
>
>
>
>Hi, I' trying to learn how to use lme for Linear Mixed Models  and I have a
>
>problem when I have to include more than one random effect in my model. I
>know that this could be a stupid question to ask, but I'm not able to solve
>
>it by myself... One example: if my model is
>
>response = operator + block + day
>with operator and block as fixed effects and day as random effect, I use
>
>res.lme <- lme(resp ~ oper + block , random=~1|day)
>
>If I want to include also another random effect, as "experiment", what I
>should do ?
>This effect doesn't have to be nested, at the and I would like to have the
>COV matrix using (if I'm not wrong) getVarCov function.
>
>Thanks in advance for any help or suggestions, I'm a beginner on this
>field...
>
>Davide
>
>_________________________________________________________________
>Cinema, Tv, Gossip e Orsoscopo…Tutto su MSN intrattenimento!
>
>______________________________________________
>R-help@stat.math.ethz.ch mailing list
>https://stat.ethz.ch/mailman/listinfo/r-help
>PLEASE do read the posting guide
>http://www.R-project.org/posting-guide.html
>and provide commented, minimal, self-contained, reproducible code.

_________________________________________________________________
Calcio, Quiz, Sudoku, Scacchi� Inizia la sfida su Messenger, GRATIS!

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

 Ahq-Se