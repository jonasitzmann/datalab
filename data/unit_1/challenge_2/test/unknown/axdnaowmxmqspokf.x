From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 04:16:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L8GWL9021715
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 04:16:33 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L8Frbr005526;
	Thu, 21 Jun 2007 10:16:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, WEIRD_PORT autolearn=no version=3.2.0
Received: from slim.kubism.ku.dk (slim.kubism.ku.dk [192.38.18.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L8FU5d005354
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 10:15:30 +0200
Received: from [192.38.18.17] (viggo.kubism.ku.dk [192.38.18.17])
	by slim.kubism.ku.dk (Postfix) with ESMTP id 5B9DC65950;
	Thu, 21 Jun 2007 10:15:30 +0200 (CEST)
Message-ID: <467A33A2.1000103@biostat.ku.dk>
Date: Thu, 21 Jun 2007 10:15:30 +0200
From: Peter Dalgaard <P.Dalgaard@biostat.ku.dk>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: Don MacQueen <macq@llnl.gov>
References: <4A6AB38B55B49C44A22E021A83CBEDDB015EB982@sr-pnr-exch3.prairie.int.ec.gc.c	a>
	<p06240801c29f5d575c15@[192.168.52.239]>
In-Reply-To: <p06240801c29f5d575c15@[192.168.52.239]>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5L8FU5d005354
Cc: r-help@stat.math.ethz.ch,
   "Spilak,
	Jacqueline \[Edm\]" <Jacqueline.Spilak@EC.gc.ca>
Subject: Re: [R] Replace number with month
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
Content-Type: text/plain; charset="utf-8"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5L8GWL9021715

Don MacQueen wrote:> You can get the names using>>    month.name[MM]>>> And it may be necessary to use>>      factor(month.name[MM], levels=month.name[1:12])>> to get them to show up in the correct order in the barchart.>   
You're crossing the creek to fetch water there, and getting yourselfsoaked in the process... (by an unnecessary conversion to characterwhich is subject to alphabetical sorting)
I think the canonical way is
factor(MM, levels=1:12, labels=month.name)
(and the levels=1:12 may not even be necessary when all 12 months arepresent)
--    O__  ---- Peter Dalgaard             Øster Farimagsgade 5, Entr.B  c/ /'_ --- Dept. of Biostatistics     PO Box 2099, 1014 Cph. K (*) \(*) -- University of Copenhagen   Denmark          Ph:  (+45) 35327918~~~~~~~~~~ - (p.dalgaard@biostat.ku.dk)                  FAX: (+45) 35327907
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

          

r aX felxJ