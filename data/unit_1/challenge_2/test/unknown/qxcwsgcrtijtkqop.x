From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 05:31:41 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5F9VWL9032082
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 05:31:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F9Tk58003639;
	Fri, 15 Jun 2007 11:30:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F9Tcq1003579
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 11:29:39 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1Hz87d-00087e-HH
	for r-help@stat.math.ethz.ch; Fri, 15 Jun 2007 02:29:37 -0700
Message-ID: <11135888.post@talk.nabble.com>
Date: Fri, 15 Jun 2007 02:29:37 -0700 (PDT)
From: billycorg <billycorg1@virgilio.it>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: billycorg1@virgilio.it
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] problems with matrix, list and other..
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


hi

can anyone help me to solve these problems?

i have:
1) "d" matrix with 1096 rows;
for example, 
d[2]=        
                   [,1]           [,2]          [,3]
[1,] 0.1192566 0.0000000 0.0000000
[2,] 0.0000000 0.1065938 0.0000000
[3,] 0.0000000 0.0000000 0.1038888

if I
class (d[2]) = "list" 
solve(d[2]) = error!!!

2) "e" list ;
for example
e[2]2=
[[1]]
[1] -1.0892216 -0.7304947 -1.2883680

d[2]%*%t(e[2])
this is the error: requires numeric matrix/vector arguments

i've tried to coerce "e" to a matrix, but it's doesn't work...

in the end.. i'd like this:
for (i in (1:1096)) {solve(d[i])*t(e[i])}

help me, please :)

Vincenzo
-- 
View this message in context: http://www.nabble.com/problems-with-matrix%2C-list-and-other..-tf3926701.html#a11135888
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

wg2L1eMVa