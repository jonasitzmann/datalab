From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 05:35:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l649ZML9008865
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 05:35:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l649YmmK017755;
	Wed, 4 Jul 2007 11:34:57 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l649Ycf8017724
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 11:34:39 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I61Ft-0000o4-SQ
	for r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 02:34:37 -0700
Message-ID: <11427837.post@talk.nabble.com>
Date: Wed, 4 Jul 2007 02:34:37 -0700 (PDT)
From: msmith <msmith@ebi.ac.uk>
To: r-help@stat.math.ethz.ch
In-Reply-To: <468B61DC.5080004@gmx.net>
MIME-Version: 1.0
X-Nabble-From: msmith@ebi.ac.uk
References: <1183099152.5873.5.camel@zhurx-desktop>
	<20070629072923.172990@gmx.net> <11426235.post@talk.nabble.com>
	<468B61DC.5080004@gmx.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] How to install R 2.5 with Synaptic in Ubuntu?
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

Thanks for the suggestion and I wish the solution was that obvious, but I
have changed it to really point at my favourite mirror.

Using your example Synaptic reports the following error when I try to update
the repositories:

http://www.stats.bris.ac.uk/R/bin/linux/ubuntu/dists/feisty/main/binary-i386/Packages.gz:
404 Not Found

This is understandable since that location doesn't exist, but it makes me
think that the directory structure of the R mirrors is not compatible with
Ubuntu and Synaptic, since it automatically seeks /dists/feisty/ rather than
just /feisty/ as it is on the CRAN mirrors.

Thanks again
Mike Smith


Stefan Grosse-2 wrote:
> 
> 
>>  to end of the entry making it:
>>
>>  deb http://my.favorite.cran.mirror/bin/linux/ubuntu feisty main
>>
>> However after this it still complains that it can't find "packages.gz"
>>
>>   
> 
> Just a guess: have you replaced the my.favorite.cran.mirror by a mirror
> which is close to you? If you're in UK it would be for example
> 
> deb http://www.stats.bris.ac.uk/R/bin/linux/ubuntu feisty main
> 
> ;o)
> Stefan
> 
>> It appears to be looking in 
>> http://my.favorite.cran.mirror/bin/linux/ubuntu/distsfeisty
>> which isn't the directory structure of the cran repository, but 
>> I can see anyway to modify this behaviour.  Every other Ubuntu repositoy
>> I have looked at contains the dists directory.
>>
>> Any suggestions for modifying this behaviour are gratefully recieved.
>> Many thanks
>>
>> Mike Smith
>>
>>
>>   
> 
> 
> 
> 
> -=-=-
> ... The simple truth is that interstellar distances will not fit into
> the human imagination - (The Hitchhiker's Guide to the Galaxy)
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 

-- 
View this message in context: http://www.nabble.com/How-to-install-R-2.5-with-Synaptic-in-Ubuntu--tf3998481.html#a11427837
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



j253FzgRnup�DM r