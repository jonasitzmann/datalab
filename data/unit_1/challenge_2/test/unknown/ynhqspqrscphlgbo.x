From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 17:41:54 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TLfqL9031322
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 17:41:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TLeKoM030169;
	Fri, 29 Jun 2007 23:40:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from garfield.qimr.edu.au (garfield.qimr.edu.au [152.98.3.8])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TLbVE6029366
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 23:37:33 +0200
Received: from puma.qimr.edu.au (Not Verified[152.98.32.20]) by
	garfield.qimr.edu.au with ESMTP Gateway
	id <B46857ba10000>; Sat, 30 Jun 2007 07:37:37 +1000
Received: from orpheus.qimr.edu.au (orpheus [152.98.160.59])
	by puma.qimr.edu.au (8.13.1/8.13.1) with ESMTP id l5TLbUUB011536;
	Sat, 30 Jun 2007 07:37:30 +1000 (EST)
Received: from localhost (localhost [127.0.0.1])
	by orpheus.qimr.edu.au (Postfix) with ESMTP id 48F261D530;
	Sat, 30 Jun 2007 07:37:29 +1000 (EST)
Date: Sat, 30 Jun 2007 07:37:28 +1000 (EST)
From: David Duffy <David.Duffy@qimr.edu.au>
To: Peter Dalgaard <p.dalgaard@biostat.ku.dk>
In-Reply-To: <4684AADA.5030609@biostat.ku.dk>
Message-ID: <Pine.LNX.4.64.0706300730250.26396@orpheus.qimr.edu.au>
References: <mailman.13.1183024805.4590.r-help@stat.math.ethz.ch>
	<Pine.LNX.4.64.0706290757300.25798@orpheus.qimr.edu.au>
	<4684AADA.5030609@biostat.ku.dk>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: David Duffy <David.Duffy@qimr.edu.au>, r-help@stat.math.ethz.ch
Subject: Re: [R] exaustive subgrouping or combination
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

On Fri, 29 Jun 2007, Peter Dalgaard wrote:

> David Duffy wrote:
>>> Waverley <waverley.paloalto@gmail.com> asked:
>>> 
>>> Dear Colleagues,
>>> 
>>> I am looking for a package or previous implemented R to subgroup and
>>> exaustively divide a vector of squence into 2 groups.
>>> 
>>> -- 
>>> Waverley @ Palo Alto
>>> 
>> 
>> Google "[R] Generating all possible partitions" and you will find some R 
>> code
>> from 2002 or so.
>>
>> 
> In 2002 this wasn't already in R. These days, help(combn) is more to the 
> point:
>
> mn <- sort(zapsmall(combn(sleep$extra,10,mean)))
> plot(unique(mn),table(mn))
> abline(v=mean(sleep$extra[1:10]))
>

As I read it, the original query is about partitioning the set eg
((1 2) 3) ((1 3) 2) (1 (2 3)).

-- 
| David Duffy (MBBS PhD)                                         ,-_|\
| email: davidD@qimr.edu.au  ph: INT+61+7+3362-0217 fax: -0101  /     *
| Epidemiology Unit, Queensland Institute of Medical Research   \_,-._/
| 300 Herston Rd, Brisbane, Queensland 4029, Australia  GPG 4D0B994A v

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

ie641C