From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 06:50:04 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LAo3L9022890
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 06:50:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LAnIHd026789;
	Thu, 21 Jun 2007 12:49:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE, HTML_OBFUSCATE_05_10 autolearn=no version=3.2.0
Received: from mail4.wm.edu (mail4.wm.edu [128.239.35.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LAn31n026684
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 12:49:03 +0200
Received: from [10.0.1.200] (ip70-161-254-38.hr.hr.cox.net [70.161.254.38])
	by mail4.wm.edu (MOS 3.8.3-GA) with ESMTP id AIY98842 (AUTH gwgilc);
	Thu, 21 Jun 2007 06:49:02 -0400 (EDT)
Mime-Version: 1.0 (Apple Message framework v752.3)
To: r-help@stat.math.ethz.ch
Message-Id: <F240E63F-881E-4029-9B44-970C7EB73600@wm.edu>
From: "George W. Gilchrist" <gwgilc@wm.edu>
Date: Thu, 21 Jun 2007 06:48:45 -0400
X-Mailer: Apple Mail (2.752.3)
X-Junkmail-Whitelist: YES (by domain whitelist at mail4.wm.edu)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Extract Df under lme4
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

I need to extract the degrees of freedom and log likelihoods from a  
series of mixed models computed using lmer/lme4. If I ask for logLik 
(lmer.object), I get something like
 > logLik(lmer.object)
'log Lik.' -177.1000 (df=10)

Can I easily get that df from there (or elsewhere) into an object?  
Thank you for any ideas.

George

..................................................................
George W. Gilchrist                           Email: gwgilc@wm.edu
Director of Graduate Studies                 Phone: (757) 221-7751
Department of Biology, Box 8795                Fax: (757) 221-6483
College of William & Mary
Williamsburg, VA 23187-8795
http://gwgilc.people.wm.edu/



	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

Ullo�iAg1 cm
t