From r-help-bounces@stat.math.ethz.ch  Sun Jun 17 12:21:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5HGLYL9008548
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 12:21:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HGJvSu024039;
	Sun, 17 Jun 2007 18:20:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp2a.orange.fr (smtp2a.orange.fr [80.12.242.138])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HGJmvf024006
	for <r-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 18:19:48 +0200
Received: from me-wanadoo.net (localhost [127.0.0.1])
	by mwinf2a01.orange.fr (SMTP Server) with ESMTP id 0383A7000095
	for <r-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 18:19:48 +0200 (CEST)
Received: from [134.214.233.117] (ALyon-156-1-110-157.w86-216.abo.wanadoo.fr
	[86.216.205.157])
	by mwinf2a01.orange.fr (SMTP Server) with ESMTP id 7A8167000099
	for <r-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 18:19:47 +0200 (CEST)
X-ME-UUID: 20070617161947501.7A8167000099@mwinf2a01.orange.fr
Mime-Version: 1.0
Message-Id: <p06002023c29b0d2da560@[134.214.233.117]>
In-Reply-To: <mailman.13.1181988006.1116.r-help@stat.math.ethz.ch>
References: <mailman.13.1181988006.1116.r-help@stat.math.ethz.ch>
Date: Sun, 17 Jun 2007 18:19:41 +0200
To: r-help@stat.math.ethz.ch
From: Jean lobry <lobry@biomserv.univ-lyon1.fr>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] clustalW
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5HGLYL9008548

>  Hello,
>
>  I try to make directly with R a multiple alignment querying CLUSTAL W,
>  do you know how can I do this?
>
>  Thanks
>
>  J�r�my Mazet

See ?system on how to run an external program. There is an example
in the reverse.align() function from the seqinR package in which clustalW
can be run on the fly to align CDS at the amino-acid level:
http://pbil.univ-lyon1.fr/software/SeqinR/SEQINR_CRAN/DOC/html/reverse.align.html

HTH,
-- 
Jean R. Lobry            (lobry@biomserv.univ-lyon1.fr)
Laboratoire BBE-CNRS-UMR-5558, Univ. C. Bernard - LYON I,
43 Bd 11/11/1918, F-69622 VILLEURBANNE CEDEX, FRANCE
allo  : +33 472 43 27 56     fax    : +33 472 43 13 88
http://pbil.univ-lyon1.fr/members/lobry/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

/oes3mt8.a	