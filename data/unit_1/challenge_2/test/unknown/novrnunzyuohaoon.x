From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 12:15:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JGFAL9031402
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 12:15:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JGDmlu026405;
	Tue, 19 Jun 2007 18:14:09 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.169])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JG5WCX023576
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 18:05:33 +0200
Received: by ug-out-1314.google.com with SMTP id m3so129729uge
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 09:05:32 -0700 (PDT)
Received: by 10.67.102.12 with SMTP id e12mr547032ugm.1182269132376;
	Tue, 19 Jun 2007 09:05:32 -0700 (PDT)
Received: by 10.67.31.9 with HTTP; Tue, 19 Jun 2007 09:05:32 -0700 (PDT)
Message-ID: <c8f263420706190905w4f631b74g5528c9cf537b1a1c@mail.gmail.com>
Date: Tue, 19 Jun 2007 12:05:32 -0400
From: "John Phillips" <john2943@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Linear model predictions, differences in class
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

I am using R to fit statistical models to data were the observations are
means of the original data.  R is used to calculate the mean before fitting
the model.  My problem is: When R calculates the means using tapply, the
class of the means differs from the class of the original data, which gives
me trouble when I want to use the original data to calculate model
predictions.  Here is a simple example that demonstrates the problem:

> data.in<-read.table('example.dat',header=TRUE)
>
> #Here are the data:
> data.in
  location    x      y
1        A  17.2  28.46
2        A 91.7 143.33
3        A 93.6 148.05
4        B 95.8 150.28
5        B 54.9  89.49
6        B 51.1  82.51
7        C 53.9  88.46
8        C 40.3  63.62
9        C 38.5  64.46
 >
> attach(data.in)
>
> #Calculate means by variable "location":
> data.mn<-data.frame(xm = tapply(x,location,mean), ym =
tapply(y,location,mean))
> detach(data.in)
>
> #Here are the means:
> data.mn
        xm       ym
A 67.50000 106.6133
B 67.26667 107.4267
C 44.23333   72.1800
>
> #Fit the model:
> mod1<-lm(ym ~ xm, data.mn)
>
> mod1

Call:
lm(formula = ym ~ xm, data = data.mn)

Coefficients:
(Intercept)           xm
      5.633        1.505

> #R will make "predictions" using the data.mn data frame:
> predict(mod1,newdata =  data.mn)
        A         B         C
107.19260 106.84153  72.18587
>
> #But, even if new variables are created in the original data
> #with names that match those names used in the regression:
 > data.in$xm<-data.in$x
> data.in$ym<-data.in$y
> data.in
  location    x      y   xm     ym
1        A 17.2  28.46 17.2  28.46
2        A 91.7 143.33 91.7 143.33
3        A 93.6 148.05 93.6 148.05
4        B 95.8 150.28 95.8 150.28
5        B 54.9  89.49 54.9  89.49
6        B 51.1  82.51 51.1  82.51
7        C 53.9  88.46 53.9  88.46
8        C 40.3  63.62 40.3   63.62
9        C 38.5  64.46 38.5  64.46
>
> #R will not use data.in to make predictions:
> predict(mod1,newdata = data.in)
Error: variable 'xm' was fitted with class "other" but class "numeric" was
supplied
>
> data.in$xm
[1] 17.2 91.7 93.6 95.8 54.9 51.1 53.9 40.3 38.5
> data.mn$xm
       A        B        C
67.50000 67.26667 44.23333
>

Is there a way to make these variables have the same class?  Or, is there
something other than "tapply" that will work better for this?

Thanks!

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

m<t6nt YrT