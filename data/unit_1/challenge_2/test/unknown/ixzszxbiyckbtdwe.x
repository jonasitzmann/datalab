From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:36:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCa4LB028202
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:36:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MHSNmj023501;
	Fri, 22 Jun 2007 19:28:48 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from mu-out-0910.google.com (mu-out-0910.google.com [209.85.134.189])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MHSGkT023447
	for <r-help@lists.r-project.org>; Fri, 22 Jun 2007 19:28:16 +0200
Received: by mu-out-0910.google.com with SMTP id i10so1140342mue
	for <r-help@lists.r-project.org>; Fri, 22 Jun 2007 10:28:15 -0700 (PDT)
Received: by 10.82.178.11 with SMTP id a11mr6798281buf.1182533295049;
	Fri, 22 Jun 2007 10:28:15 -0700 (PDT)
Received: from delllap.ugr.es ( [150.214.204.154])
	by mx.google.com with ESMTP id u9sm1756813muf.2007.06.22.10.28.13
	(version=SSLv3 cipher=OTHER); Fri, 22 Jun 2007 10:28:14 -0700 (PDT)
Date: Fri, 22 Jun 2007 19:26:56 +0200
To: "r-help@lists.r-project.org" <r-help@stat.math.ethz.ch>
From: "Jose Quesada " <quesada@gmail.com>
MIME-Version: 1.0
Message-ID: <op.tub2q6d64hcap5@delllap.ugr.es>
User-Agent: Opera Mail/9.21 (Win32)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from Quoted-Printable to 8bit by hypatia.math.ethz.ch id
	l5MHSGkT023447
Subject: [R] Matrix library, CHOLMOD error: problem too large
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


I have a pretty large sparse matrix of integers:
> dim(tasa)
[1] 91650 37651

I need to add one to it in order to take logs, but I'm getting the  
following error:

> tasa  = log(tasa + 1)
CHOLMOD error: problem too large
Error in asMethod(object) : Cholmod error `problem too large'

I have 2 Gb of RAM, and the current workspace is barely 300mb.
Is there any workaround to this? Anyone has any experience with this error?

Thanks,
-Jose

-- 
Jose Quesada, PhD.
http://www.andrew.cmu.edu/~jquesada

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

-tmuVprse,6d=