From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 20:47:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5F0l9L9028059
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 20:47:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F0kSfe011385;
	Fri, 15 Jun 2007 02:46:40 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp-gw4.usq.edu.au (smtp-gw4.usq.edu.au [139.86.2.59])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F0jWGc011090
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=NO)
	for <R-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 02:45:35 +0200
Received: from smtp-gw2.usq.edu.au (smtp-gw2.usq.edu.au [139.86.2.57])
	by smtp-gw4.usq.edu.au (8.13.7+Sun/8.13.4) with ESMTP id l5F0jUAq003457
	for <R-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 10:45:31 +1000 (EST)
Received: from romulus.sci.usq.edu.au (romulus.sci.usq.edu.au [139.86.138.21])
	by smtp-gw2.usq.edu.au (8.13.7+Sun/8.13.4) with ESMTP id
	l5F0jUdf003451
	for <R-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 10:45:30 +1000 (EST)
Received: from q06-3224.local (unknown [139.86.144.126])
	by romulus.sci.usq.edu.au (Postfix) with ESMTP id 02861232FA
	for <R-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 10:45:29 +1000 (EST)
From: Peter Dunn <dunn@usq.edu.au>
Organization: USQ
To: "R-help mailing list" <R-help@stat.math.ethz.ch>
User-Agent: KMail/1.9.5
MIME-Version: 1.0
Content-Disposition: inline
Date: Fri, 15 Jun 2007 10:42:34 +1000
Message-Id: <200706151042.34245.dunn@usq.edu.au>
X-Scanned-By: MIMEDefang 2.57 on 139.86.2.59
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] sma package, and MouseArray data set
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: dunn@usq.edu.au
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

Hi all

I have just downloaded the  sma  package from CRAN.
On installing on my linux machine, I get the message


> library(sma)
> data(MouseArray)
Warning message:
file 'MouseArray.RData' has magic number 'RDX1'
   Use of save versions prior to 2 is deprecated


Hereafter,  MouseArray  is not found:

> MouseArray
Error: object "MouseArray" not found


We were hoping to use the  MouseArray  data with  some
of the  sma  functions.

Since the data seems the only problem, is the data
available elsewhere in this form?  Or is there an easy 
work-around?

I have tried contacting the listed maintainer (Benjamin Bolstad),
but the listed email address (mb@bmbolstad.com) bounced.

Thanks.

P.


> sessionInfo()
R version 2.5.0 (2007-04-23)
i486-pc-linux-gnu

locale:
LC_CTYPE=en_AU.UTF-8;LC_NUMERIC=C;LC_TIME=en_AU.UTF-8;LC_COLLATE=en_AU.UTF-8;LC_MONETARY=en_AU.UTF-8;LC_MESSAGES=en_AU.UTF-8;LC_PAPER=en_AU.UTF-8;LC_NAME=C;LC_ADDRESS=C;LC_TELEPHONE=C;LC_MEASUREMENT=en_AU.UTF-8;LC_IDENTIFICATION=C

attached base packages:
[1] "stats"     "graphics"  "grDevices" "utils"     "datasets"  "methods"
[7] "base"

other attached packages:
     sma
"0.5.15"




-- 
Dr Peter Dunn  |  dunn <at> usq.edu.au
Faculty of Sciences, USQ; http://www.sci.usq.edu.au/staff/dunn
Aust. Centre for Sustainable Catchments: www.usq.edu.au/acsc

This email (including any attached files) is confidential an...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

tiB8<YtH8Wvu