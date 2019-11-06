From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 09:43:16 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FDhBL9002918
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 09:43:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FDgfqo026537;
	Fri, 15 Jun 2007 15:42:48 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, FRT_LEVITRA autolearn=no version=3.2.0
Received: from mail.goldbox.com (exchclus1.goldbox.com [64.95.15.30])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FDgXxE026495
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 15:42:34 +0200
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.2826
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Fri, 15 Jun 2007 09:42:32 -0400
Message-ID: <0946E293C7C22A45A0E33BA14FAA8D88F38840@500MAIL.goldbox.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Need Help with Dendrogram and DataFrame Leaf names
Thread-Index: AcevUwZyTxtbgFLsTgy7upHtxzLv5w==
Importance: normal
Priority: normal
From: <ngottlieb@marinercapital.com>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5FDgXxE026495
Subject: [R] Need Help with Dendrogram and DataFrame Leaf names
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

I having problem with dendrogram leaf names when I read a tab delimited
file into dataframe;

I have a text file, tab delimited, using read.table into a data frame as
follows:
>  test1<-read.table("c:\\R\\data\\Tremont4.txt", header=TRUE, sep="\t")

When I do this the "test1" data frame is picking up my first column
names as
part of the data and not the case names, the leafs are the numbers on
the left 1-13
As opposed to the text names to the right. 

Example Output from displaying dataframe:
> test1
                 row.names X1.31.2004 X2.29.2004 X3.31.2004 X4.30.2004
X5.31.2004 X6.30.2004 X7.31.2004 X8.31.2004 X9.30.2004 X10.31.2004
1     ConvertibleArbitrage      0.014      0.003      0.004      0.005
-0.013     -0.008     -0.002      0.003     -0.001      -0.003
2       DedicatedShortBias     -0.017      0.003     -0.026      0.042
0.008     -0.013      0.081      0.013     -0.019      -0.018
3          EmergingMarkets      0.025      0.014      0.018     -0.033
-0.018      0.009     -0.001      0.018      0.023       0.024
4            MarketNeutral      0.008      0.008     -0.001     -0.003
0.002      0.008      0.003      0.021      0.005       0.000
5              EventDriven      0.022      0.010      0.005      0.005
0.001      0.010      0.000      0.005      0.013       0.012
6               Distressed      0.024      0.009      0.006      0.007
0.003      0.011      0.005      0.006      0.012       0.019
7  EventdriveMultiStrategy      0.020      0.011      0.003      0.005
-0.001      0.009     -0.003      0.004      0.014       0.007
8            RiskArbitrage      0.008      0.005      0.007     -0.006
0.004      0.003     -0.015      0.002      0.006       0.009
9     FixedIncomeArbitrage      0.012      0.009     -0.005      0.013
0.006      0.007      0.007     -0.004     -0.008       0.011
10             GlobalMacro      0.015      0.012      0.010      0.001
0.001      0.005      0.008     -0.008     -0.005       0.012
11         LongShortEquity      0.020      0.018      0.002     -0.014
-0.004      0.007     -0.014      0.001      0.024       0.014
12          ManagedFutures      0.011      0.069     -0.009     -0.065
-0.011     -0.028     -0.020     -0.015      0.020       0.048
13          Multi-Strategy      0.016      0.004      0.004      0.003
-0.001      0.001     -0.003      0.004      0.006       0.006

Input file looks like this:
row.names	            1/31/2004	  2/29/2004	3/31/2004
4/30/2004	5/31/2004	6/30/2004	7/31/2004
8/31/2004
ConvertibleArbitrage	0.014  	 0.003	0.004	       0.005	-0.013
-0.008	-0.002	0.003
DedicatedShortBias	-0.017	 0.003	-0.026	0.042	       0.008
-0.013	0.081	      0.013
EmergingMarkets	      0.025	       0.014	0.018	     -0.033
-0.018	      0.009	     -0.001	      0.018
MarketNeutral	      0.008	       0.008	-0.001	-0.003	0.002
0.008	      0.003	      0.021
Etc...

Would appreciate why the read.table into dataframe sees the text as part
of the data oand
Not the observation names and is making the numbers the leaf names and
observation names.


Thanks for any help,
Neil Gottlieb
--------------------------------------------------------

 
 
This information is being sent at the recipient's request or...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

 VeyoWooo