From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 06:54:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KAs8L9008962
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 06:54:09 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KAqkT2014915;
	Wed, 20 Jun 2007 12:53:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pascal.uni-erfurt.de (pascal.uni-erfurt.de [194.95.117.230])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KAKbH8002042
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 12:20:38 +0200
Received: from webshield.net.uni-erfurt.de ([194.95.117.245])
	by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with SMTP id <0JJX00DQEJEEDM10@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 20 Jun 2007 12:20:38 +0200 (MEST)
Received: from pascal.uni-erfurt.de(194.95.117.230)
	by webshield.net.uni-erfurt.de via smtp	id
	2d65_3fb691f0_1f17_11dc_86c6_0011433682c5;
	Wed, 20 Jun 2007 12:16:02 +0200
Received: from [194.95.14.190] by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with ESMTP id <0JJX00DQAJEEDM10@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 20 Jun 2007 12:20:38 +0200 (MEST)
Date: Wed, 20 Jun 2007 12:20:37 +0200
From: Stefan Grosse <singularitaet@gmx.net>
In-reply-to: <BAY110-F92EAE0AB6FB1AAADA7AE1A3110@phx.gbl>
To: Vumani Dlamini <dvumani@hotmail.com>
Message-id: <4678FF75.2060202@gmx.net>
MIME-version: 1.0
References: <BAY110-F92EAE0AB6FB1AAADA7AE1A3110@phx.gbl>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
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

It would be helpfull if you would state what exactly you did expect.

As improvements you could reduce the digits, see  ?xtable

-------- Original Message  --------
Subject: [R] "xtable" results doesn't correspond to data.frame
From: Vumani Dlamini <dvumani@hotmail.com>
To: r-help@stat.math.ethz.ch
Date: 20.06.2007 11:20
> Dear useRs,
> Am trying to use xtable on the following data.frame and I don't get what I 
> expect:
>
> example.table <- data.frame(rbind(
>     c("Gender"," "," "," "),
>     cbind(rep(" ",2),c("Male","Female"),c(3.0,4.0),c(3/7,4/7))
> ))
> colnames(example.table) <- c(" "," ","number of patients","%")
> example.xtable <- xtable(example.table)
> print.xtable(example.xtable, include.rownames=FALSE)
>
> I can seem to get latex output which corresponds to the data.frame which is,
> \begin{table}[ht]
> \begin{center}
> \begin{tabular}{llll}
>   \hline
>   &   & number of patients & \% \\
>   \hline
> Gender & &   &   \\
>     &  Male & 3 & 0.428571428571429 \\
>     &   Female & 4 & 0.571428571428571 \\
>    \hline
> \end{tabular}
> \end{center}
> \end{table}
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

goal	V}9hui9t