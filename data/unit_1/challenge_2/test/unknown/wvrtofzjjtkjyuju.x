From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 20:00:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l6600sL9000605
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 20:00:55 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65NxZSG025681;
	Fri, 6 Jul 2007 01:59:49 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from eesrelay.gov.on.ca (eesuatrelay.gov.on.ca [142.107.104.126])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65NxR23025654
	for <r-help@lists.R-project.org>; Fri, 6 Jul 2007 01:59:28 +0200
Received: from ctspitdcemgtw04.cihs.ad.gov.on.ca ([10.86.73.22]) by
	eesrelay.gov.on.ca with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 5 Jul 2007 19:59:26 -0400
Received: from CTSPITDCEMMVX14.cihs.ad.gov.on.ca ([10.86.73.81]) by
	ctspitdcemgtw04.cihs.ad.gov.on.ca with Microsoft
	SMTPSVC(6.0.3790.1830); Thu, 5 Jul 2007 19:59:24 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Thu, 5 Jul 2007 19:59:26 -0400
Message-ID: <76D2AA307C39054DBA8BD42DE44E71A4031409FD@CTSPITDCEMMVX14.cihs.ad.gov.on.ca>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: problem assigning to indexed data frame element
Thread-Index: Ace/YIQuPjiHcSZoSY+Yj5VJH9nHXQ==
From: "Drescher, Michael (MNR)" <michael.drescher@ontario.ca>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 05 Jul 2007 23:59:24.0056 (UTC)
	FILETIME=[8318E180:01C7BF60]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l65NxR23025654
Subject: [R] problem assigning to indexed data frame element
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

Hi All,

Sorry if I ask an obvious thing, I am still new to R ...

I created a data frame of given dimensions to which I gave strings as
column names. I want to write to elements of the data frame by indexing
them with the row number and column name (string). The problem is that I
can read elements from the data frame in this way, but I cannot assign
to elements in this way. Instead, I get the following error message:

Error in Summary.factor(..., na.rm = na.rm) : 
        min not meaningful for factors

Please find the code I used farther below. It would be great if someone
could help me.

Best regards, Michael

PS: Coincidentally, I found this same error message mentioned in another
context (levelplot) as indicating a bug (original bug report PR# 6005 on
Mon, 22 Dec 2003)

------------------------
Michael Drescher
Ontario Forest Research Institute
Ontario Ministry of Natural Resources
1235 Queen St East
Sault Ste Mudle, ON, P6A 2E3
Tel: (705) 946-7406
Fax: (705) 946-2030

------------------------

Code:
> sfalls.plot.comp <- matrix(nrow=plot.count, ncol=spec.count, byrow=T)
> colnames(sfalls.plot.comp) <- levels(SPECIES)
### SPECIES, SPP_VOL, & PLOT are columns/variables in a previously read
data file
> sfalls.plot.comp <- data.frame(sfalls.plot.comp)
> attach(sfalls.plot.comp)
> sfalls.plot.comp[is.na(sfalls.plot.comp)] <- 0

> sfalls.plot.comp
  Bf Bw Pj Po Sb
1  0  0  0  0  0
2  0  0  0  0  0

> hh <- 1
> current.spec <- SPECIES[hh]; current.vol <- SPP_VOL[hh]; current.plot
<- PLOT[hh]

> current.spec
[1] Bf
Levels: Bf Bw Pj Po Sb

> current.vol
[1] 2

> current.plot
[1] 1

> sfalls.plot.comp[current.plot,current.spec]
### thus, reading from the data frame in this way (using the column
name/string) works fine
[1] 0

> sfalls.plot.comp[current.plot,current.spec] <- current.vol	### but
assigning in this way does not work
Error in Summary.factor(..., na.rm = na.rm) : 
        min not meaningful for factors

> sfalls.plot.comp[current.plot,1] <- current.vol
### assigning by using the column number instead of the column name of
course does work
> sfalls.plot.comp[current.plot,current.spec]
[1] 2

> sfalls.plot.comp[current.plot,"Bw"] <- current.vol
### as does assigning when replacing 'current.spec' for its assigned
value in quotes, e.g., "Bw"
> sfalls.plot.comp[current.plot,"Bw"]
[1] 2

> sfalls.plot.comp
  Bf Bw Pj Po Sb
1  2  2  0  0  0
2  0  0  0  0  0

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

RAngx2nrulgol0