From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 09:05:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58D5vhB015463
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 09:05:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58D4HJd004160;
	Fri, 8 Jun 2007 15:04:27 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: ***
X-Spam-Status: No, score=3.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, RCVD_NUMERIC_HELO,
	SPF_HELO_PASS autolearn=no version=3.2.0
Received: from hypatia.math.ethz.ch (localhost [127.0.0.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58CgXaT029476
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 14:42:33 +0200
Received: (from root@localhost)
	by hypatia.math.ethz.ch (8.13.6/8.13.6/Submit) id l58CgXYH029473
	for r-help; Fri, 8 Jun 2007 14:42:33 +0200
Received: from NIHCESSMTP.hub.nih.gov (nihcessmtp.hub.nih.gov [128.231.90.115])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57ElHdB029284
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 16:47:17 +0200
Received: from NIHCESMLBX2.nih.gov ([156.40.71.202]) by NIHCESSMTP.hub.nih.gov
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 7 Jun 2007 10:47:11 -0400
Received: from 156.40.71.188 ([156.40.71.188]) by NIHCESMLBX2.nih.gov
	([156.40.71.202]) via Exchange Front-End Server mail.nih.gov
	([156.40.71.167]) with Microsoft Exchange Server HTTP-DAV ; 
	Thu,  7 Jun 2007 14:47:11 +0000
Received: from gestalt by mail.nih.gov; 07 Jun 2007 10:47:11 -0400
From: Alan S Barnett <asb@mail.nih.gov>
To: r-help@stat.math.ethz.ch
Organization: NIMH/CBDB
Date: Thu, 07 Jun 2007 10:47:10 -0400
Message-Id: <1181227630.6917.12.camel@gestalt.nimh.nih.gov>
Mime-Version: 1.0
X-Mailer: Evolution 2.0.2 (2.0.2-34.el4) 
X-OriginalArrivalTime: 07 Jun 2007 14:47:11.0755 (UTC)
	FILETIME=[BB23F5B0:01C7A912]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Mailman-Approved-At: Fri, 08 Jun 2007 14:58:03 +0200
Subject: [R] rlm results on trellis plot
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: asb@mail.nih.gov
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

How do I add to a trellis plot the best fit line from a robust fit? I
can use panel.lm to add a least squares fit, but there is no panel.rlm
function.
-- 
Alan S Barnett <asb@mail.nih.gov>
NIMH/CBDB

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

\T:_rm$du <