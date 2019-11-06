From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 20:48:02 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l550m1hB002167
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 20:48:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l550keOM029191;
	Tue, 5 Jun 2007 02:46:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.172])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l550kGo4028779
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 02:46:17 +0200
Received: by ug-out-1314.google.com with SMTP id 36so25374uga
	for <r-help@stat.math.ethz.ch>; Mon, 04 Jun 2007 17:46:16 -0700 (PDT)
Received: by 10.78.124.9 with SMTP id w9mr2218925huc.1181004375727;
	Mon, 04 Jun 2007 17:46:15 -0700 (PDT)
Received: by 10.78.166.11 with HTTP; Mon, 4 Jun 2007 17:46:15 -0700 (PDT)
Message-ID: <b3676f520706041746j1e02f369he7e277520f6a3dfb@mail.gmail.com>
Date: Mon, 4 Jun 2007 17:46:15 -0700
From: "Neil Losin" <neil.losin@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] klaR stepclass
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

I'm trying to use "stepclass" to do a stepwise variable selection with
method=lda. I keep getting this warning message, which shows up once
for each variable added to the model during variable selection:

Warning message:
error(s) in modeling/prediction step in: cv.rate(vars = c(model,
tryvar), data = data, grouping = grouping,

I don't know how to interpret this warning. I do not have a separate
data set for cross validation. Is this important, or will "stepclass"
do leave-one-out cross-validation in the absence of other
cross-validation data?

Also, when I run "stepclass" several times with identical parameters,
it will give me a slightly different "best" model each time. It seems
to me that it should always return the same model, as long as the
dataset and call are the same. Am I missing something? Is there some
randomization going on behind the scenes that I'm unaware of?

Thanks in advance,
Neil Losin

-- 
_____
Neil Losin
UCLA Dept. of Ecology and Evolutionary Biology
neil.losin@gmail.com

and

Neil Losin Nature Photography
http://www.neillosin.com

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

,vin G lV :stB