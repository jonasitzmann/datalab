From r-help-bounces@stat.math.ethz.ch  Sun Jun  3 06:38:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53AcohB014658
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 06:38:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53AcBMc018822;
	Sun, 3 Jun 2007 12:38:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from nx5.hrz.uni-dortmund.de (nx5.HRZ.Uni-Dortmund.DE
	[129.217.131.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53AbxHc018772
	for <r-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 12:37:59 +0200
Received: from mail.statistik.uni-dortmund.de (mail.Statistik.Uni-Dortmund.DE
	[129.217.206.4])
	by nx5.hrz.uni-dortmund.de (Postfix) with ESMTP id F3F6A11FED;
	Sun,  3 Jun 2007 12:37:58 +0200 (MET DST)
Received: from [129.217.137.30] (dfnathome030.hrz.uni-dortmund.de
	[129.217.137.30])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.statistik.uni-dortmund.de (Postfix) with ESMTP id 7312735C911; 
	Sun,  3 Jun 2007 12:37:47 +0200 (CEST)
Message-ID: <46629A08.5030403@statistik.uni-dortmund.de>
Date: Sun, 03 Jun 2007 12:38:00 +0200
From: Uwe Ligges <ligges@statistik.uni-dortmund.de>
Organization: Fachbereich Statistik, =?ISO-8859-1?Q?Universit=E4t_Dortm?=
	=?ISO-8859-1?Q?und?=
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.8.0.7) Gecko/20060910 SeaMonkey/1.0.5
MIME-Version: 1.0
To: "Bojanowski, M.J. \(Michal\)" <M.J.Bojanowski@uu.nl>
References: <c98270fd0706021413i3d1e31f9q524865f88c7b491b@mail.gmail.com>
	<94E133D09AA24D43BF6341B675C01A338DCD5F@uu01msg-exb01.soliscom.uu.nl>
In-Reply-To: <94E133D09AA24D43BF6341B675C01A338DCD5F@uu01msg-exb01.soliscom.uu.nl>
X-FB05-MailScanner: clean
X-FB05-MailScanner-SpamCheck: not spam, SpamAssassin (Wertung=-5.899,
	benoetigt 4.5, autolearn=disabled, ALL_TRUSTED -3.30,
	BAYES_00 -2.60)
X-FB05-MailScanner-From: ligges@statistik.uni-dortmund.de
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: Raghu Naik <naik.raghu@gmail.com>, r-help@stat.math.ethz.ch
Subject: Re: [R] ODP:  Updating R version
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l53AcohB014658



Bojanowski, M.J. (Michal) wrote:
> Is R not loading the packages at all (like they were never installed), or perhaps it is complaining that they were build on the older version of R? You have to be more specific here about what happens etc.
> 
> For now try running update.packages and see if it fixes the problem.

Or more precisely, try
    update.packages(checkBuilt = TRUE)

In any case, telling what you did and what the error message was would 
be much helpful in order to help.

Uwe Ligges


> I would also suggest keeping all the additional packages (beyond R base installation) in the separate library tree -- less work every time you update R. See ?library and ?.libPaths
> 
> 
> hth,
> 
> Michal
> 
> :
> ::
> ::: Note that my e-mail address has changed to m.j.bojanowski at uu dot nl
> ::: Please update you address books accordingly. Thank you!
> ::
> :
> 
> 
> ____________________________________
> Michal Bojanowski
> ICS / Department of Sociology
> Utrecht University
> Heidelberglaan 2; 3584 CS Utrecht
> Room 1428
> m.j.bojanowski at uu dot nl
> http://www.fss.uu.nl/soc/bojanowski/
> 
> 
> 
> -----Wiadomo�� oryginalna-----
> Od: r-help-bounces@stat.math.ethz.ch w imieniu Raghu Naik
> Wys�ano: So 2007-06-02 23:13
> Do: r-help@stat.math.ethz.ch
> Temat: [R] Updating R version
> 
> A quick question.  I am trying to understand how I could move the installed
> packages in my R 2.3 version to the newly installed R 2.5 version, without
> having to install all the packages again. I copied the files under the old
> library subdirectory to the new library subdirectory. But still the newer
> version is not recognizing the packages that were copied over.
> 
> Thanks.
> 
> 	[[alternative HTML version deleted]]
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 
> 	[[alternative HTML version deleted]]
> 
> 
> 
> ------------------------------------------------------------------------
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

O SZdtKw<oOs