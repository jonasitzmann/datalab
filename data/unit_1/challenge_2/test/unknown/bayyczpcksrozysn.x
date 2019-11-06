From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 12:52:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57GqvhB004598
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 12:52:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57GqPgb007165;
	Thu, 7 Jun 2007 18:52:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.168])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57GqINa007134
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 18:52:18 +0200
Received: by ug-out-1314.google.com with SMTP id 36so679805uga
	for <r-help@stat.math.ethz.ch>; Thu, 07 Jun 2007 09:52:17 -0700 (PDT)
Received: by 10.67.118.8 with SMTP id v8mr2154122ugm.1181235137943;
	Thu, 07 Jun 2007 09:52:17 -0700 (PDT)
Received: by 10.66.238.13 with HTTP; Thu, 7 Jun 2007 09:52:17 -0700 (PDT)
Message-ID: <644e1f320706070952n2dc653a7m5d84e627f1bccdf1@mail.gmail.com>
Date: Thu, 7 Jun 2007 12:52:17 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "Guanrao Chen" <guanrao@yahoo.com>
In-Reply-To: <556634.17073.qm@web50610.mail.re2.yahoo.com>
MIME-Version: 1.0
References: <466826C1.6000208@statistik.uni-dortmund.de>
	<556634.17073.qm@web50610.mail.re2.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] aggregate by two columns, "sum" not working while "mean" is
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

This seems to work fine:

> x <- "ca, la, 12
+ ca, sd, 22
+ ca, la, 33
+ nm, al, 9
+ ma, lx, 18
+ ma, bs, 90
+ ma, lx, 22
+ "
> table <- read.csv(textConnection(x), header=FALSE)
> aggregate(table$V3,list(table$V1,table$V2),mean)
  Group.1 Group.2    x
1      nm      al  9.0
2      ma      bs 90.0
3      ca      la 22.5
4      ma      lx 20.0
5      ca      sd 22.0
> aggregate(table$V3,list(table$V1,table$V2),sum)
  Group.1 Group.2  x
1      nm      al  9
2      ma      bs 90
3      ca      la 45
4      ma      lx 40
5      ca      sd 22
>



On 6/7/07, Guanrao Chen <guanrao@yahoo.com> wrote:
>
> Dear Fellow Rers,
>
> I have a table looks like this:
>
> ca, la, 12
> ca, sd, 22
> ca, la, 33
> nm, al, 9
> ma, lx, 18
> ma, bs, 90
> ma, lx, 22
>
> I want to sum the 3rd column grouped by the first and
> the second column, so the result look like this table:
>
> ca, la, 45 <
> ca, sd, 22
> nm, al, 9
> ma, lx, 40 <
> ma, bs, 90
>
> The two rows with < are sums.
>
> I tried
> aggregate(table,list(table$V1,table$V2),sum/mean), sum
> was not working while mean worked.
>
> Can anybody give a hint?
>
> Thanks.
> Guanrao
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>



-- 
Jim Holtman
Cincinnati, OH
+1 513 646 9390

What is the problem you are trying to solve?

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

.-a8	t
bR_