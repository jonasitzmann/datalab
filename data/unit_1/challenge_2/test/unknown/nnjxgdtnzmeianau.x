From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 18:34:26 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FMYOL9007382
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 18:34:25 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FMWwVx028856;
	Sat, 16 Jun 2007 00:33:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp-5.smtp.ucla.edu (smtp-5.smtp.ucla.edu [169.232.47.137])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FKoaSY016704
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 22:50:40 +0200
Received: from mail.ucla.edu (mail.ucla.edu [169.232.46.157])
	by smtp-5.smtp.ucla.edu (8.13.8/8.13.8) with ESMTP id l5FKoaS8015610
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 13:50:36 -0700
Received: from [10.10.10.10] (NAT.ph.ucla.edu [128.97.25.15])
	(authenticated bits=0)
	by mail.ucla.edu (8.13.8/8.13.8) with ESMTP id l5FKoVgr005060
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 13:50:36 -0700
Message-ID: <4672FB97.4040005@ucla.edu>
Date: Fri, 15 Jun 2007 13:50:31 -0700
From: Li-Jung Liang <liangl@ucla.edu>
User-Agent: Thunderbird 1.5.0.12 (X11/20070530)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Probable-Spam: no
X-Scanned-By: smtp.ucla.edu on 169.232.47.137
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Upgraded FC4 to FC5 - unable to start device X11 in R
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

Hi,

I upgraded my system from FC4 to FC5.  So now I have R version 2.5.0 
(2007-04-23).
But I ran into a problem with starting device X11 (message below).

 > X11()
can't find X11 font
Error in X11(display, width, height, pointsize, if (is.null(gamma)) 1 
else gamma,  :
        unable to start device X11

Any idea?

Thanks,
L.

-- 
Li-Jung Liang, Ph.D.
Department of Biostatistics
UCLA School of Public Health
Los Angeles, CA 90095-1772

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

<t"au eES