From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 18:41:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56MfkhB027043
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 18:41:46 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56Mdpbd021629;
	Thu, 7 Jun 2007 00:40:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.4 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56MEMNm014182
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 00:14:22 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1Hw3lb-00073m-KV
	for r-help@stat.math.ethz.ch; Thu, 07 Jun 2007 00:14:12 +0200
Received: from pcor-uf228.stanford.edu ([171.64.154.228])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 07 Jun 2007 00:14:11 +0200
Received: from toby909 by pcor-uf228.stanford.edu with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Thu, 07 Jun 2007 00:14:11 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: toby909@gmail.com
Date: Wed, 06 Jun 2007 15:16:24 -0700
Lines: 17
Message-ID: <f47bja$fd4$1@sea.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: pcor-uf228.stanford.edu
User-Agent: Mozilla Thunderbird 1.0.6 (Windows/20050716)
X-Accept-Language: en-us, en
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] opening a file from within a zipfile that is online
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

Hi

Reading the help for ?unz I was wondering if I can read data into R from within 
an zipfile that is on some website, like maybe:

dtaa = 
read.table(unz("http://www.ats.ucla.edu/stat/examples/alsm/alsm.zip","Ch01pr19.dat"))

Thanks for letting me know if you came acros such a thing before.

Toby

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

aprOc+ ego