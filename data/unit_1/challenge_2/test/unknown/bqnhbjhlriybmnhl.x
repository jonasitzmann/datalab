From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 17:19:50 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63LJnL9001615
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 17:19:50 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63LIOrA014377;
	Tue, 3 Jul 2007 23:18:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailgate04.smtp.vanderbilt.edu (mailgate04.smtp.Vanderbilt.Edu
	[129.59.1.75])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63LI6ST014271
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 23:18:08 +0200
Received: from smtp09.smtp.vanderbilt.edu (smtp09.smtp.Vanderbilt.Edu
	[129.59.1.239])
	by mailgate04.smtp.vanderbilt.edu (8.13.8/8.13.8) with ESMTP id
	l63LI4df019626
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 3 Jul 2007 16:18:04 -0500
Received: from smtp09.smtp.vanderbilt.edu (localhost [127.0.0.1])
	by smtp09.smtp.vanderbilt.edu (8.12.11/8.12.11/VU-3.7.9C+d3.7.9) with
	ESMTP id l63LI4RX008290; Tue, 3 Jul 2007 16:18:04 -0500 (CDT)
Received: from [160.129.116.158] ([160.129.116.158])
	by smtp09.smtp.vanderbilt.edu (8.12.11/8.12.11/VU-3.7.9.3B+d3.7.9) with
	ESMTP id l63LI3Va008287; Tue, 3 Jul 2007 16:18:03 -0500 (CDT)
Message-ID: <468ABD1D.2060205@vanderbilt.edu>
Date: Tue, 03 Jul 2007 16:18:21 -0500
From: Frank E Harrell Jr <f.harrell@vanderbilt.edu>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: "Madero Jarabo, Rosario" <rmadero.hulp@salud.madrid.org>
References: <D014BFACDE98D04A959B126EB9934FDC02E54B0E@cexmadbe0301.tdatamail.tde>
In-Reply-To: <D014BFACDE98D04A959B126EB9934FDC02E54B0E@cexmadbe0301.tdatamail.tde>
X-Proofpoint-Virus-Version: vendor=fsecure engine=4.65.5502:2.3.11, 1.2.37,
	4.0.164 definitions=2007-07-03_13:2007-07-03, 2007-07-03,
	2007-07-03 signatures=0
X-PPS: No, score=0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Harrell's C
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l63LJnL9001615

Madero Jarabo, Rosario wrote:
> I need to calculate Harrell's C for some survival analyses using Design package with R version 2.4.1. �How can I try or do it?
> 
> Rosario Madero
> Secci�n de Bioestad�stica
> Hospital Universitario La Paz
> P�de la Castellana, 261
> 28046 Madrid, Espa�a
> Tfno: 917277112
> rmadero.hulp@salud.madrid.org

It's in the documention with the Hmisc package.  Type
?rcorr.cens
?rcorrp.cens

Frank

-- 
Frank E Harrell Jr   Professor and Chair           School of Medicine
                      Department of Biostatistics   Vanderbilt University

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

RKr1/+w)il<n4