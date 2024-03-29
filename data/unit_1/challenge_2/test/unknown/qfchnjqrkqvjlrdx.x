From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 16:59:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56KxrhB026207
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 16:59:55 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56Kwqpu018328;
	Wed, 6 Jun 2007 22:59:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, RCVD_NUMERIC_HELO, SARE_URI_EQUALS,
	SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56KmXWg013915
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 22:48:34 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1Hw2QG-00006q-5P
	for r-help@stat.math.ethz.ch; Wed, 06 Jun 2007 22:48:04 +0200
Received: from 128.165.72.162 ([128.165.72.162])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 22:48:04 +0200
Received: from stubben by 128.165.72.162 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 22:48:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Chris Stubben <stubben@lanl.gov>
Date: Wed, 6 Jun 2007 20:47:43 +0000 (UTC)
Lines: 47
Message-ID: <loom.20070606T223428-219@post.gmane.org>
References: <8ee9d8f20706060944v5b05216fl6bc3246321a89f0d@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 128.165.72.162 (Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O;
	en-US; rv:1.7.6) Gecko/20050225 Firefox/1.0.1)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
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


> I have a question reading using RMySQL trying to load one R vector into a
> table column.  To be more specifically, the table is there populated.  Now I
> add a new column and want to populate this.
> 


Okay, this is more of an SQL question now, but you could just use dbWriteTable
and then do an multi-table update.



dbGetQuery(con, "select * from tmp")

  id name
1  1    A
2  2    B
3  3    C
4  4    D
5  5    E


dbSendQuery(con, "alter table tmp add column r2 float")

## calculate some statistic for all or some ids in table


x<-dataframe(id=1:5, r2=c(.1, .4, .9, .4,.7))


dbWriteTable(con, "r2tmp",  x )


dbSendQuery(con, "update tmp t, r2tmp r set t.r2=r.r2 where t.id=r.id")


dbGetQuery(con, "select * from tmp")

  id name  r2
1  1    A 0.1
2  2    B 0.4
3  3    C 0.9
4  4    D 0.4
5  5    E 0.7


Chris

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

"E p,H6n=