From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 09:25:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PDM7Lb028924
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 09:25:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5NEsfLT017091;
	Sat, 23 Jun 2007 16:54:52 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from vscane-c.ucl.ac.uk (vscane-c.ucl.ac.uk [144.82.108.43])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5NEsZdr017065
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <R-help@stat.math.ethz.ch>; Sat, 23 Jun 2007 16:54:36 +0200
Received: from 85-210-155-179.dsl.pipex.com ([85.210.155.179]
	helo=dhcppc2.my.nat.localnet)
	by vscane-c.ucl.ac.uk with esmtpsa (TLSv1:RC4-MD5:128) (Exim 4.60)
	(envelope-from <gavin.simpson@ucl.ac.uk>) id 1I270S-0006jd-TG
	for R-help@stat.math.ethz.ch; Sat, 23 Jun 2007 15:54:33 +0100
From: Gavin Simpson <gavin.simpson@ucl.ac.uk>
To: R-help <R-help@stat.math.ethz.ch>
Organization: ECRC, UCL Geography
Date: Sat, 23 Jun 2007 15:54:32 +0100
Message-Id: <1182610472.7860.10.camel@dhcppc2.my.nat.localnet>
Mime-Version: 1.0
X-Mailer: Evolution 2.2.3 (2.2.3-4.fc4) 
X-UCL-MailScanner-Information: Please contact the UCL Helpdesk,
	helpdesk@ucl.ac.uk for more information
X-UCL-MailScanner: Found to be clean
X-UCL-MailScanner-From: gavin.simpson@ucl.ac.uk
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Names of objects passed as ... to a function?
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: gavin.simpson@ucl.ac.uk
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

Dear list,

I have a function whose first argument is '...'. Each element of '...'
is a data frame, and there will be at least 2 data frames in '...'. The
function processes each of the data frames in '...' and returns a list,
whose components are the processed data frames. I would like to name the
components of this returned list with the names of the original data
frames. 

Normally I'd use deparse(substitute()) to do this, but here I do not
know the appropriate argument to run deparse(substitute()) on, and doing
this on ... only returns a single "name":

> foo <- function(...)
+                 deparse(substitute(...))
> dat1 <- rnorm(10)
> dat2 <- runif(10)
> foo(dat1, dat2)
[1] "dat1"

Can anyone suggest to me a way to get the names of objects passed as
the ... argument of a function?

TIA

G
-- 
%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
Gavin Simpson                     [t] +44 (0)20 7679 0522
ECRC                              [f] +44 (0)20 7679 0565
UCL Department of Geography
Pearson Building                  [e] gavin.simpsonATNOSPAMucl.ac.uk
Gower Street
London, UK                        [w] http://www.ucl.ac.uk/~ucfagls/
WC1E 6BT                          [w] http://www.freshwaters.org.uk/
%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

7Xboaw ya3M