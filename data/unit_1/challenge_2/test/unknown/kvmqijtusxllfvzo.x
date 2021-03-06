From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 14:31:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55IVEhB012414
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 14:31:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55ITXDx025847;
	Tue, 5 Jun 2007 20:30:03 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, WEIRD_PORT autolearn=no version=3.2.0
Received: from wx-out-0506.google.com (wx-out-0506.google.com [66.249.82.239])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55ITR0e025818
	for <R-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 20:29:27 +0200
Received: by wx-out-0506.google.com with SMTP id s19so1752338wxc
	for <R-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 11:29:26 -0700 (PDT)
Received: by 10.90.51.17 with SMTP id y17mr5391463agy.1181068166112;
	Tue, 05 Jun 2007 11:29:26 -0700 (PDT)
Received: by 10.90.115.5 with HTTP; Tue, 5 Jun 2007 11:29:26 -0700 (PDT)
Message-ID: <8d5a36350706051129j70f4c5e9g278522d7f206c7da@mail.gmail.com>
Date: Tue, 5 Jun 2007 14:29:26 -0400
From: "bogdan romocea" <br44114@gmail.com>
To: waverley.paloalto@gmail.com
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <R-help@stat.math.ethz.ch>
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

With regards to your concern - export the R object to a MySQL table
(the RMySQL documentation tells you how), then run an inner join. Or
if the table to query isn't that big, pull it in R and subset it with
%in%. You could use system.time() to see which runs faster.


> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Waverley
> Sent: Tuesday, June 05, 2007 1:49 PM
> To: Chris Stubben
> Cc: r-help@stat.math.ethz.ch
> Subject: Re: [R] RMySQL question, sql with R vector or list
>
> Thanks Chris.
>
> I think this should work.  I have one more question regarding
> this.  Is that
> possible to write some PL/SQL scripts integrated inside R, it
> is the same
> token like I have asked in my previous question.  In this
> way, native R data
> structures can be passed to the MYSQL data base directly to
> interrogate
> dynamically, rather than statically like using paste.  One
> concern using
> paste to construct the SQL command is this: what about if the
> ID list in
> your sample becomes very large, is this a problem to
> construct this way?
>
> I will try to follow your advice but I hope someone on the
> mailing list can
> teach me how to integrate R data structure with MYSQL like PL/SQL.
>
> Thanks much.
>
> Bruce
>
>
> On 6/5/07, Chris Stubben <stubben@lanl.gov> wrote:
> >
> >
> > > I am trying to write a RMySQL sql script inside R such
> that part of the
> > SQL
> > > would be R list or vector.  For example, I want to select
> * from Atable
> > > where ID would equal to a members of R list or vector of "1, 2,
> > 3".  Here
> > > the ID list was generated inside R and then try to feed
> to mysql to call
> > to
> > > get additional data sets.
> > >
> >
> >
> > You could pass a comma-separated list of IDs to the sql IN operator
> >
> >
> > ## in MySQL
> >
> > CREATE table tmp (id int, name char(1));
> > insert into tmp values (1, "A"), (2, "B"), (3, "C"), (4,
> "D"), (5, "E");
> >
> >
> >
> > ### in R
> >
> >
> > library(RMySQL)
> >
> > con <- dbConnect("MySQL",  dbname="test" )
> >
> >
> > id.in<-function(ids)
> > {
> > dbGetQuery(con,   paste("select * from tmp
> > where id IN (", paste(ids,collapse=","), ")")  )
> > }
> >
> >
> >
> > id.in(2:4)
> > id name
> > 1  2    B
> > 2  3    C
> > 3  4    D
> >
> >
> > ## simple lists also work
> >
> > id.in(list(1,4,5))
> > id name
> > 1  1    A
> > 2  4    D
> > 3  5    E
> >
> >
> > Chris
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide
> > http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
> >
>
>
>
> --
> Waverley @ Palo Alto
>
> [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

R 0cspea
