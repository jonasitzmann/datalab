From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 20:59:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l560xRhB015731
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 20:59:27 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l560uN6a013458;
	Wed, 6 Jun 2007 02:56:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from ppsw-3.csi.cam.ac.uk (ppsw-3.csi.cam.ac.uk [131.111.8.133])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l560scHG012592
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 02:54:38 +0200
X-Cam-SpamDetails: Not scanned
X-Cam-AntiVirus: No virus found
X-Cam-ScannerInfo: http://www.cam.ac.uk/cs/email/scanner/
Received: from mpp26.wolfson.cam.ac.uk ([128.232.235.186]:56096)
	by ppsw-3.csi.cam.ac.uk (smtp.hermes.cam.ac.uk [131.111.8.153]:587)
	with esmtpsa (PLAIN:mpp26) (TLSv1:AES128-SHA:128)
	id 1HvjnJ-0005Hb-Br (Exim 4.63) for r-help@stat.math.ethz.ch
	(return-path <mpp26@cam.ac.uk>); Wed, 06 Jun 2007 01:54:37 +0100
Mime-Version: 1.0 (Apple Message framework v752.2)
To: r-help@stat.math.ethz.ch
Message-Id: <961A7379-8726-460D-93FD-85C51CBFACF0@cam.ac.uk>
From: "M. P. Papadatos" <mpp26@cam.ac.uk>
Date: Wed, 6 Jun 2007 01:54:35 +0100
X-Mailer: Apple Mail (2.752.2)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Content-Filtered-By: Mailman/MimeDel 2.1.9
Subject: [R] Expand duplicated observations
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
Content-Type: multipart/mixed; boundary="===============1028457107=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch


--===============1028457107==
Content-Type: multipart/signed; micalg=sha1; boundary=Apple-Mail-4-920612661;
	protocol="application/pkcs7-signature"


--Apple-Mail-4-920612661
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=US-ASCII;
	delsp=yes;
	format=flowed

Dear all,

I am trying to  expand duplicated observations. I need to replace  
each observation in the dataset with n copies of the observation,  
where n is equal to the required expression rounded to the nearest  
integer. If the expression is less than 1 or equal to missing, it is  
interpreted as if it were 1, and the observation is retained but not  
duplicated.

Example

From
c(1,2,3)

To
c(1,2,2,3,3,3)

Thank you in advance.

Best wishes,
Martin


--Apple-Mail-4-920612661--


--===============1028457107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1028457107==--



o/aue epiP@