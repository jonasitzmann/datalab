From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 03:43:36 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l567hZhB018671
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 03:43:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l567gpig031757;
	Wed, 6 Jun 2007 09:43:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pastel.toulouse.inra.fr (pastel.toulouse.inra.fr
	[147.99.111.242])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l567gj6c031731
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 09:42:45 +0200
Received: from [147.99.96.190] (camboue.toulouse.inra.fr [147.99.96.190])
	by pastel.toulouse.inra.fr (/8.13.7) with ESMTP id l567ggqC014293;
	Wed, 6 Jun 2007 09:42:42 +0200 (MEST)
Message-ID: <46666543.1050202@toulouse.inra.fr>
Date: Wed, 06 Jun 2007 09:41:55 +0200
From: Laurence Amilhat <Laurence.Amilhat@toulouse.inra.fr>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: "Kuhn, Max" <Max.Kuhn@pfizer.com>
References: <71257D09F114DA4A8E134DEAC70F25D3088F80FB@groamrexm03.amer.pfizer.com>
In-Reply-To: <71257D09F114DA4A8E134DEAC70F25D3088F80FB@groamrexm03.amer.pfizer.com>
X-Greylist: Sender DNS name whitelisted, not delayed by milter-greylist-1.6
	(pastel.toulouse.inra.fr [147.99.111.242]);
	Wed, 06 Jun 2007 09:42:42 +0200 (MEST)
X-Miltered: at pastel with ID 46666572.000 by Joe's j-chkmail
	(http://j-chkmail.ensmp.fr)!
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Virus-Status: Clean
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] odfTable
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l567hZhB018671

Great,

I will waiting for the new version... with the nice documentation!

thank you,

Laurence.


Kuhn, Max a �crit :
> Sarah and Laurence,
>
> A few comments:
>
>   1. The default background color for columns is horrible. I've changed
> to white it in the upcoming version.
>
>   2. In the next version (in 1-2 weeks), I have a fairly long document
> that goes into much more detail about the specific styles that can be
> changed and examples.
>
>   3. To simply Sarah's approach, add the style definition via
> setStyleDefs(existingStyles) as suggested. Then, just before making the
> table, simply use
>
> current <- getStyles()
> currrent$header <- "newStyle1"
> setStyles(current)
>
>      then produce the table. Unless I'm not understanding what you want,
> you shouldn't need to use tableStyles.
>
> If anyone wants the new version while I finish a few of the
> documentation pages, send me an email off-list and I'll send it to you.
>
> Thanks,
>
> Max
>
> ----------------------------------------------------------------------
> LEGAL NOTICE\ Unless expressly stated otherwise, this messag...{{dropped}}
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>   


-- 
====================================================================
= Laurence Amilhat    INRA Toulouse 31326 Castanet-Tolosan     	   = 
= Tel: 33 5 61 28 53 34   Email: laurence.amilhat@toulouse.inra.fr =

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

 eirdS0�w
rm6