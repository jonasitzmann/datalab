From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 09:34:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QDY6L9011350
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 09:34:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QDXanh019606;
	Tue, 26 Jun 2007 15:33:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from colo13.ukhost4u.com (colo13.ukhost4u.com [85.13.251.140])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QDXSrx019558
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 15:33:28 +0200
Received: from [85.189.161.254] (helo=[192.168.10.114])
	by colo13.ukhost4u.com with esmtpa (Exim 4.66)
	(envelope-from <rfrancois@mango-solutions.com>)
	id 1I3BAZ-00017N-9j; Tue, 26 Jun 2007 13:33:24 +0000
Message-ID: <468115A4.7060706@mango-solutions.com>
Date: Tue, 26 Jun 2007 14:33:24 +0100
From: Romain Francois <rfrancois@mango-solutions.com>
Organization: Mango Solutions
User-Agent: Thunderbird 2.0.0.4 (X11/20070615)
MIME-Version: 1.0
To: Sigbert Klinke <sigbert@wiwi.hu-berlin.de>
References: <46811311.2020503@wiwi.hu-berlin.de>
In-Reply-To: <46811311.2020503@wiwi.hu-berlin.de>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - colo13.ukhost4u.com
X-AntiAbuse: Original Domain - stat.math.ethz.ch
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - mango-solutions.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] recover history after crash in RGui
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

Sigbert Klinke wrote:
> Hi, is there any possibility to recover the history of executed R code 
> in the RGui when it has crashed?
>
> Thanks in advance
>
>   Sigbert Klinke
>   
Hello,

It might be too much of an overkill, but one possible thing is to use 
?taskCallbackManager to save the history after each high level call. 
Something like:

     h <- taskCallbackManager()
     h$add(function(expr, value, ok, visible) {
                            savehistory()
                            return(TRUE)
                          }, name = "historyHandler")

Cheers,

Romain

-- 
Mango Solutions
data analysis that delivers

Tel:  +44(0) 1249 467 467
Fax:  +44(0) 1249 467 468
Mob:  +44(0) 7813 526 123

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

ey'7vw