From r-help-bounces@stat.math.ethz.ch  Sun Jun  3 16:08:45 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53K8hhB019220
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 16:08:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53K6pMF010116;
	Sun, 3 Jun 2007 22:07:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_80, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from web26507.mail.ukl.yahoo.com (web26507.mail.ukl.yahoo.com
	[217.146.176.44])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l53K6gWR010051
	for <r-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 22:06:42 +0200
Received: (qmail 48218 invoked by uid 60001); 3 Jun 2007 20:06:42 -0000
X-YMail-OSG: Y2xeKXoVM1nRhP5PICF.GZ3zE9DdDoKrwKq5RGZoO3cc8fNr8xWZpFDTM4EaM2hRnQ--
Received: from [190.54.28.217] by web26507.mail.ukl.yahoo.com via HTTP;
	Sun, 03 Jun 2007 22:06:41 CEST
Date: Sun, 3 Jun 2007 22:06:41 +0200 (CEST)
From: Jose Bustos Melo <jbustosmelo@yahoo.es>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Message-ID: <919919.47723.qm@web26507.mail.ukl.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] making a multiple censored Surv object  to survival analisys
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
Content-Type: multipart/mixed; boundary="===============0441195504=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0441195504==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: 8bit
Content-length: 724

Hi R-survivals, 
   
  I looking for a way to make a Surv object, with a multiple censored data. I'm trying with data from KMsurv library. The data lung is a good reference, to make this.
   
  I have this senteces,
   
  library(KMsurv)
  library(survival)
  data(lung)
  names(lung) ##"time"   "death"  "time2"  "death2", there is the variables
  ### I'm trygin with this sentence, but i don't know how works the Surv function ### with multiple censored data
  with(lung, Surv(time,death, time2, death2))

   
  someone can help me with this?
   
  I hope you help!
  Jose

       
---------------------------------

�Descubre una nueva forma de obtener respuestas a tus preguntas!


	[[alternative HTML version deleted]]


--===============0441195504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0441195504==--

    

iXId 