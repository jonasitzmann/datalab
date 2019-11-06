From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 18:34:16 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BMYFL9019552
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 18:34:16 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BMWBGX031716;
	Tue, 12 Jun 2007 00:32:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from front1.acsu.buffalo.edu (coldfront.acsu.buffalo.edu
	[128.205.6.89])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5BMW20u031671
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 00:32:02 +0200
Received: (qmail 6261 invoked from network); 11 Jun 2007 22:32:01 -0000
Received: from mailscan1.acsu.buffalo.edu (128.205.6.133)
	by front1.acsu.buffalo.edu with SMTP; 11 Jun 2007 22:32:01 -0000
Received: (qmail 45 invoked from network); 11 Jun 2007 22:32:00 -0000
Received: from h565sb.pharm.buffalo.edu (HELO ?127.0.0.1?) (128.205.185.221)
	by smtp3.acsu.buffalo.edu with SMTP; 11 Jun 2007 22:32:00 -0000
Message-ID: <466DCD60.3020600@free.fr>
Date: Mon, 11 Jun 2007 18:32:00 -0400
From: Seb <pomchip@free.fr>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: R-help <r-help@stat.math.ethz.ch>
X-Antivirus: avast! (VPS 000748-3, 11/06/2007), Outbound message
X-Antivirus-Status: Clean
X-UB-Relay: (h565sb.pharm.buffalo.edu)
X-PM-EL-Spam-Prob: : 7%
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Overlaying lattice graphs
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

Hello

I apologize in advance if this question has already be posted on the 
list, although I could not find a relevant thread in the archives.

I would like to overlay xyplots using different datasets for each plot. 
I typically work on the following data.frame (mydata) structure

>mydata
        Drug    Time        Observed          Predicted
1       A        0.05         10                 10.2
2       A        0.10         20                 19.5
etc...
100     B        0.05         11                 12.7
101     B        0.10         35                 36
etc...

I want to plot the observed data as points and the predicted values as 
lines. If I use the following commands, I don't have the possibility to 
switch the "y" values from Observed for the scatterplot to Predicted for 
the line.

xyplot(Observed ~ Time | Drug, data = mydata, panel  =  function(x,y, ...){
+            panel.xyplot(x,y,...)
+            panel.xyplot(x,y,type="l",...)})

I wonder if this problem can be solved using the trellis.focus "family" 
commands but I have a hard time to understand how they work.

Please, let me know if a thread have already addressed this question. 
Otherwise, I would grateful for any hint, comments or info you can provide.

Thanks

Sebastien

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

fabewiwHMnnR