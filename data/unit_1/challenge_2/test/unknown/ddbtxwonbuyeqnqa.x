From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 12:07:26 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56G7OhB023599
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 12:07:26 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56G6Z0X010934;
	Wed, 6 Jun 2007 18:06:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.243])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56FjDuP001251
	for <R-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 17:45:14 +0200
Received: by an-out-0708.google.com with SMTP id b2so35331ana
	for <R-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 08:45:13 -0700 (PDT)
Received: by 10.100.138.2 with SMTP id l2mr344084and.1181144711063;
	Wed, 06 Jun 2007 08:45:11 -0700 (PDT)
Received: by 10.100.137.20 with HTTP; Wed, 6 Jun 2007 08:45:11 -0700 (PDT)
Message-ID: <255640f90706060845o21530092v7f3a4794e0027515@mail.gmail.com>
Date: Wed, 6 Jun 2007 17:45:11 +0200
From: "Soare Marcian-Alin" <soarealin@gmail.com>
To: "Uwe Ligges" <ligges@statistik.uni-dortmund.de>, R-help@stat.math.ethz.ch
In-Reply-To: <4666D542.20504@statistik.uni-dortmund.de>
MIME-Version: 1.0
References: <255640f90706060748j6dbaa08av91c421b98b53188f@mail.gmail.com>
	<4666D542.20504@statistik.uni-dortmund.de>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Linear Discriminant Analysis
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
Content-Type: multipart/mixed; boundary="===============1810964556=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1810964556==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 2371

Thanks for explaining...

Im just sitting at the homework for 6 hours after taking for one week
antibiotica, because i had an amygdalitis...
I just wanted some tipps for solving this homework, but thanks, I will try
to get help on another way :)

I think i solved it, but I still get this Error :(

## Loading Data
library(MASS)
olive <- url("
http://www.statistik.tuwien.ac.at/public/filz/students/multi/ss07/olive.R")
print(load(olive))
dim(olive)
summary(olive)

index <- sample(nrow(olive), 286)

train  <- olive[index,-11]
test   <- olive[-index,-11]

summary(train)
summary(test)

table(train$Region)
table(test$Region)

# Linear Discriminant Analysis
z <- lda(Region ~ . , train)
zn <- predict(z, newdata=3Dtest)$class
mean(zn !=3D test$Region)

2007/6/6, Uwe Ligges <ligges@statistik.uni-dortmund.de>:
>
>
> So what about asking your teacher (who seems to be Peter Filzmoser) and
> try to find out your homework yourself?
> You might want to think about some assumptions that must hold for LDA
> and look at the class of your explaining variables ...
>
> Uwe Ligges
>
>
>
> Soare Marcian-Alin wrote:
> > Hello,
> >
> > I want to make a linear discriminant analysis for the dataset olive, and
> I
> > get always this error:#
> > Warning message:
> > variables are collinear in: lda.default(x, grouping, ...)
> >
> > ## Loading Data
> > library(MASS)
> > olive <- url("
> >
> http://www.statistik.tuwien.ac.at/public/filz/students/multi/ss07/olive.R
> ")
> > print(load(olive))
> >
> > y <- 1:572
> > x <- sample(y)
> > y1 <- x[1:286]
> >
> > train <- olive[y1,-11]
> > test  <- olive[-y1,-11]
> >
> > summary(train)
> > summary(test)
> >
> > table(train$Region)
> > table(test$Region)
> >
> > # Linear Discriminant Analysis
> > z <- lda(Region ~ . , train)
> > predict(z, train)
> >
> > z <- lda(Region ~ . , test)
> > predict(z, test)
> >
> > Thanks in advance!
> >
> >
> >
> > ------------------------------------------------------------------------
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
>



--=20
Mit freundlichen Gr=FCssen / Best Regards

Soare Marcian-Alin

	[[alternative HTML version deleted]]


--===============1810964556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1810964556==--

            

al
�rp �bh da