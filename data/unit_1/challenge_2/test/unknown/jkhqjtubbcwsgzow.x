From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 20:54:04 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l640s3L9003689
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 20:54:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l640rVJp011677;
	Wed, 4 Jul 2007 02:53:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.9 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l640rIqj011549
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 02:53:19 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I5t7I-00056B-Q7
	for r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 02:53:12 +0200
Received: from pcor-uf228.stanford.edu ([171.64.154.228])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 04 Jul 2007 02:53:12 +0200
Received: from toby909 by pcor-uf228.stanford.edu with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 04 Jul 2007 02:53:12 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: toby909@gmail.com
Date: Tue, 03 Jul 2007 17:54:05 -0700
Lines: 9
Message-ID: <f6er1d$k6f$1@sea.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: pcor-uf228.stanford.edu
User-Agent: Mozilla Thunderbird 1.0.6 (Windows/20050716)
X-Accept-Language: en-us, en
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] constraining residual variance to zero in lme or lmer
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

Hi All

I havent seen that lme or lmer allows to specify certain constraints (although I 
heard one could program ones own covariance structure). Specific constraints, 
including one on the residual variance can be specified in sas proc mixed. In my 
model I want to fix the residual variance to the known value of 0. If anyone 
having an idea about that, I would appreciate letting me know.

Thanks Toby

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

)cB=m a x�Sn.tr0