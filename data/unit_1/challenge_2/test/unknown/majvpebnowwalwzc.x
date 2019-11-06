From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 22:06:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l6326NL9022177
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 22:06:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l6324KGQ024611;
	Tue, 3 Jul 2007 04:04:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailhost.auckland.ac.nz (larry.its.auckland.ac.nz
	[130.216.12.34])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l631wA3I022935
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 03:58:11 +0200
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mailhost.auckland.ac.nz (Postfix) with ESMTP id 28550183B4;
	Tue,  3 Jul 2007 13:58:09 +1200 (NZST)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Received: from mailhost.auckland.ac.nz ([127.0.0.1])
	by localhost (larry.its.auckland.ac.nz [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Je9e5K9BPfWb; Tue,  3 Jul 2007 13:58:09 +1200 (NZST)
Received: from acemm03n.foed.auckland.ac.nz (ace-104-31.auckland.ac.nz
	[130.216.104.31])
	by mailhost.auckland.ac.nz (Postfix) with ESMTP id 58936183A0;
	Tue,  3 Jul 2007 13:58:08 +1200 (NZST)
Received: from foedmail01n.foed.auckland.ac.nz (Not Verified[130.216.104.116])
	by acemm03n.foed.auckland.ac.nz with MailMarshal (v6, 1, 8, 2172)
	id <B4689ad300000>; Tue, 03 Jul 2007 13:58:08 +1200
Received: from [130.216.107.232] ([130.216.107.232]) by
	foedmail01n.foed.auckland.ac.nz with Microsoft
	SMTPSVC(6.0.3790.3959); Tue, 3 Jul 2007 13:58:08 +1200
In-Reply-To: <4ad306f30707021828o790b3ec1j49a932cf97b39b95@mail.gmail.com>
References: <4ad306f30707021828o790b3ec1j49a932cf97b39b95@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v752.3)
Message-Id: <E59A0BB7-FC46-4B68-B244-D452B6884E36@auckland.ac.nz>
From: Rolf Turner <r.turner@auckland.ac.nz>
Date: Tue, 3 Jul 2007 13:58:08 +1200
To: "Vineet Kumar" <ivineet@gmail.com>
X-Mailer: Apple Mail (2.752.3)
X-OriginalArrivalTime: 03 Jul 2007 01:58:08.0492 (UTC)
	FILETIME=[9A5A4AC0:01C7BD15]
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] generating correlated Bernoulli random variables
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


On 3/07/2007, at 1:28 PM, Vineet Kumar wrote:

> Hi all,
> I was wondering how to generate samples for two RVs X1 and X2.
>
> X1 ~ Bernoulli (p1)
> X2 ~ Bernoulli (p2)
>
> Also, X1 and X2 are correlated with correlation \rho.

Back-of-envelope calculation, not checked, not tested:

	Let q1 = p2 + (rho/p1) * sqrt((1-p1)*(1-p2))

                q2 = (p2 - q1*p1)/(1-p1)

	Generate X1 with success probability p1.
	If X1 = 1, generate X2 with probability q1, else generate X2 with  
probability q2.

	Clearly there must be restrictions on the value of rho (in terms of  
p1 and p2) in
	order that the values of q1 and q2 lie between 0 and 1.

	I.e. for some values of rho your goal will be impossible to achieve.

				cheers,

					Rolf Turner

######################################################################
Attention:\ This e-mail message is privileged and confidenti...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

Lc-cbnnrvaxo