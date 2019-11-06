From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 03:47:45 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C7liL9023685
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 03:47:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C7k3Yh001947;
	Tue, 12 Jun 2007 09:46:28 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from bay0-omc3-s2.bay0.hotmail.com (bay0-omc3-s2.bay0.hotmail.com
	[65.54.246.202])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C7jrho001862
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 09:45:54 +0200
Received: from hotmail.com ([65.55.155.110]) by bay0-omc3-s2.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Tue, 12 Jun 2007 00:45:53 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Tue, 12 Jun 2007 00:45:52 -0700
Message-ID: <BAY144-F30F880C1D577C8564FB8C0A2190@phx.gbl>
Received: from 65.55.155.123 by by144fd.bay144.hotmail.msn.com with HTTP;
	Tue, 12 Jun 2007 07:45:52 GMT
X-Originating-IP: [132.234.251.211]
X-Originating-Email: [tsang0323@hotmail.com]
X-Sender: tsang0323@hotmail.com
From: "Charlie Chi" <tsang0323@hotmail.com>
To: r-help@stat.math.ethz.ch
Date: Tue, 12 Jun 2007 07:45:52 +0000
Mime-Version: 1.0
X-OriginalArrivalTime: 12 Jun 2007 07:45:52.0924 (UTC)
	FILETIME=[B3D935C0:01C7ACC5]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Data transformation for chi-square test.
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
Content-Type: multipart/mixed; boundary="===============0777463002=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0777463002==
Content-Type: text/plain; charset=big5; format=flowed

Dear all R users
:
I am a IT student with few statistical background and new R user for only 
have  two month exprience. I have a data named medcost, import by 
read.table() as follow for example (real dataset has 500 cases), the 
heander id means case id, member means members in a family and cost is the 
family pay for medical cost every 6 months.

id        member               cost
1         4                          320
2         2                          150
3         3                          420
4         5                          330
5         6                          540
6         2                          310
7         4                          169
8         6                          647
9         3                          347
10       4                          567

I would like to use this dataset with chi-sqare analysis to see if there is 
any realationship between family member and medical cost (more members in a 
family will rise their medical cost?) I have found the pacage called stats, 
but I think need to transform the dataset into a contingency table as I 
read from books. I am not sure if I correct, I think the table should looks 
like:
                      member
cost                [2]      [3]     [4]     [5]     [6]     Total
[0,100]           1         0        0        0       0          1
[100,200]       0         0        1        0       0          1
[200,300]       0         0        0        0       0          0
[300,400]       1         1        1        1       0          4
[400,500]       0         1        0        0       0          1
[500,600]       0         0        1        0       1          2
[600,700]       0         0        0        0       1          1
Total              2          2       3         1       2         10

I did try to use the method in chapter 5.0 of "R Introduction" to create 
freqency table, but it did not work. I am wondering if any one can help me 
with it? Thank you for your help.

Regards

Charlie
.


--===============0777463002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0777463002==--

                  

4Bo7