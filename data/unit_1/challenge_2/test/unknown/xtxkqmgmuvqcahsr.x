From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 12:35:23 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55GZMhB011236
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 12:35:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55GYmNH014570;
	Tue, 5 Jun 2007 18:35:03 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from gromsgom01.pfizer.com (gromsgo.pfizer.com [148.168.224.84])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55GNF8i010281
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 18:23:16 +0200
Received: from mopamrexc02.amer.pfizer.com (mopamrexc02.pfizer.com
	[170.116.30.68])
	by gromsgom01.pfizer.com (8.13.7/8.13.7) with ESMTP id l55GN9OO010693; 
	Tue, 5 Jun 2007 12:23:14 -0400
Received: from groamrexc02.amer.pfizer.com ([172.30.8.169]) by
	mopamrexc02.amer.pfizer.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 5 Jun 2007 12:23:10 -0400
Received: from groamrexm03.amer.pfizer.com ([10.128.42.23]) by
	groamrexc02.amer.pfizer.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 5 Jun 2007 12:23:07 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 5 Jun 2007 12:22:49 -0400
Message-ID: <71257D09F114DA4A8E134DEAC70F25D3088F80FB@groamrexm03.amer.pfizer.com>
In-Reply-To: <efb536d50706050809h3caca688ob437d90e01324fed@mail.gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] odfTable
Thread-Index: Aceng5PXp+q0taBHTXWapvO0zuyxqQACSInA
From: "Kuhn, Max" <Max.Kuhn@pfizer.com>
To: "Sarah Goslee" <sarah.goslee@gmail.com>,
   "Laurence Amilhat" <Laurence.Amilhat@toulouse.inra.fr>
X-OriginalArrivalTime: 05 Jun 2007 16:23:07.0975 (UTC)
	FILETIME=[CD49ED70:01C7A78D]
X-Proofpoint-Virus-Version: vendor=fsecure engine=4.65.5502:2.3.11, 1.2.37,
	4.0.164 definitions=2007-06-05_07:2007-06-04, 2007-06-05,
	2007-06-05 signatures=0
X-Proofpoint-Spam-Reason: safe
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l55GNF8i010281
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] odfTable
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

Sarah and Laurence,

A few comments:

  1. The default background color for columns is horrible. I've changed
to white it in the upcoming version.

  2. In the next version (in 1-2 weeks), I have a fairly long document
that goes into much more detail about the specific styles that can be
changed and examples.

  3. To simply Sarah's approach, add the style definition via
setStyleDefs(existingStyles) as suggested. Then, just before making the
table, simply use

current <- getStyles()
currrent$header <- "newStyle1"
setStyles(current)

     then produce the table. Unless I'm not understanding what you want,
you shouldn't need to use tableStyles.

If anyone wants the new version while I finish a few of the
documentation pages, send me an email off-list and I'll send it to you.

Thanks,

Max

----------------------------------------------------------------------
LEGAL NOTICE\ Unless expressly stated otherwise, this messag...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

De
ousJodc