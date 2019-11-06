From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 13:49:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55HnahB011880
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 13:49:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55Hmwak011375;
	Tue, 5 Jun 2007 19:49:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE,
	WEIRD_PORT autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.177])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55HmaOI011209
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 19:48:37 +0200
Received: by wa-out-1112.google.com with SMTP id j37so2559725waf
	for <r-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 10:48:33 -0700 (PDT)
Received: by 10.115.49.16 with SMTP id b16mr6144408wak.1181065712753;
	Tue, 05 Jun 2007 10:48:32 -0700 (PDT)
Received: by 10.114.155.6 with HTTP; Tue, 5 Jun 2007 10:48:32 -0700 (PDT)
Message-ID: <8ee9d8f20706051048xd78b277k403194ad4d32c80f@mail.gmail.com>
Date: Tue, 5 Jun 2007 10:48:32 -0700
From: Waverley <waverley.paloalto@gmail.com>
To: "Chris Stubben" <stubben@lanl.gov>
In-Reply-To: <loom.20070605T172845-377@post.gmane.org>
MIME-Version: 1.0
References: <8ee9d8f20706041450l429142f6w7d75e47585362f6d@mail.gmail.com>
	<loom.20070605T172845-377@post.gmane.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] RMySQL question, sql with R vector or list
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

Thanks Chris.

I think this should work.  I have one more question regarding this.  Is that
possible to write some PL/SQL scripts integrated inside R, it is the same
token like I have asked in my previous question.  In this way, native R data
structures can be passed to the MYSQL data base directly to interrogate
dynamically, rather than statically like using paste.  One concern using
paste to construct the SQL command is this: what about if the ID list in
your sample becomes very large, is this a problem to construct this way?

I will try to follow your advice but I hope someone on the mailing list can
teach me how to integrate R data structure with MYSQL like PL/SQL.

Thanks much.

Bruce


On 6/5/07, Chris Stubben <stubben@lanl.gov> wrote:
>
>
> > I am trying to write a RMySQL sql script inside R such that part of the
> SQL
> > would be R list or vector.  For example, I want to select * from Atable
> > where ID would equal to a members of R list or vector of "1, 2,
> 3".  Here
> > the ID list was generated inside R and then try to feed to mysql to call
> to
> > get additional data sets.
> >
>
>
> You could pass a comma-separated list of IDs to the sql IN operator
>
>
> ## in MySQL
>
> CREATE table tmp (id int, name char(1));
> insert into tmp values (1, "A"), (2, "B"), (3, "C"), (4, "D"), (5, "E");
>
>
>
> ### in R
>
>
> library(RMySQL)
>
> con <- dbConnect("MySQL",  dbname="test" )
>
>
> id.in<-function(ids)
> {
> dbGetQuery(con,   paste("select * from tmp
> where id IN (", paste(ids,collapse=","), ")")  )
> }
>
>
>
> id.in(2:4)
> id name
> 1  2    B
> 2  3    C
> 3  4    D
>
>
> ## simple lists also work
>
> id.in(list(1,4,5))
> id name
> 1  1    A
> 2  4    D
> 3  5    E
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

 

5F"Ik