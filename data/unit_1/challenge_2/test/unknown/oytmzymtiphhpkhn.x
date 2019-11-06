From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 09:24:44 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58DOghB015678
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 09:24:43 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58DMkQr010178;
	Fri, 8 Jun 2007 15:23:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from rwcrmhc14.comcast.net (rwcrmhc14.comcast.net [204.127.192.84])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58Cv8N3002233
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 14:57:09 +0200
Received: from [192.168.15.198] (depot.metrg.net[70.89.4.82])
	by comcast.net (rwcrmhc14) with ESMTP
	id <20070608125706m1400fo1dce>; Fri, 8 Jun 2007 12:57:07 +0000
Message-ID: <46695221.8080807@metrumrg.com>
Date: Fri, 08 Jun 2007 08:57:05 -0400
From: Tim Bergsma <timb@metrumrg.com>
Organization: Metrum Research Group, LLC
User-Agent: Thunderbird 1.5.0.10 (Windows/20070221)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] logical 'or' on list of vectors
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

Suppose I have a list of logicals, such as returned by lapply:

Theoph$Dose[1] <- NA
Theoph$Time[2] <- NA
Theoph$conc[3] <- NA
lapply(Theoph,is.na)

Is there a direct way to execute logical "or" across all vectors?  The 
following gives the desired result, but seems unnecessarily complex.

as.logical(apply(do.call("rbind",lapply(Theoph,is.na)),2,"sum"))

Regards,

Tim

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

gWn$dro@e0cn