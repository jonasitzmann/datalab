From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 09:33:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55DWwhB009472
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 09:33:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55DW98K013558;
	Tue, 5 Jun 2007 15:32:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from tomts25-srv.bellnexxia.net (tomts25.bellnexxia.net
	[209.226.175.188])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55DRXlY011442
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 15:27:34 +0200
Received: from JohnDesktop8300 ([65.95.117.66]) by tomts25-srv.bellnexxia.net
	(InterMail vM.5.01.06.13 201-253-122-130-113-20050324) with ESMTP id
	<20070605132732.SHXI25739.tomts25-srv.bellnexxia.net@JohnDesktop8300>;
	Tue, 5 Jun 2007 09:27:32 -0400
From: "John Fox" <jfox@mcmaster.ca>
To: "'Hilmar Berger'" <hilmar.berger@imise.uni-leipzig.de>
Date: Tue, 5 Jun 2007 09:27:28 -0400
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook, Build 11.0.6353
In-Reply-To: <f43ke2$nnc$1@sea.gmane.org>
Thread-Index: Acenbi+Wza/boC1iQZyJTN/LYtvhDgABuy8g
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
Message-Id: <20070605132732.SHXI25739.tomts25-srv.bellnexxia.net@JohnDesktop8300>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l55DRXlY011442
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Refactor all factors in a data frame
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l55DWwhB009472

Dear Hilmar,

You could use something like

DF <- as.data.frame(lapply(DF, function (x) if (is.factor(x)) factor(x) else
x))

Where DF is the data frame.

I hope this helps,
 John

--------------------------------
John Fox, Professor
Department of Sociology
McMaster University
Hamilton, Ontario
Canada L8S 4M4
905-525-9140x23604
http://socserv.mcmaster.ca/jfox 
-------------------------------- 

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Hilmar Berger
> Sent: Tuesday, June 05, 2007 8:20 AM
> To: r-help@stat.math.ethz.ch
> Subject: [R] Refactor all factors in a data frame
> 
> Hi all,
> 
> Assume I have a data frame with numerical and factor 
> variables that I got through merging various other data 
> frames and subsetting the resulting data frame afterwards. 
> The number levels of the factors seem to be the same as in 
> the original data frames, probably because subset() calls 
> [.factor without drop = TRUE (that's what I gather from 
> scanning the mailing lists).
> 
> I wonder if there is a easy way to refactor all factors in 
> the data frame at once. I noted that fix(data_frame) does the 
> trick, however, this needs user interaction, which I'd like 
> to avoid. Subsequent write.table / read.table would be 
> another option but I'm not sure if R can guess the 
> factor/char/numeric-type correctly when reading the table.
> 
> So, is there any way in drop the unused factor levels from 
> *all* factors of a data frame without import/export ?
> 
> Thanks in advance,
> Hilmar
> 
> -- 
> 
> Hilmar Berger
> Studienkoordinator
> Institut f�r medizinische Informatik, Statistik und 
> Epidemiologie Universit�t Leipzig H�rtelstr. 16-18
> D-04107 Leipzig
> 
> Tel. +49 341 97 16 101
> Fax. +49 341 97 16 109
> email: hilmar.berger@imise.uni-leipzig.de
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

ha=4a&l8i4ttet