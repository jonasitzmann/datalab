From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 13:58:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5IHvwL9020280
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 13:57:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IHtqpe007118;
	Mon, 18 Jun 2007 19:56:08 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from paleo.ija.csic.es (paleo.ija.csic.es [193.144.102.10])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IHtk1d007087
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 19:55:46 +0200
Received: from [193.144.102.199] (jgarcia.ija.csic.es [193.144.102.199])
	by paleo.ija.csic.es (8.13.1/8.13.1) with ESMTP id l5IHuhAR010536
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 19:56:43 +0200
Message-ID: <4676C8D9.4010009@ija.csic.es>
Date: Mon, 18 Jun 2007 20:03:05 +0200
From: javier garcia-pintado <jgarcia@ija.csic.es>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.11) Gecko/20050727
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: R-help mailing list <r-help@stat.math.ethz.ch>
Content-Type: multipart/mixed; boundary="------------050705040508090702050100"
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Content-Filtered-By: Mailman/MimeDel 2.1.9
Subject: [R] chron() question
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
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

This is a multi-part message in MIME format.
--------------050705040508090702050100
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

Hi all,
I'm using chron and it seems to me that there is a strange behaviour
when constructing chronological objects.
An extract of my source data is:

> tdr.hhmm[4860:4870]
 [1] "22:22:00" "22:42:00" "23:02:00" "23:22:00" "23:42:00" "00:02:00"
 [7] "00:22:00" "00:42:00" "01:02:00" "01:22:00" "01:42:00"
> tdr.dat$year[4860:4870]
 [1] 2005 2005 2005 2005 2005 2006 2006 2006 2006 2006 2006
> tdr.dat$day[4860:4870]
 [1] 365 365 365 365 365   1   1   1   1   1   1

And if I use:
> tdr.chron <- 
chron(dates.=tdr.dat$day,times.=tdr.hhmm,origin.=c(month=1,day=0,year=tdr.dat$year),format=c(dates="d/m/y",times="h:m:s"))
The result is:

> tdr.chron[4860:4870]
 [1] (31/12/05 22:22:00) (31/12/05 22:42:00) (31/12/05 23:02:00)
 [4] (31/12/05 23:22:00) (31/12/05 23:42:00) (01/01/05 00:02:00)
 [7] (01/01/05 00:22:00) (01/01/05 00:42:00) (01/01/05 01:02:00)
[10] (01/01/05 01:22:00) (01/01/05 01:42:00)

While it seems to me that, through the R recycling rule, it should
consider the year 2006 in the corresponding results. Isn't it so?

Wishes,
Javier

-- 
Javier Garc�a-Pintado
Institute of Earth Sciences Jaume Almera (CSIC)
Lluis Sole Sabaris s/n, 08028 Barcelona
Phone: +34 934095410
Fax:   +34 934110012
e-mail:jgarcia@ija.csic.es 


--------------050705040508090702050100
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--------------050705040508090702050100--

      

C-codclSf