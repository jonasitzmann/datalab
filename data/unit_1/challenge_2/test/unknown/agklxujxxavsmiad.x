From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 12:48:03 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57Gm2hB004563
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 12:48:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57GkM6d004496;
	Thu, 7 Jun 2007 18:46:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=AWL, BAYES_99, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web50610.mail.re2.yahoo.com (web50610.mail.re2.yahoo.com
	[206.190.38.249])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l57Gk6Nr004429
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 18:46:06 +0200
Received: (qmail 26417 invoked by uid 60001); 7 Jun 2007 16:46:05 -0000
X-YMail-OSG: 9a8ZzoYVM1k1ag6feLNgTow7YVwJryzP5VVt1SNkXlaOuHPYX6TujhNmmgrJ7Qna7.8YJBnX0PNohN0zrOTgZjEzeVbel5WRN3GA4hsguTZ9ypxgwhM-
Received: from [151.138.254.21] by web50610.mail.re2.yahoo.com via HTTP;
	Thu, 07 Jun 2007 09:46:05 PDT
Date: Thu, 7 Jun 2007 09:46:05 -0700 (PDT)
From: Guanrao Chen <guanrao@yahoo.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <466826C1.6000208@statistik.uni-dortmund.de>
MIME-Version: 1.0
Message-ID: <556634.17073.qm@web50610.mail.re2.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R]  aggregate by two columns, "sum" not working while "mean" is
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

Dear Fellow Rers,

I have a table looks like this:

ca, la, 12
ca, sd, 22
ca, la, 33
nm, al, 9
ma, lx, 18
ma, bs, 90
ma, lx, 22

I want to sum the 3rd column grouped by the first and
the second column, so the result look like this table:

ca, la, 45 <
ca, sd, 22
nm, al, 9
ma, lx, 40 <
ma, bs, 90

The two rows with < are sums.

I tried
aggregate(table,list(table$V1,table$V2),sum/mean), sum
was not working while mean worked.

Can anybody give a hint?

Thanks.
Guanrao

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

tser9I=dc