From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 11:37:03 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JFb0L9031041
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 11:37:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JFaI0v011183;
	Tue, 19 Jun 2007 17:36:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from colo13.ukhost4u.com (colo13.ukhost4u.com [85.13.251.140])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JFSGeS007068
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 17:28:16 +0200
Received: from [85.189.161.254] (helo=[192.168.10.114])
	by colo13.ukhost4u.com with esmtpa (Exim 4.66)
	(envelope-from <rfrancois@mango-solutions.com>)
	id 1I0fcn-0003uy-Hx; Tue, 19 Jun 2007 15:28:10 +0000
Message-ID: <4677F607.7080509@mango-solutions.com>
Date: Tue, 19 Jun 2007 16:28:07 +0100
From: Romain Francois <rfrancois@mango-solutions.com>
Organization: Mango Solutions
User-Agent: Thunderbird 1.5.0.9 (X11/20070212)
MIME-Version: 1.0
To: "Talloen, Willem [PRDBE]" <WTALLOEN@PRDBE.JNJ.COM>
References: <76AA79BF7116C04B92C3CD618B701A45036219@JNJBEBEGMS03.eu.jnj.com>
In-Reply-To: <76AA79BF7116C04B92C3CD618B701A45036219@JNJBEBEGMS03.eu.jnj.com>
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
Subject: Re: [R] plot only x- and y-axis with origin, no box()
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

Hello,

You are looking for the box function, and its bty argument. For example, 
this one will do the trick.

R> box( bty = "L")

?par gives more information on the potential values for bty.

Cheers,

Romain


Talloen, Willem [PRDBE] wrote:
> hi all,
>
> I'm trying for quite some time to have an x- and y-axis, but no entire box.
>
>   
>> plot(..,axes=F)
>> axis(1)
>> axis(2)
>>     
> Gives this, but their axes do not go to the origin.
> Quite a number of people find this gap between the two axes disturbing.
> Has anyone an idea how to let these axes go to the origin?
>
> thank you in advance
>   
-- 
Mango Solutions
data analysis that delivers

Tel:  +44(0) 1249 467 467
Fax:  +44(0) 1249 467 468
Mob:  +44(0) 7813 526 123

R training course for the Pharmaceutical Industry
1st  - 3rd  October. Basel, Switzerland
http://www.mango-solutions.com/services/rtraining/r_pharma.html

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

TlD@spzs