From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 04:33:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l518XNhB007234
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 04:33:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l518VNCK013648;
	Fri, 1 Jun 2007 10:31:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.232])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l518V33u013482
	for <R-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 10:31:04 +0200
Received: by nz-out-0506.google.com with SMTP id o37so368354nzf
	for <R-help@stat.math.ethz.ch>; Fri, 01 Jun 2007 01:31:03 -0700 (PDT)
Received: by 10.115.54.1 with SMTP id g1mr1498584wak.1180686661481;
	Fri, 01 Jun 2007 01:31:01 -0700 (PDT)
Received: by 10.115.16.13 with HTTP; Fri, 1 Jun 2007 01:31:01 -0700 (PDT)
Message-ID: <2fc17e30706010131i6dcc773cs67cb7c36ca0da222@mail.gmail.com>
Date: Fri, 1 Jun 2007 16:31:01 +0800
From: "zhijie zhang" <epistat@gmail.com>
To: R-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] How should i get the quantile 2.5 % and 97.5% in each row of a
	matrix?
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

Dear friends,
  I need the get the 2.5% and 97.5% quantile  from each row of a matrix, how
should i get it?
BTW, i can get the min/max value from each row of a matrix,  using the
following programs, is there an easy function to do it?

simmin<-matrix(NA,nrow=47,ncol=1)
for (i in 1:47) {
    simmin[i,]<-min(datas[i,])
 }

 Thanks for your help.
-- 
With Kind Regards,

oooO:::::::::
(..):::::::::
:\.(:::Oooo::
::\_)::(..)::
:::::::)./:::
::::::(_/::::
:::::::::::::
[***********************************************************************]
Zhi Jie,Zhang ,PHD
Tel:86-21-54237149
Dept. of Epidemiology,School of Public Health,Fudan University
Address:No. 138 Yi Xue Yuan Road,Shanghai,China
Postcode:200032
Email:epistat@gmail.com
Website: www.statABC.com
[***********************************************************************]
oooO:::::::::
(..):::::::::
:\.(:::Oooo::
::\_)::(..)::
:::::::)./:::
::::::(_/::::
:::::::::::::

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



s>ta"to