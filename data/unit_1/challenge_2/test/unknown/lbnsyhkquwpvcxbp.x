From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 11:28:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58FSthB016989
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 11:28:56 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58FRxFP032620;
	Fri, 8 Jun 2007 17:28:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.179])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58FCSAO025965
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 17:12:29 +0200
Received: by wa-out-1112.google.com with SMTP id j37so1225723waf
	for <r-help@stat.math.ethz.ch>; Fri, 08 Jun 2007 08:12:28 -0700 (PDT)
Received: by 10.114.36.1 with SMTP id j1mr2714195waj.1181315548029;
	Fri, 08 Jun 2007 08:12:28 -0700 (PDT)
Received: by 10.114.126.18 with HTTP; Fri, 8 Jun 2007 08:12:27 -0700 (PDT)
Message-ID: <cdf817830706080812v5821084crc0338e895d5fd5f2@mail.gmail.com>
Date: Fri, 8 Jun 2007 11:12:27 -0400
From: "Weiwei Shi" <helprhelp@gmail.com>
To: "Ruixin ZHU" <rxzhu@scbit.org>
In-Reply-To: <000001c7a997$45df81e0$7000a8c0@scbit94ec75129>
MIME-Version: 1.0
Content-Disposition: inline
References: <000001c7a997$45df81e0$7000a8c0@scbit94ec75129>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] data mining/text mining?
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

Dear Ruixin:
Among others, text mining is dealing with non-structural data while
data mining mainly focuses on structural one. Many algorithms can be
shared b/w them; however, some necessary data preprocessing is
required for text mining. There are a lot of online-resource there.

As to packages used for text mining in R, esp. for preprocessing,
please check the following link:
http://wwwpeople.unil.ch/jean-pierre.mueller/

I used that package very long time ago and am not sure if they are
updated for this current version of R; otherwise, you might need to go
back the old version like R1.1.

If you want to do text mining for chinese text (I guess :), there is
additional work (i.e. word splitting) needed. I remember there is some
researcher from Taiwan who does pretty good work and you can google
that. I cannot remember the details.

HTH,

Weiwei


On 6/8/07, Ruixin ZHU <rxzhu@scbit.org> wrote:
> Dear R-user,
>
> Could anybody tell me of the key difference between data mining and text
> mining?
> Please make a list for packages about data/text mining.
> And give me an example of text mining with R (any relating materials
> will be highly appreciated), because a vignette written by Ingo Feinerer
> seems too concise for me.
>
> Thanks
> _____________________________________________
> Dr.Ruixin ZHU
> Shanghai Center for Bioinformation Technology
> rxzhu@scbit.org
> zhurx@mail.sioc.ac.cn
> 86-21-13040647832
>
>
>         [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>


-- 
Weiwei Shi, Ph.D
Research Scientist
GeneGO, Inc.

"Did you always know?"
"No, I did not. But I believed..."
---Matrix III

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

zc�D s