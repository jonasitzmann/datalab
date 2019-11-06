From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 09:37:03 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57Db1hB002748
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 09:37:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57DaUMG005823;
	Thu, 7 Jun 2007 15:36:39 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pascal.uni-erfurt.de (pascal.uni-erfurt.de [194.95.117.230])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57DaNuw005797
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 15:36:23 +0200
Received: from webshield.net.uni-erfurt.de ([194.95.117.245])
	by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with SMTP id <0JJ9000V0PSO5X00@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Thu, 07 Jun 2007 15:36:24 +0200 (MEST)
Received: from pascal.uni-erfurt.de(194.95.117.230)
	by webshield.net.uni-erfurt.de via smtp	id
	5876_82a4ebcc_14fb_11dc_9b40_0011433682c5;
	Thu, 07 Jun 2007 15:32:16 +0200
Received: from [194.95.14.40] by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with ESMTP id <0JJ9000UYPSO5X00@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Thu, 07 Jun 2007 15:36:24 +0200 (MEST)
Date: Thu, 07 Jun 2007 15:36:24 +0200
From: Stefan Grosse <singularitaet@gmx.net>
In-reply-to: <Pine.LNX.4.64.0706071159250.19222@gannet.stats.ox.ac.uk>
To: r-help@stat.math.ethz.ch
Message-id: <466809D8.1020603@gmx.net>
MIME-version: 1.0
References: <4667D730.9090403@gmx.net>
	<Pine.LNX.4.64.0706071159250.19222@gannet.stats.ox.ac.uk>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: ripley@stats.ox.ac.uk
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

Actually the packages R wants to update are: VR, cluster, lattice, mgcv,
nlme and rcompgen. I did how described in the R-Win-FAQ create a
.Renviron File containing the path to the win-library that R already
created (R_LIBS=C: ... ). I also tried to add R_LIBS= as Rgui parameter
from within Tinn-R. Additionally I tried to leave a file named
Renviron.site in the etc library. Nothing worked thus far.

Interestingly installing packages does work fine even without specifying
the R_LIBS path manually with any of the above mentioned methods.

Even more puzzling is that even when I install eg. nlme manually via
install.packages("nlme") it works but R still wants to update it. Even
though e.g. library(nlme), ?nlme shows that the latest version is
installed.

I would guess there is some problem with the library path variable in
the update program...

Stefan


-------- Original Message  --------
Subject: Re:[R] update packages with R on Vista: error
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Stefan Grosse <singularitaet@gmx.net>
Date: 07.06.2007 13:01
> See the rw-FAQ, which describes this in detail.
>
> Almost certainly you are trying to update the package 'cluster' which
> is in the main library.  But as you used the GUI, we can't see that.
>
> On Thu, 7 Jun 2007, Stefan Grosse wrote:
>
>> Dear R-list,
>>
>> I have encountered the following error message trying to update R
>> packages:
>>
>>> update.packages(ask='graphics')
>> Warning in install.packages(update[instlib == l, "Package"], l,
>> contriburl = contriburl,  :
>>         'lib' is not writable
>> Error in install.packages(update[instlib == l, "Package"], l, contriburl
>> = contriburl,  :
>>        unable to install packages
>>
>> I  remember did not have the problem on the last update where R
>> installed the files then in the Documents/R folder on my user account.
>> Any ideas how to handle this? I made the directories completely writable
>> so I do not know where the problem is now (especially since update
>> worked before...)
>>
>> Stefan
>>
>> PS: Tinn-R 1.19.2.3 + R 2.5.0 on Vista Business
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

Vrr9aootic� H