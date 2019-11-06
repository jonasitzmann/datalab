From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 14:14:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65IE4L9029566
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 14:14:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65IDJkO003976;
	Thu, 5 Jul 2007 20:13:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	MSGID_FROM_MTA_HEADER autolearn=no version=3.2.0
Received: from vscane-c.ucl.ac.uk (vscane-c.ucl.ac.uk [144.82.108.43])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65I2srF032366
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 20:02:54 +0200
Message-Id: <200707051802.l65I2srF032366@hypatia.math.ethz.ch>
Received: from klockyear.arch.ucl.ac.uk ([128.40.195.57]
	helo=Krisravitsa.ucl.ac.uk)
	by vscane-c.ucl.ac.uk with esmtpsa (TLSv1:AES256-SHA:256) (Exim 4.60)
	(envelope-from <k.lockyear@ucl.ac.uk>) id 1I6VfG-0000pK-Sr
	for r-help@stat.math.ethz.ch; Thu, 05 Jul 2007 19:02:50 +0100
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
Date: Thu, 05 Jul 2007 19:02:51 +0100
To: r-help@stat.math.ethz.ch
From: Kris Lockyear <k.lockyear@ucl.ac.uk>
Mime-Version: 1.0
X-UCL-MailScanner-Information: Please contact the UCL Helpdesk,
	helpdesk@ucl.ac.uk for more information
X-UCL-MailScanner: Found to be clean
X-UCL-MailScanner-From: k.lockyear@ucl.ac.uk
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] test of CA axis
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

Dear All,

I am not a statistician, and was wondering if anyone could help me 
with the following.

Greenacre, in his Correspondence Analysis in Practice (1993, p.173) 
gives a method for testing the significance of an axis in CA where:

$\chi^2 = \lambda \times n$ where \lambda is the the eigenvalue for 
the principal axis and n is the number of objects in the 
analysis.  The value for \chi^2 is then compared to a table of 
critical values.  The table in his book is a subset of Table 51 in 
Pearson and Hartley 1976, Biometrica Tables for Statisticians vol II, 
described as "Percentage points of the extreme roots of 
$|\text{\textbf{S}}\Sigma^{-1}-c\text{\textbf{I}}|=0$"

Is there an easy way of doing this test in R?  My main problem in 
that Table 51 only gives values for a maximum of a p=10, \nu = 200 
table and mine are regularly much bigger than that (although it would 
be also nice to be able to put in the figures for lambda, n, p and 
\nu and get the probability back).

Many thanks in advance, Kris Lockyear.

Dr Kris Lockyear
Institute of Archaeology
31-34 Zombie Square
London

phone: 020 7679 4568
email: k.lockyear@ucl.ac.uk

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

n:�_/rXa