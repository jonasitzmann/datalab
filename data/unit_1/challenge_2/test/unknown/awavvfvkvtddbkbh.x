From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 16:56:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BKufL9018730
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 16:56:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BKt8L8030668;
	Mon, 11 Jun 2007 22:55:25 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=AWL, BAYES_05,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BKswPj030606
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 22:54:59 +0200
Received: by wa-out-1112.google.com with SMTP id j37so2480524waf
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 13:54:58 -0700 (PDT)
Received: by 10.114.179.1 with SMTP id b1mr5899838waf.1181595297799;
	Mon, 11 Jun 2007 13:54:57 -0700 (PDT)
Received: by 10.114.61.19 with HTTP; Mon, 11 Jun 2007 13:54:57 -0700 (PDT)
Message-ID: <624934630706111354l4fd00777o4b5172800a75c354@mail.gmail.com>
Date: Mon, 11 Jun 2007 22:54:57 +0200
From: "Ramon Diaz-Uriarte" <rdiaz02@gmail.com>
To: schmidb@ibe.med.uni-muenchen.de
In-Reply-To: <466D3C0D.1070800@ibe.med.uni-muenchen.de>
MIME-Version: 1.0
Content-Disposition: inline
References: <466D3C0D.1070800@ibe.med.uni-muenchen.de>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5BKswPj030606
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] simultaneous computing
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5BKufL9018730

Dear Markus,

You might want to check Rmpi, papply, snow, rpvm, and nws.

Best,

R.

On 6/11/07, Markus Schmidberger <schmidb@ibe.med.uni-muenchen.de> wrote:
> Hello,
>
> which possibilities are available in R for simultaneous or parallel
> computing?
> I only could find biopara
> (http://cran.r-project.org/src/contrib/Descriptions/biopara.html)
>
> Are there other possibilities?
> Are there special groups working on simultaneous computing with R?
>
> Thanks
> Markus
>
> --
> Dipl.-Tech. Math. Markus Schmidberger
>
> Ludwig-Maximilians-Universit�t M�nchen
> IBE - Institut f�r medizinische Informationsverarbeitung,
> Biometrie und Epidemiologie
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>


-- 
Ramon Diaz-Uriarte
Statistical Computing Team
Structural Biology and Biocomputing Programme
Spanish National Cancer Centre (CNIO)
http://ligarto.org/rdiaz

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

fxrot=