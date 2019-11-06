From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 11:31:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TFVaL9027564
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 11:31:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TFTxNp009917;
	Fri, 29 Jun 2007 17:30:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from gateway1.jhsph.edu (gateway1.jhsph.edu [162.129.40.71])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TFTjpm009855
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 17:29:45 +0200
X-SBRS-GW1: None
X-IronPort-AV: E=Sophos;i="4.16,475,1175486400"; d="scan'208";a="107366181"
Received: from unknown (HELO owa-2.sph.ad.jhsph.edu) ([10.253.10.243])
	by gateway1.jhsph.edu with ESMTP; 29 Jun 2007 11:29:45 -0400
Received: from owa-2.sph.ad.jhsph.edu ([10.253.10.240]) by
	owa-2.sph.ad.jhsph.edu with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 29 Jun 2007 11:29:44 -0400
Received: from [192.168.1.5] ([172.30.34.62]) by owa-2.sph.ad.jhsph.edu with
	Microsoft SMTPSVC(6.0.3790.1830); Fri, 29 Jun 2007 11:29:44 -0400
In-Reply-To: <46851FB9.1090105@biostat.ku.dk>
References: <2FAF9CA2-DAC4-4610-AFE6-90E495656FA5@jhsph.edu>
	<46851FB9.1090105@biostat.ku.dk>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <84A499CE-BEF6-435D-85C3-25E2059DFB56@jhsph.edu>
From: Benilton Carvalho <bcarvalh@jhsph.edu>
Date: Fri, 29 Jun 2007 11:29:42 -0400
To: Peter Dalgaard <P.Dalgaard@biostat.ku.dk>
X-Mailer: Apple Mail (2.752.2)
X-OriginalArrivalTime: 29 Jun 2007 15:29:44.0179 (UTC)
	FILETIME=[51977430:01C7BA62]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5TFTjpm009855
Cc: "r-help@stat.math.ethz.ch R-help" <r-help@stat.math.ethz.ch>
Subject: Re: [R] Comparison: glm() vs. bigglm()
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5TFVaL9027564

Hi Peter,

thank you very much for your feedback.

As for your observations, I do realize that I'm using 1.5 chunks for  
this particular case (10e6 gives around 8 chunks on other sets).

I just noticed that I didn't add the difference in the deviances that  
I observed:

m1$deviance-m2$deviance
[1] -93196.69

Thank you very much for the suggestion, I'll give it a try.

Best,
benilton

On Jun 29, 2007, at 11:05 AM, Peter Dalgaard wrote:

> Benilton Carvalho wrote:
>> Hi,
>>
>> Until now, I thought that the results of glm() and bigglm() would
>> coincide. Probably a naive assumption?
>>
>> Anyways, I've been using bigglm() on some datasets I have available.
>> One of the sets has >15M observations.
>>
>> I have 3 continuous predictors (A, B, C) and a binary outcome (Y).
>> And tried the following:
>>
>> m1 <- bigglm(Y~A+B+C, family=binomial(), data=dataset1,  
>> chunksize=10e6)
>> m2 <- bigglm(Y~A*B+C, family=binomial(), data=dataset1,  
>> chunksize=10e6)
>> imp <- m1$deviance-m2$deviance
>>
>> For my surprise "imp" was negative.
>>
>> I then tried the same models, using glm() instead... and as I
>> expected, "imp" was positive.
>>
>> I also noticed differences on the coefficients estimated by glm() and
>> bigglm() - small differences, though, and CIs for the coefficients (a
>> given coefficient compared across methods) overlap.
>>
>> Are such incrongruences expected? What can I use to check for
>> convergence with bigglm(), as this might be one plausible cause for a
>> negative difference on the deviances?
>>
> It doesn't sound right, but I cannot reproduce your problem on a  
> similar
> sized problem (it pretty much killed my machine...). Some  
> observations:
>
> A: You do realize that you are only using 1.5 chunks? (15M vs. 10e6
> chunksize)
>
> B: Deviance changes are O(1) under the null hypothesis but the  
> deviances
> themselves are O(N). In a smaller variant (N=1e5), I got
>
>> m1$deviance
> [1] 138626.4
>> m2$deviance
> [1] 138626.4
>> m2$deviance - m1$deviance
> [1] -0.05865785
>
> This does leave some scope for roundoff to creep in. You may want to
> play with a lower setting of tol=...
>
> -- 
>    O__  ---- Peter Dalgaard             �ster Farimagsgade 5, Entr.B
>   c/ /'_ --- Dept. of Biostatistics     PO Box 2099, 1014 Cph. K
>  (*) \(*) -- University of Copenhagen   Denmark          Ph:  (+45)  
> 35327918
> ~~~~~~~~~~ - (p.dalgaard@biostat.ku.dk)                  FAX: (+45)  
> 35327907
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

Bnp
oKe