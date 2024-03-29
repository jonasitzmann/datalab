From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 17:57:27 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64LvPL9016009
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 17:57:26 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64LtW6W020493;
	Wed, 4 Jul 2007 23:56:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mica.fhcrc.org (MICA.FHCRC.ORG [140.107.152.12])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64LtJcc020414
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 23:55:21 +0200
Received: from gopher4.fhcrc.org (GOPHER4.FHCRC.ORG [140.107.170.154])
	by mica.fhcrc.org (8.12.11.20060308/8.12.11/SuSE Linux 0.7) with ESMTP
	id l64LsUY2028663; Wed, 4 Jul 2007 14:54:30 -0700
Received: by gopher4.fhcrc.org (Postfix, from userid 37962)
	id 9B54D2685D2; Wed,  4 Jul 2007 14:54:30 -0700 (PDT)
To: Peter Dalgaard <p.dalgaard@biostat.ku.dk>
References: <11435994.post@talk.nabble.com> <468BF958.9060102@biostat.ku.dk>
From: Martin Morgan <mtmorgan@fhcrc.org>
Date: Wed, 04 Jul 2007 14:54:30 -0700
In-Reply-To: <468BF958.9060102@biostat.ku.dk> (Peter Dalgaard's message of
	"Wed, 04 Jul 2007 21:47:36 +0200")
Message-ID: <6phy7hv3kdl.fsf@gopher4.fhcrc.org>
User-Agent: Gnus/5.1006 (Gnus v5.10.6) Emacs/21.3 (gnu/linux)
MIME-Version: 1.0
X-PMX-Version: 5.3.2.304607, Antispam-Engine: 2.5.1.298604,
	Antispam-Data: 2007.7.4.144033
X-FHCRC-SCANNED: Wed Jul  4 14:54:40 2007
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, mfrumin <michael@frumin.net>
Subject: Re: [R] Lookups in R
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

Michael,

A hash provides constant-time access, though the resulting perl-esque
data structures (a hash of lists, e.g.) are not convenient for other
manipulations

> n_accts <- 10^3
> n_trans <- 10^4
> t <- list()
> t$amt <- runif(n_trans)
> t$acct <- as.character(round(runif(n_trans, 1, n_accts)))
> 
> uhash <- new.env(hash=TRUE, parent=emptyenv(), size=n_accts)
> ## keys, presumably account ids
> for (acct in as.character(1:n_accts)) uhash[[acct]] <- list(amt=0, n=0)
> 
> system.time(for (i in seq_along(t$amt)) {
+     acct <- t$acct[i]
+     x <- uhash[[acct]]
+     uhash[[acct]] <- list(amt=x$amt + t$amt[i], n=x$n + 1)
+ })
   user  system elapsed 
  0.264   0.000   0.262 
> udf <- data.frame(amt=0, n=rep(0L, n_accts),
+                   row.names=as.character(1:n_accts))
> system.time(for (i in seq_along(t$amt)) {
+     idx <- row.names(udf)==t$acct[i]
+     udf[idx, ] <- c(udf[idx,"amt"], udf[idx, "n"]) + c(t$amt[i], 1)
+ })
   user  system elapsed 
 18.398   0.000  18.394 

Peter Dalgaard <p.dalgaard@biostat.ku.dk> writes:

> mfrumin wrote:
>> Hey all; I'm a beginner++ user of R, trying to use it to do some processing
>> of data sets of over 1M rows, and running into a snafu.  imagine that my
>> input is a huge table of transactions, each linked to a specif user id.  as
>> I run through the transactions, I need to update a separate table for the
>> users, but I am finding that the traditional ways of doing a table lookup
>> are way too slow to support this kind of operation.
>>
>> i.e:
>>
>> for(i in 1:1000000) {
>>    userid = transactions$userid[i];
>>    amt = transactions$amounts[i];
>>    users[users$id == userid,'amt'] += amt;
>> }
>>
>> I assume this is a linear lookup through the users table (in which there are
>> 10's of thousands of rows), when really what I need is O(constant time), or
>> at worst O(log(# users)).
>>
>> is there any way to manage a list of ID's (be they numeric, string, etc) and
>> have them efficiently mapped to some other table index?
>>
>> I see the CRAN package for SQLite hashes, but that seems to be going a bit
>> too far.
>>   
> Sometimes you need a bit of lateral thinking. I suspect that you could 
> do it like this:
>
> tbl <- with(transactions, tapply(amount, userid, sum))
> users$amt <- users$amt + tbl[users$id]
>
> one catch is that there could be users with no transactions, in which 
> case you may need to replace userid by factor(userid, levels=users$id). 
> None of this is tested, of course.
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

-- 
Martin Morgan
Bioconductor / Computational Biology
http://bioconductor.org

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

x7Biezh