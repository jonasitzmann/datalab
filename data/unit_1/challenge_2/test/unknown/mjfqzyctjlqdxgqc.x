From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 04:10:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C8AsL9024277
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 04:10:54 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C8A5e9011184;
	Tue, 12 Jun 2007 10:10:28 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.179])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C89mia011019
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 10:09:48 +0200
Received: by py-out-1112.google.com with SMTP id f31so3134112pyh
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 01:09:47 -0700 (PDT)
Received: by 10.35.78.9 with SMTP id f9mr10741119pyl.1181635787435;
	Tue, 12 Jun 2007 01:09:47 -0700 (PDT)
Received: by 10.35.34.4 with HTTP; Tue, 12 Jun 2007 01:09:47 -0700 (PDT)
Message-ID: <dea6cb960706120109g4b65e28kf316b051d44e2ecd@mail.gmail.com>
Date: Tue, 12 Jun 2007 10:09:47 +0200
From: "Christophe Pallier" <christophe@pallier.org>
To: "Charlie Chi" <tsang0323@hotmail.com>
In-Reply-To: <BAY144-F30F880C1D577C8564FB8C0A2190@phx.gbl>
MIME-Version: 1.0
References: <BAY144-F30F880C1D577C8564FB8C0A2190@phx.gbl>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Data transformation for chi-square test.
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

If you want to test whether ' member' has an effect on 'cost' (a continuous
numerical variable), I do not recommend using a chi.square test,
but rather a  simple linear regression or a one-way analysis of variance.
Chi.square are for categorical variables and unless you have a good reason,
there is no need to discretize the 'cost' variable.

First, look at the data to see if "member" actually has an effect on "cost"
(I assume your data in a data.frame 'a'):

tapply(a$cost,a$member,summary)
boxplot(a$cost ~ a$ member)

Then, try a linear regression

l<- lm(a$cost ~ a$member)
plot(a$cost ~ a$member)
abline(l)
summary(l)

or, if the linear fit is not too good, use an analysis of variance (ANOVA):

l<- aov(a$cost ~ as.factor(a$member))
summary(l)
TukeyHSD(l)


On 6/12/07, Charlie Chi <tsang0323@hotmail.com> wrote:
>
> Dear all R users
> :
> I am a IT student with few statistical background and new R user for only
> have  two month exprience. I have a data named medcost, import by
> read.table() as follow for example (real dataset has 500 cases), the
> heander id means case id, member means members in a family and cost is the
> family pay for medical cost every 6 months.
>
> id        member               cost
> 1         4                          320
> 2         2                          150
> 3         3                          420
> 4         5                          330
> 5         6                          540
> 6         2                          310
> 7         4                          169
> 8         6                          647
> 9         3                          347
> 10       4                          567
>
> I would like to use this dataset with chi-sqare analysis to see if there
> is
> any realationship between family member and medical cost (more members in
> a
> family will rise their medical cost?) I have found the pacage called
> stats,
> but I think need to transform the dataset into a contingency table as I
> read from books. I am not sure if I correct, I think the table should
> looks
> like:
>                       member
> cost                [2]      [3]     [4]     [5]     [6]     Total
> [0,100]           1         0        0        0       0          1
> [100,200]       0         0        1        0       0          1
> [200,300]       0         0        0        0       0          0
> [300,400]       1         1        1        1       0          4
> [400,500]       0         1        0        0       0          1
> [500,600]       0         0        1        0       1          2
> [600,700]       0         0        0        0       1          1
> Total              2          2       3         1       2         10
>
> I did try to use the method in chapter 5.0 of "R Introduction" to create
> freqency table, but it did not work. I am wondering if any one can help me
> with it? Thank you for your help.
>
> Regards
>
> Charlie
> .
>
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>


-- 
Christophe Pallier (http://www.pallier.org)

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

pr>htt;m5i>ry