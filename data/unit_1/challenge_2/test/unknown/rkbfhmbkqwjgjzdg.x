From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 11:30:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55FUjhB010528
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 11:30:46 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55FTMBs023313;
	Tue, 5 Jun 2007 17:29:33 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wr-out-0506.google.com (wr-out-0506.google.com [64.233.184.227])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55FTFsM023285
	for <R-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 17:29:15 +0200
Received: by wr-out-0506.google.com with SMTP id 69so1038884wra
	for <R-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 08:29:14 -0700 (PDT)
Received: by 10.100.134.2 with SMTP id h2mr3336164and.1181057354052;
	Tue, 05 Jun 2007 08:29:14 -0700 (PDT)
Received: by 10.100.112.16 with HTTP; Tue, 5 Jun 2007 08:29:14 -0700 (PDT)
Message-ID: <6fb73d020706050829nc05c587s17fa85a56f796864@mail.gmail.com>
Date: Tue, 5 Jun 2007 11:29:14 -0400
From: "shirley zhang" <shirley0818@gmail.com>
To: R-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: shirley0818@gmail.com
Subject: [R] Can I treat subject as fixed effect in linear model
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

There are 20 subjects grouped by Gender, each subject has 2 tissues
(normal vs. cancer).

In fact, it is a 2-way anova (factors: Gender and tissue) with tissue
nested in subject. I've tried the following:

Model 1: lme(response ~ tissue*Gender, random = ~1|subject)
Model 2: response ~ tissue*Gender + subject
Model 3: response ~ tissue*Gender


It seems like Model 1 is the correct one since my experiment design is
nested design. However, can anybody tell me whether Model2 is
completely illegal?

Thanks

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

wwggaws0v