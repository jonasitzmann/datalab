From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 06:18:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65AI4L9024702
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 06:18:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65AH0Pp021341;
	Thu, 5 Jul 2007 12:17:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65AGjcS021283
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 12:16:48 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I6OOC-0000em-7N
	for r-help@stat.math.ethz.ch; Thu, 05 Jul 2007 03:16:44 -0700
Message-ID: <11443955.post@talk.nabble.com>
Date: Thu, 5 Jul 2007 03:16:44 -0700 (PDT)
From: livia <yn19832@msn.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: yn19832@msn.com
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Loop and function
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


Hi All, I am trying to make a loop for a function and I am using the
following codes. "p" and "var" are some matrix obtained before. I would like
to apply the function  "gpdlow" for i in 1:12 and get the "returnlow" for i
in 1:12. But when I ask for "returnlow" there are warnings and it turns out
some strange result. 

for (i in 1:12){  
gpdlow <- function(u){      
p[,i]$beta -u*p[,i][[2]]
}
returnlow <- gpdlow(var[,i][var[,i]<(p[,i][[2]])
}


-- 
View this message in context: http://www.nabble.com/Loop-and-function-tf4028854.html#a11443955
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

h Dkdxr5n40R