From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 18:17:57 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56MHuhB026862
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 18:17:57 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56MGs40015205;
	Thu, 7 Jun 2007 00:17:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, DKIM_SIGNED, DKIM_VERIFIED,
	HTML_MESSAGE, SARE_URI_EQUALS autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.180])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56Ls96v002856
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 23:54:09 +0200
Received: by wa-out-1112.google.com with SMTP id j37so407483waf
	for <r-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 14:54:08 -0700 (PDT)
Received: by 10.114.24.1 with SMTP id 1mr829329wax.1181166848288;
	Wed, 06 Jun 2007 14:54:08 -0700 (PDT)
Received: by 10.114.155.6 with HTTP; Wed, 6 Jun 2007 14:54:08 -0700 (PDT)
Message-ID: <8ee9d8f20706061454l749c624ew3332f888de93211f@mail.gmail.com>
Date: Wed, 6 Jun 2007 14:54:08 -0700
From: Waverley <waverley.paloalto@gmail.com>
To: "Chris Stubben" <stubben@lanl.gov>
In-Reply-To: <loom.20070606T223428-219@post.gmane.org>
MIME-Version: 1.0
References: <8ee9d8f20706060944v5b05216fl6bc3246321a89f0d@mail.gmail.com>
	<loom.20070606T223428-219@post.gmane.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Question: RMySQL bulk load/update one column,
	dbWriteTable()?
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

Thanks Chris.  I am trying almost the same solution while I have failed the
dbWriteTable.

The problem of using update is that it is way TOO slow when the row size is
~200000.

That is why I hope I can still get dbWriteTable way to add one column.
dbWriteTable is very efficient and fast.  The problem of dbWriteTable, so
far I know and so far I have read, is that you have to load one data frame
which covers all the columns of one table.  Now I want to do is bulky load
one column in stead of ALL columns.  Supposedly underneath dbWriteTable is
"load data infile", which according to my reading should allow you to load
data infile to one table column.

can someone help?

Thanks.


On 6/6/07, Chris Stubben <stubben@lanl.gov> wrote:
>
>
> > I have a question reading using RMySQL trying to load one R vector into
> a
> > table column.  To be more specifically, the table is there
> populated.  Now I
> > add a new column and want to populate this.
> >
>
>
> Okay, this is more of an SQL question now, but you could just use
> dbWriteTable
> and then do an multi-table update.
>
>
>
> dbGetQuery(con, "select * from tmp")
>
> id name
> 1  1    A
> 2  2    B
> 3  3    C
> 4  4    D
> 5  5    E
>
>
> dbSendQuery(con, "alter table tmp add column r2 float")
>
> ## calculate some statistic for all or some ids in table
>
>
> x<-dataframe(id=1:5, r2=c(.1, .4, .9, .4,.7))
>
>
> dbWriteTable(con, "r2tmp",  x )
>
>
> dbSendQuery(con, "update tmp t, r2tmp r set t.r2=r.r2 where t.id=r.id")
>
>
> dbGetQuery(con, "select * from tmp")
>
> id name  r2
> 1  1    A 0.1
> 2  2    B 0.4
> 3  3    C 0.9
> 4  4    D 0.4
> 5  5    E 0.7
>
>
> Chris
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>



-- 
Waverley @ Palo Alto

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



 : eFrie2q