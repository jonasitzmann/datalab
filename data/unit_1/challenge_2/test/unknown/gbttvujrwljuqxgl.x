From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 15:25:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55JP6hB012937
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 15:25:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55JMsuW010705;
	Tue, 5 Jun 2007 21:23:32 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME, RCVD_NUMERIC_HELO,
	SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55JMXsf010578
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 21:22:34 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HveRe-0002bR-Nb
	for r-help@stat.math.ethz.ch; Tue, 05 Jun 2007 21:11:54 +0200
Received: from 128.165.72.162 ([128.165.72.162])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 21:11:54 +0200
Received: from stubben by 128.165.72.162 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 21:11:54 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Chris Stubben <stubben@lanl.gov>
Date: Tue, 5 Jun 2007 18:53:40 +0000 (UTC)
Lines: 24
Message-ID: <loom.20070605T204314-148@post.gmane.org>
References: <8ee9d8f20706041450l429142f6w7d75e47585362f6d@mail.gmail.com>
	<loom.20070605T172845-377@post.gmane.org>
	<8ee9d8f20706051048xd78b277k403194ad4d32c80f@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 128.165.72.162 (Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O;
	en-US; rv:1.7.6) Gecko/20050225 Firefox/1.0.1)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
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

> dynamically, rather than statically like using paste.  One concern using
> paste to construct the SQL command is this: what about if the ID list in
> your sample becomes very large, is this a problem to construct this way?
> 


I have not messed with procedures in mysql 5, so I have no idea about the first
question.  However, the IN operator should be fast, even for large vectors.   
It takes me a second to retrieve 10,000 random records from a table with
100,000+ rows.

system.time(id.in( sample(1:100000, 10000) ))[3]
[1] 1.07


Also, I forgot to mention this before -  if your ID is a character field, you
can quote strings in the IN clause using the shell quote function.

paste(shQuote(ids),collapse=",")

Chris

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

o1s e3-YD-.U