From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 11:50:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RFoVL9028894
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 11:50:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RFnDqn026945;
	Wed, 27 Jun 2007 17:49:25 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.7 required=5.0 tests=AWL, BAYES_60, DKIM_SIGNED,
	DKIM_VERIFIED, SARE_BAYES_6x6,
	SARE_BAYES_7x6 autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.180])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RFn14B026839
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 17:49:02 +0200
Received: by py-out-1112.google.com with SMTP id p76so415758pyb
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 08:49:01 -0700 (PDT)
Received: by 10.140.165.21 with SMTP id n21mr144216rve.1182959340662;
	Wed, 27 Jun 2007 08:49:00 -0700 (PDT)
Received: from VALUED-2CA80C17 ( [137.110.179.226])
	by mx.google.com with ESMTP id b21sm10646658rvf.2007.06.27.08.48.59
	(version=SSLv3 cipher=OTHER); Wed, 27 Jun 2007 08:48:59 -0700 (PDT)
Date: Wed, 27 Jun 2007 08:51:21 -0700
From: genomenet@gmail.com
X-Mailer: The Bat! (v3.99.3) Professional
Organization: dunhill
X-Priority: 3 (Normal)
Message-ID: <1106346696.20070627085121@gmail.com>
To: "r-help-request@stat.math.ethz.ch" <r-help@stat.math.ethz.ch>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] how to use chi-square to test correlation question
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: genomenet@gmail.com
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

Hi There,

There are 300 boy students and 100 girl students in a class. One interesting question is whether 
boy is smarter than girl or not.

first given the exam with a difficulty level 1, the number of the student who got A is below
31 for boy, 10 for girl.

Then we increase the difficulty level of the exam to level 2, the number of the student who got A is below
32 for boy, 10 for girl.

We did this 10 times, we got the following table
                                    score
gender  level1 level2 levle3 level4 level5 level6 level7 level 8 level9 level10
boy       31     32      33     34     35     36     37     38     39      40
girl      10     10      10     10     10     10     10     10     10      10


My question is how to use chi-square test to test if score is independent of gender.
That is whether boys is significantly smarter than girls.

I used a chisquare test to do this.
The null hypothesis is score is not correlated with gender. and we can also say
the null hypothesis is boys are the same smart as girls.
the alternative hypothesis is that boys are significantly smarter than girls.

boyscore=c(31,32,33,34,35,36,37,38,39,40)
girlscore=c(10,10,10,10,10,10,10,10,10,10)
ratioscore=boyscore/girlscore;
expratio=300/100;   #300 boy students and 100 girl students

chisq=sum((expratio-ratioscore)^2/expratio)
df=9
pvalue=1-pchisq(chisq,df)

Since the pvalue (0.9984578) is greater than significance level (0.05), we cannot
reject the null hypothesis. Therefore the conclusion is that boys are not significantly 
smarter than girls.
or we can say the conclusion is that score is not correlated with gender.

Am I right?

Thank you very much.

Van

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

-Sspxt3Ppeg