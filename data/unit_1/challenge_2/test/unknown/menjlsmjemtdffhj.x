From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 11:21:27 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EFLQL9023373
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 11:21:26 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EFKLNi010280;
	Thu, 14 Jun 2007 17:20:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from slim.kubism.ku.dk (slim.kubism.ku.dk [192.38.18.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EF3Ysb002842
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 17:03:35 +0200
Received: from [192.38.18.17] (viggo.kubism.ku.dk [192.38.18.17])
	by slim.kubism.ku.dk (Postfix) with ESMTP id 56FF52070A;
	Thu, 14 Jun 2007 17:03:34 +0200 (CEST)
Message-ID: <467158C6.60307@biostat.ku.dk>
Date: Thu, 14 Jun 2007 17:03:34 +0200
From: Peter Dalgaard <P.Dalgaard@biostat.ku.dk>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: "Lucke, Joseph F" <Joseph.F.Lucke@uth.tmc.edu>
References: <4677FCB5A35A0441A0E0C99D56B23D910777FEBA@UTHEVS2.mail.uthouston.edu>
In-Reply-To: <4677FCB5A35A0441A0E0C99D56B23D910777FEBA@UTHEVS2.mail.uthouston.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5EF3Ysb002842
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Problems with na.rm=T
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
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5EFLQL9023373

Lucke, Joseph F wrote:> Suddenly (e.g. yesterday) all my functions that have "na.rm=" as a> parameter (e.g., mean(), sd(), range(), etc.) have been reporting> warnings with "na.rm=T". The message is "Warning message: the condition> has length > 1 and only the first element will be used in: if (na.rm) x> <- x[!is.na(x)] ".   This has never happened before.  I don't recall> having done anything that might generate this message.  How do I fix> this?>   
Rename the object that you suddenly called "T"...
(And notice that some people will advise you to use na.rm=TRUE to avoidthis)
--    O__  ---- Peter Dalgaard             Øster Farimagsgade 5, Entr.B  c/ /'_ --- Dept. of Biostatistics     PO Box 2099, 1014 Cph. K (*) \(*) -- University of Copenhagen   Denmark          Ph:  (+45) 35327918~~~~~~~~~~ - (p.dalgaard@biostat.ku.dk)                  FAX: (+45) 35327907
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

   

zattNrEo