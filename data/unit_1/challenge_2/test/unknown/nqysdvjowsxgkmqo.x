From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 11:13:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64FD2L9012094
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 11:13:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64FCK5x016868;
	Wed, 4 Jul 2007 17:12:32 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64FCCP2016790
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 17:12:12 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I66WT-0007If-38
	for r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 17:12:05 +0200
Received: from monk.lyon.inserm.fr ([194.57.165.22])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 04 Jul 2007 17:12:05 +0200
Received: from knoblauch by monk.lyon.inserm.fr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 04 Jul 2007 17:12:05 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Ken Knoblauch <knoblauch@lyon.inserm.fr>
Date: Wed, 4 Jul 2007 15:11:59 +0000 (UTC)
Lines: 20
Message-ID: <loom.20070704T171011-929@post.gmane.org>
References: <mailman.11.1183543206.28203.r-help@stat.math.ethz.ch>
	<000101c7be41$7b2a4d30$6501a8c0@kLab>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 194.57.165.22 (Mozilla/5.0 (Macintosh; U; PPC Mac OS X;
	en) AppleWebKit/312.8.1 (KHTML, like Gecko) Safari/312.6)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] A More efficient method?
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

Keith Alan Chamberlain <Keith.Chamberlain <at> Colorado.EDU> writes:
> Cat=c('a','a','a','b','b','b','a','a','b')	# Categorical variable
> C1=vector(length=length(Cat))	# New vector for numeric values

> for(i in 1:length(C1)){
> 	if(Cat[i]=='a') C1[i]=-1 else C1[i]=1
> }
> 
> C1
> [1] -1 -1 -1  1  1  1 -1 -1  1
> Cat
> [1] "a" "a" "a" "b" "b" "b" "a" "a" "b"

 ifelse(Cat == "a", -1, 1)
[1] -1 -1 -1  1  1  1 -1 -1  1

HTH

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

nte4 tSe H