From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 04:41:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L8fAL9021907
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 04:41:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L8eeYc014533;
	Thu, 21 Jun 2007 10:40:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE, HTML_MIME_NO_HTML_TAG,
	MIME_HTML_ONLY autolearn=no version=3.2.0
Received: from rm-rstar.sfu.ca (rm-rstar.sfu.ca [142.58.101.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L8RjQC009490
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 10:27:47 +0200
Received: from webmail.sfu.ca (jaguar1.nfs.sfu.ca [192.168.102.201])
	by rm-rstar.sfu.ca (8.13.6/8.13.4/SFU-5.0H) with ESMTP id
	l5L8Reac017771; Thu, 21 Jun 2007 01:27:42 -0700 (PDT)
Message-Id: <200706210827.l5L8Reac017771@rm-rstar.sfu.ca>
Content-Disposition: inline
X-Sender: nlei@popserver.sfu.ca
Date: Thu, 21 Jun 2007 01:27:40 -0700
X-Mailer: SFUwebmail 2.70
From: nlei@sfu.ca
To: r-help@stat.math.ethz.ch, tlumley@u.washington.edu,
   r-help@stat.math.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.9
Subject: [R] model selection criteria in "regsubsets"
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: nlei@sfu.ca
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


______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

idrt