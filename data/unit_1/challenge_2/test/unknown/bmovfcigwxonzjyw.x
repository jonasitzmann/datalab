From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 12:18:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55GIqhB011021
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 12:18:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55GI1Sm008329;
	Tue, 5 Jun 2007 18:18:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	DKIM_SIGNED autolearn=no version=3.2.0
Received: from web52801.mail.re2.yahoo.com (web52801.mail.re2.yahoo.com
	[206.190.48.244])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l55GHqEQ008283
	for <r-help@hypatia.math.ethz.ch>; Tue, 5 Jun 2007 18:17:52 +0200
Received: (qmail 70971 invoked by uid 60001); 5 Jun 2007 16:17:51 -0000
X-YMail-OSG: JBO_5JcVM1mw8DWgP6l3Q7K6Rs4UMc8dtvc6QrIh8IHFmu1wJGeUvCx2Z8D9rGXllaV87W_ejmiIVWTN2.lgWolFu3awQxD8QjAqdZCSH3NE.fWythNNr8_B3MmPcxzQME975NS96RWbrPh8
Received: from [199.133.142.21] by web52801.mail.re2.yahoo.com via HTTP;
	Tue, 05 Jun 2007 09:17:51 PDT
Date: Tue, 5 Jun 2007 09:17:51 -0700 (PDT)
From: jiqiang yao <jiqiang123@yahoo.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Message-ID: <618898.70306.qm@web52801.mail.re2.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] read table
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
I'm a novice of R.

I want to read the following table into R:
names               mpg    cyl  disp  hp  drat    
Mazda RX4           21.0   6    160.0 110 3.90 
Mazda RX4 Wag       21.0   6    160.0 110 3.90 

The command I used is:
> test <- read.table(file.choose(),header=T)

The result is:
Error in read.table(file.choose(), header = T) : 
        more columns than column names

Can anybody tells me what is wrong?

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

 Husu