From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 16:01:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54K1ShB032183
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 16:01:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54K0gx5026189;
	Mon, 4 Jun 2007 22:00:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mopmsgoa01.pfizer.com (mopmsgo.pfizer.com [148.168.100.84])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54K0Y5e026156
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 4 Jun 2007 22:00:35 +0200
Received: from mopamrexc03.amer.pfizer.com (mopamrexc03.pfizer.com
	[170.116.30.69])
	by mopmsgoa01.pfizer.com (8.13.7/8.13.7) with ESMTP id l54K0WK8006045; 
	Mon, 4 Jun 2007 16:00:32 -0400
Received: from mopamrexc01.amer.pfizer.com ([170.116.32.254]) by
	mopamrexc03.amer.pfizer.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 4 Jun 2007 16:00:32 -0400
Received: from groamrexm03.amer.pfizer.com ([10.128.42.23]) by
	mopamrexc01.amer.pfizer.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 4 Jun 2007 16:00:31 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Mon, 4 Jun 2007 16:00:30 -0400
Message-ID: <71257D09F114DA4A8E134DEAC70F25D3088B08FB@groamrexm03.amer.pfizer.com>
In-Reply-To: <46645DAF.7080307@gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] naiveBayes other than e1071
Thread-Index: Acem2MpeO1jxkOclRIKR8CAivKQIfAAB7iJA
From: "Kuhn, Max" <Max.Kuhn@pfizer.com>
To: "Saeed Abu Nimeh" <sabunime@gmail.com>, <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 04 Jun 2007 20:00:31.0980 (UTC)
	FILETIME=[01B562C0:01C7A6E3]
X-Proofpoint-Virus-Version: vendor=fsecure engine=4.65.5502:2.3.11, 1.2.37,
	4.0.164 definitions=2007-06-04_06:2007-06-04, 2007-06-04,
	2007-06-04 signatures=0
X-Proofpoint-Spam-Reason: safe
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l54K0Y5e026156
Subject: Re: [R] naiveBayes other than e1071
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

Saeed,

There is a version in the klaR package. I recently submitted a change to
the predict function that may be related to your problem. 

If:

  1. the posterior probabilities (apart from the prior) are being
approximated by the product of the p(x_i|y_j) and

  2. a lot of predictors are being used

then posterior probabilities may have values of absolute zero. 

When the approximation is used, the approximate posterior probabilities
are normalized by their sum (which is zero in such cases).

The patch in klaR uses the product of the conditional divided by the
marginal of x_i (per the true formula). I haven't seen the problem occur
with this patch.

HTH,

Max

-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Saeed Abu Nimeh
Sent: Monday, June 04, 2007 2:45 PM
To: r-help@stat.math.ethz.ch
Subject: [R] naiveBayes other than e1071

Hi List,
Is there a naiveBayes interface other than the one in e1071 package. For
some reason on certain datasets all predicted values are NaN, but it
predicts well on others.
Thanks,
Saeed
---
model <- naiveBayes(x.train, y.train, laplace = 3)
pred <- predict(model,x.test,type="raw")

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide
http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

----------------------------------------------------------------------
LEGAL NOTICE\ Unless expressly stated otherwise, this messag...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

5s�ceji