From r-help-bounces@stat.math.ethz.ch  Sun Jun 10 12:10:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5AGA5L9004167
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 10 Jun 2007 12:10:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AG8F8n024080;
	Sun, 10 Jun 2007 18:08:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from outmx022.isp.belgacom.be (outmx022.isp.belgacom.be
	[195.238.4.203])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AG86Dl023987
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 18:08:06 +0200
Received: from outmx022.isp.belgacom.be (localhost [127.0.0.1])
	by outmx022.isp.belgacom.be (8.12.11.20060308/8.12.11/Skynet-OUT-2.22)
	with ESMTP id l5AG86cH014597
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 18:08:06 +0200
	(envelope-from <alain.reymond@skynet.be>)
Received: from [192.9.200.199] (196.246-242-81.adsl-dyn.isp.belgacom.be
	[81.242.246.196])
	by outmx022.isp.belgacom.be (8.12.11.20060308/8.12.11/Skynet-OUT-2.22)
	with ESMTP id l5AG80H8014562
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 18:08:00 +0200
	(envelope-from <alain.reymond@skynet.be>)
Message-ID: <466C2254.4010109@skynet.be>
Date: Sun, 10 Jun 2007 18:09:56 +0200
From: Alain Reymond <alain.reymond@skynet.be>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] R logistic regression - comparison with SPSS
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

Dear R-list members,

I have been a user of SPSS for a few years and quite new to R. I read
the documentation and tried samples but I have some problems to obtain
results for a logistic regression under R.

The following SPSS script

LOGISTIC REGRESSION  vir
    /METHOD = FSTEP(LR) d007 d008 d009 d010 d011 d012 d013 d014 d015
d016 d017 d018 d069 d072 d073
    /SAVE = PRED COOK SRESID
    /CLASSPLOT
    /PRINT = GOODFIT CI(95)
    /CRITERIA = PIN(.10) POUT(.10) ITERATE(40) CUT(.5) .

predicts vir (value 0 or 1) according to my parameters d007 to d073. It
gives me the parameters to retain in the logistic equation and the
intercept.
The calculation is made from a set of values of about 1.000 cases.

I have been unable to translate it with success under R. I would like to
check if I can obtain the same results than with SPSS. Can someone help
me translate it under R ? I would be most grateful.

I thank you.

Best regards.

-- 
Alain Reymond
CEIA
Bd Saint-Michel 119
1040 Bruxelles
Tel: +32 2 736 04 58
Fax: +32 2 736 58 02
PGPId :  0xEFB06E2E

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

;c
bmgcz c