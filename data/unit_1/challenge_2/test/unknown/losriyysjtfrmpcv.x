From r-help-bounces@stat.math.ethz.ch  Sun Jun 10 12:52:44 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5AGqhL9004524
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 10 Jun 2007 12:52:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AGq7ef005191;
	Sun, 10 Jun 2007 18:52:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from wiggis.ethz.ch (wiggis.ethz.ch [129.132.86.197])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AGnrXR004447
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 18:49:53 +0200
Received: from localhost (wiggis1.ethz.ch [192.168.127.2])
	by wiggis.ethz.ch (Postfix) with ESMTP
	id 0B198421B; Sun, 10 Jun 2007 18:49:53 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Received: from [192.168.0.21] (77-56-82-144.dclient.hispeed.ch [77.56.82.144])
	by wiggis.ethz.ch (Postfix) with ESMTP
	id 451174046; Sun, 10 Jun 2007 18:49:51 +0200 (CEST)
Message-ID: <466C2BA6.2090207@itp.phys.ethz.ch>
Date: Sun, 10 Jun 2007 18:49:42 +0200
From: Diethelm Wuertz <wuertz@itp.phys.ethz.ch>
Organization: ITP ETH Zuerich
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Ryuichi Tamura <ry.tamura@gmail.com>, r-help@stat.math.ethz.ch
References: <fddff77c0702122134u878f9ecg9b75208e964cc1e@mail.gmail.com>
	<fddff77c0706070836ie2a9420jfaf18a9181cec046@mail.gmail.com>
In-Reply-To: <fddff77c0706070836ie2a9420jfaf18a9181cec046@mail.gmail.com>
Subject: Re: [R] Rdonlp2 - an extension library for constrained optimization
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

Ryuichi Tamura wrote:

Please can you put your package on the CRAN server ?

Many thanks
Diethelm Wuertz

> Hello R-list,
>
> I have released an update version (0.3-1) of Rdonlp2.
> Some (fatal) bugs which may kill interpreter should be fixed.
>
> In addition, user-visible changes are:
> * *.mes, *.pro files are not created if name=NULL(this is default) in donlp2().
> * use "machine-epsilon"s defined in R for internal
> calculations(step-size, etc.).
> * numeric hessian is now evaluated at the optimum and calculated with
>   the algorithm specified in 'difftype' in donlp2.control(). Setting
> difftype=2 will
>   produce (roughly) same value as optim() does.
>
> I sincerely appreciate users who sent me useful comments.
>
> Windows Binary, OSX Universal Binary, Source file are available at:
>
> http://arumat.net/Rdonlp2/
>
> Regards,
>
> TAMURA Ryuichi,
> mailto: ry.tamura@gmail.com
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

fTo4..n>9i-n