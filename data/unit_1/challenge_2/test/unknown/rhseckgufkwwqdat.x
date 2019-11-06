From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 04:35:54 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5E8ZqL9019136
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 04:35:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E8Y0Wd019118;
	Thu, 14 Jun 2007 10:34:25 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mhub2.bbsrc.ac.uk (mhub2.bbsrc.ac.uk [149.155.202.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E8XoCH019038
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 10:33:50 +0200
Received: from cse2ksrv1.acs.bbsrc.ac.uk ([149.155.100.84])
	by mhub2.bbsrc.ac.uk with esmtp (Exim 4.60)
	(envelope-from <michael.watson@bbsrc.ac.uk>) id 1Hyklz-0001c0-DB
	for r-help@stat.math.ethz.ch; Thu, 14 Jun 2007 09:33:43 +0100
Received: from iahce2ksrv1.iah.bbsrc.ac.uk ([149.155.232.4]) by
	cse2ksrv1.acs.bbsrc.ac.uk with Microsoft SMTPSVC(6.0.3790.1830);
	Thu, 14 Jun 2007 09:33:42 +0100
Content-class: urn:content-classes:message
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft Exchange V6.5
Date: Thu, 14 Jun 2007 09:33:42 +0100
Message-ID: <8975119BCD0AC5419D61A9CF1A923E9504F0D557@iahce2ksrv1.iah.bbsrc.ac.uk>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Difference between prcomp and cmdscale
Thread-Index: AceuXreGBphG0spmTtadkqYXXdf9RA==
From: "michael watson \(IAH-C\)" <michael.watson@bbsrc.ac.uk>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 14 Jun 2007 08:33:42.0893 (UTC)
	FILETIME=[B74F39D0:01C7AE5E]
X-ECS-MailScanner-BBSRC: Found to be clean
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5E8XoCH019038
Subject: [R] Difference between prcomp and cmdscale
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

I'm looking for someone to explain the difference between these
procedures.  The function prcomp() does principal components anaylsis,
and the function cmdscale() does classical multi-dimensional scaling
(also called principal coordinates analysis).

My confusion stems from the fact that they give very similar results:

my.d <- matrix(rnorm(50), ncol=5)
rownames(my.d) <- paste("c", 1:10, sep="")
# prcomp
prc <- prcomp(my.d)
# cmdscale
mds <- cmdscale(dist(my.d))
cor(prc$x[,1], mds[,1]) # produces 1 or -1
cor(prc$x[,2], mds[,2]) # produces 1 or -1

Presumably, under the defaults for these commands in R, they carry out
the same (or very similar) procedures?

Thanks
Mick

The information contained in this message may be confidentia...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

6.VItq kwo