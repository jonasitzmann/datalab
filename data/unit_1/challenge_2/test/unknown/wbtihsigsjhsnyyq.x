From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 04:25:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5G8PbL9011963
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 04:25:38 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5G8PBRm004287;
	Sat, 16 Jun 2007 10:25:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from hoboi3bl4.telenet-ops.be (hoboi3bl4.telenet-ops.be
	[195.130.137.79])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5G8InRw002488
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 10:18:50 +0200
Received: from hoboe3bl6.telenet-ops.be (hoboe3bl6.telenet-ops.be
	[195.130.136.39])
	by hoboi3bl4.telenet-ops.be (Postfix) with ESMTP id 92C4413C005
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 10:18:49 +0200 (CEST)
Received: from nocme1bl6.telenet-ops.be (localhost.localdomain [127.0.0.1])
	by hoboe3bl6.telenet-ops.be (Postfix) with ESMTP id 7BA373EC0DF
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 10:18:49 +0200 (CEST)
From: "Tine Huyghe" <gdemeyer@telenet.be>
To: r-help@stat.math.ethz.ch
Importance: Normal
Sensitivity: Normal
Message-ID: <W814996257116381181981929@nocme1bl6.telenet-ops.be>
X-Originating-IP: [81.82.179.123]
X-Forwarded-For: [(null)]
Date: Sat, 16 Jun 2007 08:18:49 +0000
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5G8InRw002488
Subject: [R] linear hypothesis test in gls model
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

Dear all,

For analysis of a longitudinal data set with fixed measurement in time I built a gls model (nlme). For testing hypotheses in this model I used the linear.hypothesis function from the car package. A check with the results obtained in SAS proc MIXED with a repeated statement revealed an inconsistency in the results. The problem can be that the linear.hypothesis function (1) only gives the asymptotic chi square test and/or (2) only uses the residual error. Is there another solution to testing linear hypotheses in a gls model?

Thanks in advance

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

g �>73a