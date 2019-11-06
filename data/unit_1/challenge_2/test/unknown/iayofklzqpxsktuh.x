From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 13:08:04 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KH82L9012712
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 13:08:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KH7Ca1020708;
	Wed, 20 Jun 2007 19:07:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pascal.uni-erfurt.de (pascal.uni-erfurt.de [194.95.117.230])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KGUT1g005541
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 18:30:29 +0200
Received: from webshield.net.uni-erfurt.de ([194.95.117.245])
	by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with SMTP id <0JJY00DLF0ITIQ50@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 20 Jun 2007 18:30:29 +0200 (MEST)
Received: from pascal.uni-erfurt.de(194.95.117.230)
	by webshield.net.uni-erfurt.de via smtp	id
	1054_ea5bf018_1f4a_11dc_8634_0011433682c5;
	Wed, 20 Jun 2007 18:25:53 +0200
Received: from [194.95.14.123] by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with ESMTP id <0JJY00DLB0ITIQ50@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 20 Jun 2007 18:30:29 +0200 (MEST)
Date: Wed, 20 Jun 2007 18:30:28 +0200
From: Stefan Grosse <singularitaet@gmx.net>
In-reply-to: <BAY110-F170FA848DFCE44E3F8DFE9A3110@phx.gbl>
To: Vumani Dlamini <dvumani@hotmail.com>, r-help <r-help@stat.math.ethz.ch>
Message-id: <46795624.7010009@gmx.net>
MIME-version: 1.0
X-Enigmail-Version: 0.95.1
References: <BAY110-F170FA848DFCE44E3F8DFE9A3110@phx.gbl>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] "xtable" results doesn't correspond to data.frame
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

That table below is not the table from your first mail.

However I would do something like:

library(xtable)
testdata<-data.frame(gender=c(rep("male",3),rep("female",4))
testtab<-as.data.frame(table(testdata))
pct<-function(x){
  x/sum(x)*100
  }
testtab$percent<-pct(testtab$Freq)

rownames(testtab)<-c(1,2)
colnames(testtab)<-c("gender","Freq","%")

#it looks like:

testtab

#and latex:

xtable(testtab,digits=2)

% latex table generated in R 2.5.0 by xtable 1.4-6 package
% Wed Jun 20 18:25:22 2007
\begin{table}[ht]
\begin{center}
\begin{tabular}{rlrr}
  \hline
 & gender & Freq & \% \\
  \hline
1 & female &   3 & 42.86 \\
  2 & male &   4 & 57.14 \\
   \hline
\end{tabular}
\end{center}
\end{table}

I hope this is now how expected.

Cheers
Stefan

-------- Original Message  --------
Subject: Re:[R] "xtable" results doesn't correspond to data.frame
From: Vumani Dlamini <dvumani@hotmail.com>
To: singularitaet@gmx.net
Date: Wed Jun 20 2007 13:22:59 GMT+0200
> This is what is not expected. Having "Gender" repeated twice and the
> labels for gender missing. Will format the digits and align once
> everything is right.
> Thanks.
>
>
> \begin{table}[ht]
> \begin{center}
> \begin{tabular}{llrr}
>  \hline
>  &   & number of patients & \% \\
>  \hline
> Gender & Gender &   &   \\
>    &   & 3 & 0.428571428571429 \\
>    &   & 4 & 0.571428571428571 \\
>   \hline
> \end{tabular}
> \end{center}
> \

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



2-1 t