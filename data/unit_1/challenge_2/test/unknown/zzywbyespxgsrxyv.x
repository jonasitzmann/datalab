From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 17:33:10 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SLX8L9015904
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 17:33:09 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SLWH9o032194;
	Thu, 28 Jun 2007 23:32:37 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from dshsmxoly1504x.dshs.wa.gov (dshsmxoly1504x.dshs.wa.gov
	[147.56.163.40])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SLJ3Ti027012
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 23:19:04 +0200
X-WSS-ID: 0JKD787-03-5GM-01
Received: from dshsmxoly1504w1.dshs.wa.gov (dshsmxoly1504w1.dshs.wa.lcl
	[147.56.163.39])
	by dshsmxoly1504x.dshs.wa.gov (Tumbleweed MailGate) with ESMTP id
	728FC9FDB53
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 14:19:18 -0700 (PDT)
Received: from [147.56.163.29] by dshsmxoly1504w1.dshs.wa.gov with ESMTP
	(SMTP Relay (Email Firewall v6.3.1)); Thu, 28 Jun 2007 14:18:52 -0700
X-Server-Uuid: 7DF95734-8263-4399-9709-24D32820BD16
Received: from dshsmxoly1504g.dshs.wa.lcl ([147.56.163.16]) by
	dshsmxoly1504t.dshs.wa.lcl with Microsoft SMTPSVC(6.0.3790.3959); Thu,
	28 Jun 2007 14:18:52 -0700
Content-class: urn:content-classes:message
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft Exchange V6.5
Date: Thu, 28 Jun 2007 14:18:52 -0700
Message-ID: <941871A13165C2418EC144ACB212BDB04E1323@dshsmxoly1504g.dshs.wa.lcl>
In-Reply-To: <c0792190706281331w1f8088a1hbad0e79cb91d18fd@mail.gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Wilcoxon Rank Sum Test.
Thread-Index: Ace5yHd0PKL0EjIOQJWfJz6nisx3LQAAO7cw
References: <c0792190706281331w1f8088a1hbad0e79cb91d18fd@mail.gmail.com>
From: "Nordlund, Dan (DSHS/RDA)" <NordlDJ@dshs.wa.gov>
To: r-help@stat.math.ethz.ch
X-OriginalArrivalTime: 28 Jun 2007 21:18:52.0586 (UTC)
	FILETIME=[ED66F0A0:01C7B9C9]
X-TMWD-Spam-Summary: TS=20070628211858; SEV=2.2.2; DFV=B2007062817;
	IFV=2.0.4,4.0-9; AIF=B2007062817; RPD=5.02.0125; ENG=IBF;
	RPDID=7374723D303030312E30413031303230362E34363834323542452E303030362C73733D312C6667733D30;
	CAT=NONE; CON=NONE
X-WSS-ID: 6A9AFA361QK592363-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5SLJ3Ti027012
Subject: Re: [R] Wilcoxon Rank Sum Test.
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


> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Marcus Vinicius
> Sent: Thursday, June 28, 2007 1:32 PM
> To: r-help@stat.math.ethz.ch
> Subject: [R] Wilcoxon Rank Sum Test.
> 
> Dear,
> 
> I'm using R software to evaluate Wilcoxon Rank Sum Test and 
> I' getting one
> Warning message as this:
> 
> > C1dea_com
>  [1] 1.000 0.345 0.200 0.208 0.508 0.480 0.545 0.563 0.451 
> 0.683 0.380 0.913
> 1.000 0.506
> > C1dea_sem
>  [1] 1.000 0.665 0.284 0.394 0.509 0.721 0.545 0.898 0.744 
> 0.683 0.382 0.913
> 1.000 0.970
> 
> 
> > wilcox.test(C1dea_sem,C1dea_com, paired = TRUE, alternative 
> = "two.sided")
> 
>         Wilcoxon signed rank test with continuity correction
> 
> data:  C1dea_sem and C1dea_com
> V = 45, p-value = 0.009152
> alternative hypothesis: true mu is not equal to 0
> 
> Warning message:
> Cannot compute exact p-value with zeroes in: 
> wilcox.test.default(C1dea_sem,
> C1dea_com, paired = TRUE, alternative = "two.sided")
> 
> What is happening?
> 
> Best Regards,
> 
> Marcus Vinicius
> 

Marcus,

It means that you have one or more pairs of observations (5 in your case) where the difference is 0.  The wilcox.test can only compute an approximate p-value under these circumstances.

Hope this is helpful,

Dan

Daniel J. Nordlund
Research and Data Analysis
Washington State Department of Social and Health Services
Olympia, WA  98504-5204

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

 eet
27y6(6