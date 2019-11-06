From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 15:16:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56JG7hB025318
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 15:16:08 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56JFEOp013244;
	Wed, 6 Jun 2007 21:15:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56IuAPb005628;
	Wed, 6 Jun 2007 21:06:21 +0200
Received: from NIHCESSMTP2.hub.nih.gov (nihcessmtp2.hub.nih.gov
	[128.231.90.116])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56DosVV010850
	for <r-packages@stat.math.ethz.ch>; Wed, 6 Jun 2007 15:50:54 +0200
Received: from NIHCESMLBX5.nih.gov ([156.40.71.205]) by
	NIHCESSMTP2.hub.nih.gov with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 6 Jun 2007 09:50:53 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Wed, 6 Jun 2007 09:50:52 -0400
Message-ID: <31DDB7BE4BF41D4888D41709C476B657062E7696@NIHCESMLBX5.nih.gov>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: New Package: rateratio.test
Thread-Index: AceoQbKQyjU0O+y0S7eh0AHdfsUvHg==
From: "Fay, Michael (NIH/NIAID) [E]" <mfay@niaid.nih.gov>
To: <r-packages@stat.math.ethz.ch>
X-OriginalArrivalTime: 06 Jun 2007 13:50:53.0503 (UTC)
	FILETIME=[B321DCF0:01C7A841]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 06 Jun 2007 20:49:59 +0200
X-BeenThere: r-packages@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Subject: [R] [R-pkgs] New Package: rateratio.test
X-BeenThere: r-help@stat.math.ethz.ch
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

Hi,

I just uploaded a new package rateratio.test. The package contains one function of the same name and it performs an exact rate ratio test for Poisson counts.  Unlike binom.test and fisher.test the p-values and confidence intervals are internally consistent. In other words, if the p-value implies that the null hypothesis should be rejected, then the confidence interval also implies that the null should be rejected. There is a vignette discussing this issue.


Mike


******************************************************************
Michael P. Fay, PhD
Mathematical Statistician
National Institute of Allergy and Infectious Diseases
Tel: 301-451-5124               Fax:301-480-0912
(U.S. postal mail address)                           
6700B Rockledge Drive MSC 7609
Bethesda, MD 20892-7609
(Overnight mail address)
6700-A Rockledge Drive, Room 5133
Bethesda, MD 20817
**********************************************************************

Disclaimer: 

The information in this e-mail and any of its attachments is confidential and may contain sensitive information. It should not be used by anyone who is not the original intended recipient. If you have received this e-mail in error please inform the sender and delete it from your mailbox or any other storage devices. National Institute of Allergy and Infectious Diseases shall not accept liability for any statements made that are sender's own and not expressly made on behalf of the NIAID by one of its representatives



	[[alternative HTML version deleted]]

_______________________________________________
R-packages mailing list
R-packages@stat.math.ethz.ch
https://stat.ethz.ch/mailman/listinfo/r-packages

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

0qS=