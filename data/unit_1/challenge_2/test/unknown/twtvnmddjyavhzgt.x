From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 09:28:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RDS9L9027179
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 09:28:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RDRSZA003824;
	Wed, 27 Jun 2007 15:27:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	DKIM_SIGNED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.174])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RDLUWP000796
	for <r-help@lists.R-project.org.>; Wed, 27 Jun 2007 15:21:31 +0200
Received: by ug-out-1314.google.com with SMTP id 75so327472ugb
	for <r-help@lists.R-project.org.>; Wed, 27 Jun 2007 06:21:29 -0700 (PDT)
Received: by 10.78.149.15 with SMTP id w15mr255386hud.1182950489205;
	Wed, 27 Jun 2007 06:21:29 -0700 (PDT)
Received: by 10.78.21.5 with HTTP; Wed, 27 Jun 2007 06:21:29 -0700 (PDT)
Message-ID: <b9065fc0706270621g5dcf0d36nf734efc5110e2a98@mail.gmail.com>
Date: Wed, 27 Jun 2007 15:21:29 +0200
From: "Paul Lemmens" <paul.lemmens@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] cmdscale(eurodist)
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

Dear all,

I have a question regarding the 'y <- -loc[,2]' in ?cmdscale.
Although I see that the plot is more sensible when using the '-loc'
instead of just 'y <- loc[,2]', I don't understand if there is a
statistical reason to do '-loc[,2]'.  So is this just to make the
graph look better, or should I always use -loc for the y-axis of a
similar plot for a completely different data set.

Kind regards,
Paul Lemmens

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

ifkcNnGY c i