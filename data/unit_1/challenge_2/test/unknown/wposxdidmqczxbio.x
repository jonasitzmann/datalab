From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 16:50:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55KokhB013714
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 16:50:46 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55Ko2bL005366;
	Tue, 5 Jun 2007 22:50:12 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ices10.ices.on.ca (ices10.ices.on.ca [199.212.114.10])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55Ki2WO003420
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 22:44:03 +0200
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.2826
MIME-Version: 1.0
Date: Tue, 5 Jun 2007 16:07:30 -0400
Message-ID: <69E8946004ED8243A9E1554F7401424F01BA2D9C@ices10.ices.on.ca>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: R CMD BATCH command
thread-index: AcenrSVZ6hWyT6aeTQGupGduSxm6Gg==
From: "Austin, Peter" <peter.austin@ices.on.ca>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: "Austin, Peter" <peter.austin@ices.on.ca>
Subject: [R] R CMD BATCH command
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

The version of R on our unix system has been updated to version 2.5.0.
When I type the following command at the unix prompt:

'R CMD BATCH filename'

I receive the following error message:

Error in Sys.unsetenv("R_BATCH") : 'Sys.unsetenv' is not available on
this system

Execution halted.

 

'R CMD BATCH filename' used to work with the prior version of R that I
had installed (version 2.2.0). Is there something that I need to modify
for it to work now?

Thanks,

Peter

 

 

Peter Austin, PhD

Senior Scientist, Institute for Clinical Evaluative Sciences.

Associate Professor, Departments of Public Health Sciences and Health
Policy, Management and Evaluation, University of Toronto.

 

Institute for Clinical Evaluative Sciences 
G106 - 2075 Bayview Avenue 
Toronto, Ontario, M4N 3M5 
Tel:  (416) 480-6131

Fax: (416) 480-6048 
ICES Web Site: www.ices.on.ca <http://www.ices.on.ca> 

 


___________________________________________________________________________
This email may contain confidential and/or privileged inform...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

p3Lss