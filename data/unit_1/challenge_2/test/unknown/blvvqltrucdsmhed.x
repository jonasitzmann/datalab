From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 14:10:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LIAWL9027379
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 14:10:33 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LI9kHS028910;
	Thu, 21 Jun 2007 20:09:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mr3.cc.ic.ac.uk (mr3.cc.ic.ac.uk [155.198.5.113])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LI0rEo025849
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 20:00:54 +0200
Received: from icexp4.cc.ic.ac.uk ([155.198.3.44] helo=icex.imperial.ac.uk)
	by mr3.cc.ic.ac.uk with smtp (Exim 4.63)
	(envelope-from <f.calboli@imperial.ac.uk>)
	id 1I1Qxh-0001zH-A0; Thu, 21 Jun 2007 19:00:53 +0100
Received: from [155.198.40.100] ([155.198.40.100]) by icex.imperial.ac.uk with
	Microsoft SMTPSVC(6.0.3790.1830); Thu, 21 Jun 2007 19:00:47 +0100
Message-ID: <467ABDC7.1090001@imperial.ac.uk>
Date: Thu, 21 Jun 2007 19:04:55 +0100
From: Federico Calboli <f.calboli@imperial.ac.uk>
User-Agent: Icedove 1.5.0.10 (X11/20070329)
MIME-Version: 1.0
To: Muhammad Subianto <msubianto@gmail.com>
References: <467AB0EF.4060802@imperial.ac.uk> <467ABC0A.1030802@gmail.com>
In-Reply-To: <467ABC0A.1030802@gmail.com>
X-OriginalArrivalTime: 21 Jun 2007 18:00:47.0141 (UTC)
	FILETIME=[183BB550:01C7B42E]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] working with fractions
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

Muhammad Subianto wrote:

>  > library(MASS)
>  > as.fractions(c(0, 0.15, 0.8266667, .066666, 0.2666666))
> [1]     0  3/20 62/75  1/15  4/15

Seems to make things a bit too slow, even though I get a good increase in precision.

Fede

-- 
Federico C. F. Calboli
Department of Epidemiology and Public Health
Imperial College, St Mary's Campus
Norfolk Place, London W2 1PG

Tel  +44 (0)20 7594 1602     Fax (+44) 020 7594 3193

f.calboli [.a.t] imperial.ac.uk
f.calboli [.a.t] gmail.com

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

(s/B