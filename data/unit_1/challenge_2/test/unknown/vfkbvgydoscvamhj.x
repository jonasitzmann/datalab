From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 10:03:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58E3shB016097
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 10:03:55 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58E3JNg028109;
	Fri, 8 Jun 2007 16:03:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from vscani-d.ucl.ac.uk (vscani-d.ucl.ac.uk [144.82.108.132])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58Dn4G3021862
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 15:49:05 +0200
Received: from gsimpson.geog.ucl.ac.uk ([128.40.33.76])
	by vscani-d.ucl.ac.uk with esmtp (Exim 4.60)
	(envelope-from <gavin.simpson@ucl.ac.uk>)
	id 1Hwepp-00038p-C8; Fri, 08 Jun 2007 14:49:01 +0100
From: Gavin Simpson <gavin.simpson@ucl.ac.uk>
To: A Ezhil <ezhil02@yahoo.com>
In-Reply-To: <142298.20316.qm@web32413.mail.mud.yahoo.com>
References: <142298.20316.qm@web32413.mail.mud.yahoo.com>
Organization: Environmental Change Research Centre, UCL
Date: Fri, 08 Jun 2007 14:49:01 +0100
Message-Id: <1181310541.8971.37.camel@gsimpson.geog.ucl.ac.uk>
Mime-Version: 1.0
X-Mailer: Evolution 2.6.3 (2.6.3-2.fc5) 
X-UCL-MailScanner-Information: Please contact the UCL Helpdesk,
	helpdesk@ucl.ac.uk for more information
X-UCL-MailScanner: Found to be clean
X-UCL-MailScanner-From: gavin.simpson@ucl.ac.uk
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Formating the data
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

On Fri, 2007-06-08 at 06:13 -0700, A Ezhil wrote:
> Hi All,
> 
> I have a vector of length 48, something like:
> 0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1
> 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
> 
> I would like to print (reformat) this vector as:
> 001100000000001111111111111111111111111111111111
> 
> by simply removing the spaces between them. I have
> been trying with many option but not able to do this
> task.
> I would greatly appreciate your suggestion on fixing
> this simple task.
> 
> Thanks in advance.

> dat <- scan()
1: 0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1
28: 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
49:
Read 48 items
> dat
 [1] 0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
1 1 1 1[39] 1 1 1 1 1 1 1 1 1 1
> print(dat, print.gap = 0)
 [1]001100000000001111111111111111111111111111111111

Is that what you want? It is just altering how the data are printed. You
still get the [1] at the start though.

G
-- 
%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
 Gavin Simpson                 [t] +44 (0)20 7679 0522
 ECRC, UCL Geography,          [f] +44 (0)20 7679 0565
 Pearson Building,             [e] gavin.simpsonATNOSPAMucl.ac.uk
 Gower Street, London          [w] http://www.ucl.ac.uk/~ucfagls/
 UK. WC1E 6BT.                 [w] http://www.freshwaters.org.uk
%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

e �K