From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 09:54:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LDsVL9024642
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 09:54:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LDrmk4029072;
	Thu, 21 Jun 2007 15:53:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.181])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LDrfnV029034
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 15:53:41 +0200
Received: by wa-out-1112.google.com with SMTP id j37so333170waf
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 06:53:40 -0700 (PDT)
Received: by 10.115.75.1 with SMTP id c1mr1629211wal.1182434020399;
	Thu, 21 Jun 2007 06:53:40 -0700 (PDT)
Received: by 10.114.94.4 with HTTP; Thu, 21 Jun 2007 06:53:40 -0700 (PDT)
Message-ID: <da0aac0706210653r40de2dd5m7e6cd2d2ec321922@mail.gmail.com>
Date: Thu, 21 Jun 2007 09:53:40 -0400
From: "Economics Guy" <economics.guy@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] generating a new variable based on results of a by command
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

I have a matrix with a set of variables one of which is a factor. Using by()
I have calculated something about each group (say the sum). Now I want to
create a new variable in the original matrix that contains the results of
the by() for each observation that is in the corresponding group.

For example I have:

---------

a <-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)

b <-c(7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22)

e <-c("A","B","C","D","E","F","A","B","C","D","E","F","D","E","F","A")

f <-data.frame(e,a,b)

# Calculate sum by group

sums <- by(f, e, function(x) sum(x$b))

-----------

Now I would like to assign each observation in f a new variable based on the
results of the by(). I converted sums into a matrix and then tried using
match() and ifthen() but could not get it to work.

Thanks,

EG

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

bwaz s8dFCo