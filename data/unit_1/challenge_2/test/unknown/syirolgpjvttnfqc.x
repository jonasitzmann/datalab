From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 09:06:16 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64D6FL9010812
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 09:06:16 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64D5ah8000863;
	Wed, 4 Jul 2007 15:05:45 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from p15097509.pureserver.info (p15097509.pureserver.info
	[217.160.128.79])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64CwjRG030936
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 14:58:45 +0200
Received: from localhost (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id BE4BB3BE764
	for <r-help@stat.math.ethz.ch>; Wed,  4 Jul 2007 14:58:44 +0200 (CEST)
Received: from p15097509.pureserver.info ([127.0.0.1])
	by localhost (p15097509.pureserver.info [127.0.0.1]) (amavisd-new,
	port 10024) with SMTP id DxV+07PNOmLh for <r-help@stat.math.ethz.ch>;
	Wed,  4 Jul 2007 14:58:44 +0200 (CEST)
Received: by p15097509.pureserver.info (Postfix, from userid 1000)
	id 6363F3BE8AD; Wed,  4 Jul 2007 14:58:44 +0200 (CEST)
Date: Wed, 4 Jul 2007 14:58:44 +0200
From: Hubertus <stonemonkey@web.de>
To: r-help@stat.math.ethz.ch
Message-ID: <20070704125844.GA31772@p15097509.pureserver.info>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline
X-OS: Linux 2.6.18-4-686 i686
X-Fun: wer schaut denn schon in den mail-header?
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Content-Filtered-By: Mailman/MimeDel 2.1.9
Subject: [R] Problem/bug with smooth.spline and all.knots=T
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
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear list,
if I do
  smooth.spline(tmpSec, tmpT, all.knots=T)
with the attached data, I get this error-message:
  Error in smooth.spline(tmpSec, tmpT, all.knots = T) :
        smoothing parameter value too small
If I do
  smooth.spline(tmpSec[-single arbitrary number], tmpT[-single arbitrary number], all.knots=T)
it works!

I just don't see it. It works for hundrets other datasets, but not for this one.
Would be glad if anyone could help!

Hubertus

--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--C7zPtVaVf+AK4Oqc--

  

03 ilT.:f