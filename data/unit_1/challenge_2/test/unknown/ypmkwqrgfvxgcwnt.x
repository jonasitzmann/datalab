From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 11:20:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57FKfhB003800
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 11:20:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57FIthZ007667;
	Thu, 7 Jun 2007 17:19:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp-out1.berkeley.edu (smtp-out1.Berkeley.EDU [128.32.61.106])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57FIfDZ007527
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 17:18:42 +0200
Received: from arsenic.calmail ([192.168.1.2] helo=calmail.berkeley.edu)
	by fe6.calmail with esmtpsa (TLSv1:AES256-SHA:256) (Exim 4.67)
	(auth login:pwang@berkeley.edu) (envelope-from <pwang@berkeley.edu>)
	id 1HwJl2-0001i1-KT
	for r-help@stat.math.ethz.ch; Thu, 07 Jun 2007 08:18:40 -0700
Received: from 76.169.69.87
	(SquirrelMail authenticated user pwang@berkeley.edu)
	by calmail.berkeley.edu with HTTP;
	Thu, 7 Jun 2007 08:18:40 -0700 (PDT)
Message-ID: <50765.76.169.69.87.1181229520.squirrel@calmail.berkeley.edu>
Date: Thu, 7 Jun 2007 08:18:40 -0700 (PDT)
From: "Patrick Wang" <pwang@berkeley.edu>
To: r-help@stat.math.ethz.ch
User-Agent: SquirrelMail/1.4.9a-2.berkeley
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] How to get the number of modes using kde2d
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

The silverman's paper introduction offer how to find a mode for one
dimensional data based
on software

http://www.stanford.edu/~kasparr/software/silverman.r,

for two dimensional data I use kde2d to smooth it out first,  then I get a
matrix of densities for all the X(one dimension) cross Y(another
dimension).


I sort X and Y first before I pass the values to kde2d(x, y, c(hx, hy)),
the persp shape changes

Does anyone know how to get the modes out of the two dimensional data
programmatically.

Also if I want to get the minumum of X, Y with modes =2, is the solution
unique?

Thanks
pat

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

�eBnl