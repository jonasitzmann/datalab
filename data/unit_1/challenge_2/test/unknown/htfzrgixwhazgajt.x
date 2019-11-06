From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 10:46:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JEkIL9030568
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 10:46:19 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JEjVRj021987;
	Tue, 19 Jun 2007 16:45:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pegasus.biostat.wisc.edu (pegasus.biostat.wisc.edu
	[144.92.73.35])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JESu9u014825
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 16:28:57 +0200
Received: from [144.92.73.216] (alpaca [144.92.73.216]) (authenticated bits=0)
	by pegasus.biostat.wisc.edu (8.13.6/8.13.6) with ESMTP id
	l5JESfXD005823
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 19 Jun 2007 09:28:46 -0500 (CDT)
Message-ID: <4677E819.8000501@biostat.wisc.edu>
Date: Tue, 19 Jun 2007 09:28:41 -0500
From: Erik Iverson <iverson@biostat.wisc.edu>
User-Agent: Mozilla Thunderbird 1.0.7 (X11/20050923)
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: "Feng, Ken " <ken.feng@citi.com>
References: <0143A263BEF94644AC0D4027373EECD3054309AE@exyhmb08.jpn.nsroot.net>
In-Reply-To: <0143A263BEF94644AC0D4027373EECD3054309AE@exyhmb08.jpn.nsroot.net>
X-BCG-MailScanner-Information: BCG: sysreq@biostat.wisc.edu
X-BCG-MailScanner: Found to be clean
X-BCG-MailScanner-From: iverson@biostat.wisc.edu
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How do I avoid a loop?
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

One more variation on the solution, no idea how it compares in speed.

Using your x ...

 > ifelse(x, unlist(mapply(seq, to = rle(x)$lengths, from = 1)), 0)
[1] 1 2 3 0 0 1 2 0 1

Feng, Ken wrote:
> Hi,
> 
> I start with an array of booleans:
> 
> 	x <- c( TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE );
> 
> I want to define an y <- f(x) such that:
> 
> 	y <- c( 1, 2, 3, 0, 0, 1, 2, 0, 1 );
> 
> In other words, do a cumsum when I see a TRUE, but reset to 0 if I see a FALSE.
> 
> I know I can do this with a very slow and ugly loop or maybe use apply,
> but I was hoping there are some R experts out there who can show me
> a cleaner/more elegant solution?
> 
> Thanks in advance.
> 
> - Ken
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          


 Z :t0vdSnipu