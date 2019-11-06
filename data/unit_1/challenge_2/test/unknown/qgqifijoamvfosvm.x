From r-help-bounces@stat.math.ethz.ch  Fri Jun 22 08:04:17 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5MC4FL9005933
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 08:04:16 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MC2ore004178;
	Fri, 22 Jun 2007 14:03:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from gse-mta-08.emailsystems.com (gse-mta-08.emailsystems.com
	[62.249.212.168])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MC2h05004146
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 14:02:44 +0200
Received: from tedmail2.lgc.co.uk ([194.73.101.131])
	by gse-mta-08.emailsystems.com with emfmta (version
	3.4.1.3246.0.rd-3.2.2-libc2.3.1) vanilla id 870049518
	for r-help@stat.math.ethz.ch; Fri, 22 Jun 2007 13:02:43 +0100
Received: from LGC_CLUST_GWIA-MTA by tedmail2.lgc.co.uk
	with Novell_GroupWise; Fri, 22 Jun 2007 13:02:41 +0100
Message-Id: <s67bc871.078@tedmail2.lgc.co.uk>
X-Mailer: Novell GroupWise Internet Agent 6.5.4 
Date: Fri, 22 Jun 2007 13:02:20 +0100
From: "S Ellison" <S.Ellison@lgc.co.uk>
To: <r-help@stat.math.ethz.ch>
Mime-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5MC2h05004146
Subject: [R] Boxplot issues
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

Boxplot and bxp seem to have changed behaviour a bit of late (R 2.4.1). Or maybe I am mis-remembering.

An annoying feature is that while at=3:6 will work, there is no way of overriding the default xlim of 0.5 to n+0.5. That prevents plotting boxes on, for example, interval scales - a useful thing to do at times. I really can see no good reason for bxp to hard-core the xlim=c(0.5, n+0.5) in the function body; it should be a parameter default conditional on horizontal=, not hard coded.

Also, boxplot does not drop empty groups. I'm sure it used to. I know it is good to be able to see where a factor level is unpopulated, but its a nuisance with fractional factorials and some nested or survey problems when many are known to be missing and are of no interest. Irrespective of whether my memory is correct, the option would be useful. How hard can it be to add a 'drop.empty=F' default to boxplot to allow it to switch?

Obviously, these are things I can fix locally. But who 'owns' boxplot so I can provide suggested code to them for later releases? 

Steve Ellison



*******************************************************************
This email and any attachments are confidential. Any use, co...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

f/= 
