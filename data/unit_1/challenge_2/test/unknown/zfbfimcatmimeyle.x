From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 10:53:29 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EErSL9023090
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 10:53:28 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EEqkJn029396;
	Thu, 14 Jun 2007 16:53:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from UTHEVS2.mail.uthouston.edu (uthexch1f.hsc.uth.tmc.edu
	[129.106.9.98])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EEWx76023504
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 16:33:00 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Thu, 14 Jun 2007 09:32:57 -0500
Message-ID: <4677FCB5A35A0441A0E0C99D56B23D910777FEBA@UTHEVS2.mail.uthouston.edu>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Problems with na.rm=T
Thread-Index: AceukOdOMlwbTbRAQESSbn6cixsFHg==
From: "Lucke, Joseph F" <Joseph.F.Lucke@uth.tmc.edu>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Problems with na.rm=T
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

Suddenly (e.g. yesterday) all my functions that have "na.rm=" as a
parameter (e.g., mean(), sd(), range(), etc.) have been reporting
warnings with "na.rm=T". The message is "Warning message: the condition
has length > 1 and only the first element will be used in: if (na.rm) x
<- x[!is.na(x)] ".   This has never happened before.  I don't recall
having done anything that might generate this message.  How do I fix
this?
Joe

Joseph F. Lucke, PhD
Biostatistician
Center for Clinical Research and Evidence-based Medicine
Department of Pediatrics
School of Medicine
University of Texas Health Science Center at Houston
Voice: 713-500-5651
Email: Joseph.F.Lucke@uth.tmc.edu
Postal Mail: PO Box 20708, Houston, TX 77225-0708
 
 

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

- Bony
