From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 11:10:51 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51FAnhB011343
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 11:10:50 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51F9Nwp020766;
	Fri, 1 Jun 2007 17:09:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.9 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51F7FCo019939
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 17:07:16 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1Hu8ig-0005I5-NN
	for r-help@stat.math.ethz.ch; Fri, 01 Jun 2007 08:07:14 -0700
Message-ID: <10913978.post@talk.nabble.com>
Date: Fri, 1 Jun 2007 08:07:14 -0700 (PDT)
From: Mike Meredith <mmeredith@wcs.org>
To: r-help@stat.math.ethz.ch
In-Reply-To: <Pine.LNX.4.64.0706011431460.2100@gannet.stats.ox.ac.uk>
MIME-Version: 1.0
X-Nabble-From: mmeredith@wcs.org
References: <10906614.post@talk.nabble.com>
	<59d7961d0706010158t5f1ff661r51c5675edefd4cb8@mail.gmail.com>
	<Pine.LNX.4.64.0706011007550.25961@gannet.stats.ox.ac.uk>
	<10910245.post@talk.nabble.com>
	<Pine.LNX.4.64.0706011431460.2100@gannet.stats.ox.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Getting names of objects passed with "..."
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



Thanks very much to all of you. It looks like 'match.call' is the key, and
both Brian's and Gabor's solutions work fine. --- Mike.
-- 
View this message in context: http://www.nabble.com/Getting-names-of-objects-passed-with-%22...%22-tf3850318.html#a10913978
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

t-n0dsa�uDe�