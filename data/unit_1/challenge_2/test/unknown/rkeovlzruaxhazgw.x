From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 16:38:02 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LKc1L9028977
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 16:38:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LKbHSE014230;
	Thu, 21 Jun 2007 22:37:34 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pantheon-po13.its.yale.edu (pantheon-po13.its.yale.edu
	[130.132.50.19])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LKb78X014179
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <R-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 22:37:08 +0200
Received: from [130.132.249.2] (dhcp130132249002.its.yale.edu [130.132.249.2])
	(authenticated bits=0)
	by pantheon-po13.its.yale.edu (8.12.11.20060308/8.12.11) with ESMTP id
	l5LKb5XU032659
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <R-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 16:37:05 -0400
Message-ID: <467AE16B.3010909@yale.edu>
Date: Thu, 21 Jun 2007 16:36:59 -0400
From: Bryan K Woods <bryan.woods@yale.edu>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: R-help@stat.math.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] calculating co-spectra and quad-spectra
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

I am trying to calculate co and quad spectra for meteorological 
variables in order to spectrally examine momentum and energy fluxes. I 
noticed that the spec.pgram function returns power curves for both 
individual variables as well as coherence and phase information, but 
nothing about the co/quad spectrum. Does anyone have any experience with 
this and know of a way to back the cross-spectra out of this information 
or know of another package?

Thanks
Bryan

-- 
Bryan Woods
Dept. of Geology & Geophysics
Yale University, KGL 234
210 Whitney Ave
New Haven, CT 06511

978.726.3462 (cell)
203.432.3134 (fax)
203.404.3365 (home)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

tM.n�t