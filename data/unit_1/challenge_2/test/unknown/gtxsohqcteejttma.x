From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 11:41:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SFfjL9012598
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 11:41:46 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SFemvk020403;
	Thu, 28 Jun 2007 17:41:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from po-smtp4.temple.edu (po-smtp4.temple.edu [155.247.166.232])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SFYpIj017512
	(version=TLSv1/SSLv3 cipher=DES-CBC3-SHA bits=168 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 17:34:52 +0200
Received: from po-d.temple.edu (po-d.temple.edu [155.247.166.222])
	by po-smtp4.temple.edu (MOS 3.8.4-GA) with ESMTP id GWU14281;
	Thu, 28 Jun 2007 11:34:50 -0400 (EDT)
Received: (from po-d.temple.edu [71.242.164.122])
	by po-d.temple.edu (MOS 3.8.2-GA)
	with HTTPS/1.1 id CFE07237 (AUTH rmh);
	Thu, 28 Jun 2007 11:34:48 -0400 (EDT)
From: "Richard M. Heiberger" <rmh@temple.edu>
To: Patrick Bedard <Patrick_Bedard@brown.edu>, r-help@stat.math.ethz.ch
X-Mailer: Mirapoint Webmail Direct 3.8.2-GA
MIME-Version: 1.0
Message-Id: <20070628113448.CFE07237@po-d.temple.edu>
Date: Thu, 28 Jun 2007 11:34:48 -0400 (EDT)
X-Junkmail-Status: score=10/50, host=po-smtp4.temple.edu
X-Junkmail-SD-Raw: score=unknown,
	refid=str=0001.0A090209.4683D51A.00E9:SCFONLINE528566,ss=1,fgs=0,
	ip=155.247.166.222, so=2007-03-13 10:31:19,
	dmn=5.3.14/2007-05-31
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] TukeyHSD
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

TukeyHSD takes an aov object, not an aovlist object.
The result of aov() with an Error() term is an aovlist object.

In the HH package, see ?MMC for an example of how to work
around this limitation.  See the maiz example.

Rich

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

brLe8tOtoS