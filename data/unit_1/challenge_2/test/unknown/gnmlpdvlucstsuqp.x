From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 05:12:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5I9CJL9015943
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 05:12:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5I9AlMs032198;
	Mon, 18 Jun 2007 11:11:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5I9Ae7P032173
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 11:10:41 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I0DFv-0003wk-J1
	for r-help@stat.math.ethz.ch; Mon, 18 Jun 2007 02:10:39 -0700
Message-ID: <11172049.post@talk.nabble.com>
Date: Mon, 18 Jun 2007 02:10:39 -0700 (PDT)
From: Silvia Lomascolo <slomascolo@zoo.ufl.edu>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: slomascolo@zoo.ufl.edu
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] help with panel.lda
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


I work with Windows, R version 2.4.1

I am trying to plot the results of a discriminant analysis done using the
lda function in the MASS library. The discriminant. analysis goes like this:

data.tb<-read.table('C:\\Documents and
Settings\\silvia\\Desktop\\dicrim_test.txt', header=T) ## the actual made-up
test matrix is pasted below
train<-sample (1:36, 15)
table (data.tb$group[train])
data.lda<-lda(group~., data.tb, subset = train)
predict (data.lda, data.tb[-train,])$class

Then I want to obtain a plot by writing: 

>plot(data.lda, cex=0.7, 2, xlab='LD1', ylab='LD2')

but it's not working.  It says that it could not find the function panel. 
When I include panel=panel.lda, it tells me that the object 'panel.lda' was
not found.  All I get is an empty plot in the graphics window.  Was I
supposed to create an object called panel.lda? I cannot find in the help
what that object might be.

Any help would be appreciated.
 
TABLE USED:
   group var1 var2 var3
1      1    3   55    6
2      1    4   66    7
3      1    5   55    8
4      1    4   66    7
5      1    3   44    6
6      1    3   55    5
7      1    3   44    4
8      1    4   44    3
9      1    4   44    7
10     1    4   66    6
11     2    5   88    9
12     2    4   99    8
13     2    8   88    9
14     2    9   76    8
15     2    8   66    9
16     2    9   99   10
17     2   10  100    9
18     2    4   99    9
19     2    8   88    8
20     2    9   76    9
21     2    8   66   10
22     2    9   99    9
23     3    2   11   11
24     3    3   22    2
25     3    1   33    3
26     3    1   11    1
27     3    2   44    2
28     3    3   22    3
29     3    4   11    1
30     3    1   11    1
31     3    2   22    2
32     3    3   33    3
33     3    1   11    1
34     3    1   44    2
35     3    2   22    3
36     3    3   11    1

-- 
View this message in context: http://www.nabble.com/help-with-panel.lda-tf3939027.html#a11172049
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

octod