From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 05:38:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D9cNL9006058
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 05:38:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D9bGXr030644;
	Wed, 13 Jun 2007 11:37:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pascal.uni-erfurt.de (pascal.uni-erfurt.de [194.95.117.230])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D9anqa030464
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 11:36:50 +0200
Received: from webshield.net.uni-erfurt.de ([194.95.117.245])
	by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with SMTP id <0JJK00BEXIPE2KC0@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 13 Jun 2007 11:36:50 +0200 (MEST)
Received: from pascal.uni-erfurt.de(194.95.117.230)
	by webshield.net.uni-erfurt.de via smtp	id
	697c_01cf63e8_1991_11dc_902d_0011433682c5;
	Wed, 13 Jun 2007 11:32:30 +0200
Received: from [194.95.14.40] by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with ESMTP id <0JJK00BEUIPE2KC0@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Wed, 13 Jun 2007 11:36:50 +0200 (MEST)
Date: Wed, 13 Jun 2007 11:36:48 +0200
From: Stefan Grosse <singularitaet@gmx.net>
In-reply-to: <4667D730.9090403@gmx.net>
To: r-help@stat.math.ethz.ch
Message-id: <466FBAB0.7040902@gmx.net>
MIME-version: 1.0
References: <4667D730.9090403@gmx.net>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] update packages with R on Vista: error
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

Dear all,

I figured out that the best solution for me is to install R in the
/User/me/Documents/R/ directory instead of the program files directory
since I am the only user on my notebook and R has then full write access
and I do not need to change any environment variables...

Thanks for the answers,-

Stefan

-------- Original Message  --------
Subject: [R] update packages with R on Vista: error
From: Stefan Grosse <singularitaet@gmx.net>
To: r-help@stat.math.ethz.ch
Date: 07.06.2007 12:00
> Dear R-list,
>
> I have encountered the following error message trying to update R packages:
>
>   
>> update.packages(ask='graphics')
>>     
> Warning in install.packages(update[instlib == l, "Package"], l,
> contriburl = contriburl,  :
>          'lib' is not writable
> Error in install.packages(update[instlib == l, "Package"], l, contriburl
> = contriburl,  :
>         unable to install packages
>
> I  remember did not have the problem on the last update where R
> installed the files then in the Documents/R folder on my user account.
> Any ideas how to handle this? I made the directories completely writable
> so I do not know where the problem is now (especially since update
> worked before...)
>
> Stefan
>
> PS: Tinn-R 1.19.2.3 + R 2.5.0 on Vista Business
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

 

oDPt�SBV