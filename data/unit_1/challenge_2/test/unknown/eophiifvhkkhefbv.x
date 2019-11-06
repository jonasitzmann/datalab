From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 16:30:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63KUUL9001085
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 16:30:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63KTdQP029161;
	Tue, 3 Jul 2007 22:29:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_60, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.234])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63KTToB029057
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 22:29:30 +0200
Received: by nz-out-0506.google.com with SMTP id z31so1377570nzd
	for <r-help@stat.math.ethz.ch>; Tue, 03 Jul 2007 13:29:29 -0700 (PDT)
Received: by 10.114.157.1 with SMTP id f1mr6568942wae.1183494569294;
	Tue, 03 Jul 2007 13:29:29 -0700 (PDT)
Received: by 10.114.170.3 with HTTP; Tue, 3 Jul 2007 13:29:29 -0700 (PDT)
Message-ID: <1c6126db0707031329h20606b79u73e8f3edbf70f3fb@mail.gmail.com>
Date: Tue, 3 Jul 2007 14:29:29 -0600
From: sj <ssj1364@gmail.com>
To: r-help <r-help@stat.math.ethz.ch>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Statistics Question not R question: competing risks and
	non-informative censoring
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

All,

I am working with Emergency Department (ED) Length of Stay Data.  The ED
visit can end in one of a variety of ways (Admit, discharge, transfer,
etc...) Initially, I have modeled the time to event  by fitting a survival
model to  the time the outcome of interest and treat all other outcomes as
censoring. However I recently came across the cmprsk package in R which
seems to be developed specifically for competing risks survival models. I
have been able to gather that the key issue in deciding whether to model
each outcome separately or to use something like the cmprsk package is to
determine whether or not the censoring is "non-informative." I have read a
up a little about informative vs. no-informative censoring, but remain
confused, is their a standard approach to determining whether or not
censoring is informative, can anyone suggest some good
(approachable/non-technical) references on the subject?

best,

Spencer

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

 t+Ene</t