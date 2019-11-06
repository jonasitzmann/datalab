From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 09:01:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FD1SL9002558
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 09:01:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FD0ilv011094;
	Fri, 15 Jun 2007 15:01:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FD0Stp011020
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 15:00:29 +0200
Received: from [192.168.0.176] (djm.stats.uwo.ca [129.100.76.113])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l5FD0Rbu010443;
	Fri, 15 Jun 2007 09:00:27 -0400
Message-ID: <46728DCB.3040501@stats.uwo.ca>
Date: Fri, 15 Jun 2007 09:02:03 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: "Wachtel, Mitchell" <Mitchell.Wachtel@ttuhsc.edu>
References: <1A2BCA4266504B4CA543403718A81FD2025031B3@TRAVIS.ttuhsc.edu>
In-Reply-To: <1A2BCA4266504B4CA543403718A81FD2025031B3@TRAVIS.ttuhsc.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Grahpics problem
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

On 6/15/2007 8:13 AM, Wachtel, Mitchell wrote:
> To the group:
> 
>  
> 
> A marvelous thing is combining graphs with the par function, but there
> remains an issue. What if you wish to put a title on top of the set of
> graphs or a general x or y axis label? How does one do this?

Use mtext() to write to the outer margins, but remember first to create 
some space there.  For example,

 > par(oma=c(0,0,2,0),mfrow=c(2,2))
 > plot(1)
 > plot(2)
 > plot(3)
 > plot(4)
 > mtext("Main title", side=3, outer=TRUE)

Duncan Murdoch

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

.tdU3