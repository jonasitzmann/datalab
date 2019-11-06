From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 02:46:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l566kRhB018254
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 02:46:28 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l566jXTR012855;
	Wed, 6 Jun 2007 08:45:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_60, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.233])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l566jPdH012792
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 08:45:25 +0200
Received: by nz-out-0506.google.com with SMTP id o37so42341nzf
	for <r-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 23:45:24 -0700 (PDT)
Received: by 10.114.25.3 with SMTP id 3mr198304way.1181112324175;
	Tue, 05 Jun 2007 23:45:24 -0700 (PDT)
Received: by 10.141.87.2 with HTTP; Tue, 5 Jun 2007 23:45:24 -0700 (PDT)
Message-ID: <bfb35b70706052345t1d40bf88l48942296d9d5ea68@mail.gmail.com>
Date: Wed, 6 Jun 2007 09:45:24 +0300
From: "Artem Mariupol" <artem.mariupol@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] correspondence analysis
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

Hello,

I am new to R and I have a question about the difference between
correspondence analysis in R and SPSS.
This is the input table I am working with (4 products and 18 attributes):

> mytable
   1  2  3  4  5 6  7  8  9 10 11 12 13 14 15 16 17 18
1 15 11 20  4 14 7  1  2  1  4 12 12 17 19 11 20  9 10
2 19 18 14 14 16 4 14 11 11 15 22 19 22 16 21 19 15 16
3 16 13 10  9 15 4 10  7 11 13 18 17 14 14 16 16 13 11
4 21 18 16 14 20 6 12 14 14 17 23 20 19 18 21 18 19 18

I found the function corresp() in the package MASS, but the results are
different from the output in SPSS. Also, I don't understand the coordinates;
in the biplot I cannot find a -2 limit for example from the first product on
any of the x axes.

> Rresult <- corresp(mytable, nf=2)
> Rresult
First canonical correlation(s): 0.20823373 0.04840434

 Row scores:
        [,1]        [,2]
1 -2.0838424  0.01237391
2  0.4901559  1.51190922
3  0.4463375 -0.72631884
4  0.4946202 -0.87620237

 Column scores:
          [,1]        [,2]
1  -0.29870621 -0.32282847
2   0.04851042  0.73570925
3  -1.79584803  0.04537505
4   1.10904141  1.21563470
5  -0.35048140 -1.28883782
6  -1.80044987 -1.99532989
7   1.96987033  1.89925225
8   1.59225423 -0.42249233
9   1.96534193 -2.01733348
10  1.29641406 -0.67857429
11  0.33216906  0.05071065
12  0.12620111 -0.30281237
13 -0.59997905  1.90985228
14 -1.18972391 -0.46697874
15  0.34099302  0.55835672
16 -1.07356465  0.44743219
17  0.32569239 -1.21741819
18  0.07133121  0.20777127

Thank you for your patience.
am

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

/e  y.etvBe