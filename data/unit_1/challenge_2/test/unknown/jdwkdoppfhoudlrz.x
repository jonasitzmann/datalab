From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 10:22:10 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55EM8hB009947
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 10:22:09 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55ELYXa031060;
	Tue, 5 Jun 2007 16:21:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pastel.toulouse.inra.fr (pastel.toulouse.inra.fr
	[147.99.111.242])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55EKhrn030835
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 16:20:43 +0200
Received: from [147.99.96.190] (camboue.toulouse.inra.fr [147.99.96.190])
	by pastel.toulouse.inra.fr (/8.13.7) with ESMTP id l55EKg6a000809
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 16:20:42 +0200 (MEST)
Message-ID: <46657111.4060908@toulouse.inra.fr>
Date: Tue, 05 Jun 2007 16:20:01 +0200
From: Laurence Amilhat <Laurence.Amilhat@toulouse.inra.fr>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Greylist: Sender DNS name whitelisted, not delayed by milter-greylist-1.6
	(pastel.toulouse.inra.fr [147.99.111.242]);
	Tue, 05 Jun 2007 16:20:42 +0200 (MEST)
X-Miltered: at pastel with ID 4665713A.001 by Joe's j-chkmail
	(http://j-chkmail.ensmp.fr)!
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Virus-Status: Clean
Subject: [R] odfTable
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
Content-Type: text/plain; charset="windows-1252"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l55EM8hB009947

Hello,

I am using the odfWeave packages;
I draw a table using the function odfTable:

partCols <- gsub(�\\.�, � �, names(partenaires))
odfTable(partenaires, useRowNames = FALSE, colnames=partCols)


it's working as I have a table in my output file.
I would like to know how to change the background color for the header 
cells.
I assuming i have to use tableStyles, but I don't understand how.

Does someone have an idea to help me?

Thank you,

Laurence Amilhat.

-- 
====================================================================
= Laurence Amilhat    INRA Toulouse 31326 Castanet-Tolosan     	   = 
= Tel: 33 5 61 28 53 34   Email: laurence.amilhat@toulouse.inra.fr =

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

ia6 