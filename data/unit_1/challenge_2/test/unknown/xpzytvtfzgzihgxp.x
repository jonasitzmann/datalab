From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 11:00:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LF0aL9025475
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 11:00:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LEx3P3025771;
	Thu, 21 Jun 2007 16:59:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED, DKIM_VERIFIED,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.224])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LEblB9015785
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 16:37:47 +0200
Received: by nz-out-0506.google.com with SMTP id o37so506151nzf
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 07:37:47 -0700 (PDT)
Received: by 10.114.76.1 with SMTP id y1mr1669446waa.1182436666616;
	Thu, 21 Jun 2007 07:37:46 -0700 (PDT)
Received: by 10.114.166.14 with HTTP; Thu, 21 Jun 2007 07:37:46 -0700 (PDT)
Message-ID: <8b88484c0706210737s3c92b155xa33644a704bca4c2@mail.gmail.com>
Date: Thu, 21 Jun 2007 10:37:46 -0400
From: "Mahima Hada" <mahima.hada@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Multi-variate Probit model using Bayesm in R
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

I have built a multi-variate probit model using the package "bayesm", which
requires that the X data is constructed using the function "CreateX". I've
gone through the documentation and run my model, but wanted to be sure about
my interpretation of the results for the coefficients - beta.

Steps:
1) I have 5 choices for the dependent variable Y, so p=5
2) I have 8 covariates, so the x data I read in has n rows (n=no. of
respondents) and 8 columns. As follows:

         [,1]      [,2]      [,3]     [,4]     [,5]     [,6]     [,7]
[,8]
  [1,] -3.202  0.583  0.026  0.398 -0.117  2.250  1.521    0


3) when I use CreateX (setting INT=TRUE and DIFF=FALSE) I get a matrix of
n*5 rows and 36 columns.

          [,1] [,2] [,3] [,4]   [,5]     [,6]      [,7]   [,8]       [,9]
[,10]    [,11]   [,12]  [,13]     [,14]   [,15]     [,16]  [,17]   [,18]
   [1,]    1    0    0    0 -3.202  0.000  0.000  0.000  0.583  0.000  0.000
0.000  0.026  0.000  0.000  0.000  0.398  0.000
   [2,]    0    1    0    0  0.000 -3.202  0.000  0.000  0.000  0.583  0.000
0.000  0.000   0.026  0.000  0.000  0.000  0.398
   [3,]    0    0    1    0  0.000  0.000 -3.202  0.000  0.000  0.000  0.583
0.000  0.000  0.000  0.026  0.000  0.000  0.000
   [4,]    0    0    0    1  0.000  0.000  0.000 -3.202   0.000  0.000
0.000  0.583  0.000  0.000  0.000  0.026  0.000  0.000
   [5,]    0    0    0    0  0.000  0.000  0.000  0.000  0.000  0.000  0.000
0.000  0.000  0.000  0.000  0.000  0.000  0.000

           [,19]  [,20]    [,21]    [,22]    [,23]  [,24]     [,25]
[,26]     [,27]   [,28]    [,29]   [,30]    [,31]  [,32] [,33] [,34] [,35]
   [1,]  0.000  0.000 -0.117  0.000  0.000  0.000  2.250  0.000  0.000
0.000  1.521  0.000  0.000  0.000     0     0     0
   [2,]  0.000  0.000  0.000 -0.117  0.000  0.000  0.000  2.250  0.000
0.000  0.000  1.521   0.000  0.000     0     0     0
   [3,]  0.398  0.000  0.000  0.000 -0.117  0.000  0.000  0.000  2.250
0.000  0.000  0.000  1.521  0.000     0     0     0
   [4,]  0.000  0.398  0.000  0.000  0.000 -0.117  0.000  0.000  0.000
2.250  0.000  0.000  0.000  1.521     0     0     0
   [5,]  0.000  0.000  0.000  0.000  0.000  0.000  0.000  0.000  0.000
0.000  0.000  0.000  0.000  0.000     0     0     0
         [,36]
   [1,]     0
   [2,]     0
   [3,]     0
   [4,]     0
   [5,]     0


4) My understanding is that the first four columns are the intercepts for
the first four choices of y, and the value of each covariate is replicated
in four columns (diagonal values) to correspond to the first four choices of
y. Every 5th row is 0. This pattern is repeated for all n respondents. Does
this mean for the FIFTH customer choice - there is NO calculation done??

5) Once I run rmvpgibbs with this data structure, my "betadraw" output
summary is of 36 variables (showing the first 11):

mean std dev num se rel eff s size  1 -2.999 3.32 0.216 77 234  2 -20.62 5.3
0.514 170 106  3 -17.973 2.87 0.276 166 108  4 -14.595 5.1 0.505 177 102  5
2.551 2.13 0.165 109 165  6 -0.235 1.11 0.071 74 240  7 -0.772 0.78 0.061
110 162  8 0.917 0.89 0.061 86 209  9 -1.329 1.58 0.1 72 247  10 1.002 1.05
0.074 89 200  11 0.108 0.66 0.052 111 161
QUESTIONS:

1) To interpret these results, my understanding is that "1"-"4" correspond
to the intercepts for the first four customer choices. Similarly "5"-"9"
correspond to the beta coefficient of the first covariate for the first four
customer choices and so on. Hence, I have NOTHING for the 5th customer
choice. Now I have set DIFF=FALSE in CreateX, but even then it looks like the
interpretation is w.r.t. to the beta coefficients of the fifth customer
choice as Zero.
Is this correct??

2) In the summary of out$betadraw, can somebody please tell me - what is
"num se" "rel eff" and "s size"??

3) The beta output is not identified. For identification, I should divide
all the outputs for channel 1 with sigma(1,1) and so on....Is this correct??


Really appreciate whatever help I can get for the MVP model.

Thanks a lot,
Regards,
Mahima


-- 
PhD Student, Marketing
Penn State University

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

,v n1/9d'
KOr+s