From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 10:53:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56Er5hB022825
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 10:53:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56EqVUd009398;
	Wed, 6 Jun 2007 16:52:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mhub2.bbsrc.ac.uk (mhub2.bbsrc.ac.uk [149.155.202.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56ElQX6006949
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 16:47:30 +0200
Received: from cse2ksrv1.acs.bbsrc.ac.uk ([149.155.100.84])
	by mhub2.bbsrc.ac.uk with esmtp (Exim 4.60)
	(envelope-from <john.seers@bbsrc.ac.uk>)
	id 1HvwlG-0000ya-EQ; Wed, 06 Jun 2007 15:45:22 +0100
Received: from NBIE2KSRV1.nbi.bbsrc.ac.uk ([149.155.210.12]) by
	cse2ksrv1.acs.bbsrc.ac.uk with Microsoft SMTPSVC(6.0.3790.1830);
	Wed, 6 Jun 2007 15:45:22 +0100
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Wed, 6 Jun 2007 15:45:21 +0100
Message-ID: <AAD49F46EAE3F6479E1D46428FAC31CB0181AB11@NBIE2KSRV1.nbi.bbsrc.ac.uk>
In-Reply-To: <10978448.post@talk.nabble.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] R: x-y data
Thread-Index: AceoR4VqCrhxEjRjTCWH1fXCjeZspwAAXWXg
From: "john seers \(IFR\)" <john.seers@bbsrc.ac.uk>
To: "tronter" <pev340002003@yahoo.com>, <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 06 Jun 2007 14:45:22.0308 (UTC)
	FILETIME=[4F7DEC40:01C7A849]
X-ECS-MailScanner-BBSRC: Found to be clean
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l56ElQX6006949
Subject: Re: [R] R: x-y data
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



 
tt<-read.table("C:/temp/test.csv", header=T, sep=",")

# Try:

tt$x
tt$y

# OR

tt["x"]
tt["y"]

# OR

tt[["x"]]
tt[["y"]]

# OR

tt[1]
tt[2] 
tt[[1]]
tt[[2]]

# Is this what you want?



>I have an Excel file with x-y data. I saved this file as a cvs file.
Then I
>used the read.table() function to read the data into R. If I have a
formula
>like (x+y)/2, how would I access x and y in R? I have the table named
as
>something. But how do I access the individual columns if I want to plug
them
>into the formula?

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



 i7Nd )indvl_xk