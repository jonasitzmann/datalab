From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 06:54:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57AsQhB001252
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 06:54:27 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57ArBNO015752;
	Thu, 7 Jun 2007 12:53:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from vscane-b.ucl.ac.uk (vscane-b.ucl.ac.uk [144.82.108.141])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57THE00032645
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@lists.R-project.org>; Thu, 7 Jun 2007 12:12:22 +0200
Received: from pix-translab.ucl.ac.uk ([128.40.211.93] helo=James)
	by vscane-b.ucl.ac.uk with esmtpsa (TLSv1:RC4-MD5:128) (Exim 4.60)
	(envelope-from <james.morris@ucl.ac.uk>) id 1HwEya-0003nx-Oa
	for r-help@lists.R-project.org; Thu, 07 Jun 2007 11:12:20 +0100
Message-ID: <00ab01c7a8ec$4f72f2b0$4201a8c0@James>
From: "James Morris" <james.morris@ucl.ac.uk>
To: <r-help@stat.math.ethz.ch>
Date: Thu, 7 Jun 2007 11:12:01 +0100
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-UCL-MailScanner-Information: Please contact the UCL Helpdesk,
	helpdesk@ucl.ac.uk for more information
X-UCL-MailScanner: Found to be clean
X-UCL-MailScanner-From: james.morris@ucl.ac.uk
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] RODBC and placeholders?
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

Hello,

I have a question about interacting with MySQL from R,

I have a vector of ids and for each id I would like to query my database and retrieve 3 values and combine the results of all the ids into a dataframe

currently I have been using RODBC for single queries, but I have not found anything in the documentation about using placeholders

I hope some can help,

Thanks

James Morris
	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

m" mrtYVaH 