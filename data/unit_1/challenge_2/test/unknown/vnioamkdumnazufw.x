From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 00:41:13 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5E4fCL9016362
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 00:41:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E4dnMu005053;
	Thu, 14 Jun 2007 06:40:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED,
	RCVD_IN_BSP_TRUSTED autolearn=ham version=3.2.0
Received: from act-MTAout3.csiro.au (act-MTAout3.csiro.au [150.229.7.39])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E4dbbU005015
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 06:39:39 +0200
X-IronPort-AV: E=Sophos;i="4.16,418,1175436000"; d="scan'208";a="162838695"
Received: from exgw1-mel.nexus.csiro.au ([138.194.3.56])
	by act-ironport-int.csiro.au with ESMTP; 14 Jun 2007 14:39:35 +1000
Received: from EXQLD2-BNE.nexus.csiro.au ([140.253.131.52]) by
	exgw1-mel.nexus.csiro.au with Microsoft SMTPSVC(5.0.2195.6713); 
	Thu, 14 Jun 2007 14:39:36 +1000
X-MimeOLE: Produced By Microsoft Exchange V6.0.6619.12
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Thu, 14 Jun 2007 14:39:35 +1000
Message-ID: <80C7911E901E7E4797B3F88D106CB25D0E81CF@exqld2-bne.nexus.csiro.au>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: blotched y-axis text in plot function
Thread-Index: AceuPgHeoH8mKn2YRvKzcHY8eDwcLA==
From: <Alexander.Herr@csiro.au>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 14 Jun 2007 04:39:36.0125 (UTC)
	FILETIME=[02C886D0:01C7AE3E]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5E4dbbU005015
Subject: [R] blotched y-axis text in plot function
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

Hi List,

I have recently upgraded to opensuse10.2 and R 2.5 (compiled from
source). Now, whenever I use plot the y-axis and labels are black
blotches while x-axis and labels are fine. 

Using demo(graphics) this occurs with plot/boxplot/hist/pairs/coplot but
not in the pie graphs and in the "The level of Interest in R" plot,
which uses axis to define the y-axis.

I presume this has to do with the font handling of linux/R. But, being
not a linux guru I am at your mercy to help me trace and fix this
problem.

Any help appreciated
Cheers Herry


Dr Alexander Herr - Herry
Spatial and statistical analyst
CSIRO, Sustainable Ecosystems
Davies Laboratory,
University Drive, Spielas, QLD 4814 
Private Mail Bag, Aitkenvale, QLD 4814
 
Phone/www 
(07) 4753 8510; 4753 8650(fax)
Home: http://herry.ausbats.org.au
Webadmin ABS: http://ausbats.org.au
Sustainable Ecosystems: http://www.cse.csiro.au/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

iw rr