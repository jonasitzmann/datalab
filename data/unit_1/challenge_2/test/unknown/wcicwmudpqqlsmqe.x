From r-help-bounces@stat.math.ethz.ch  Sun Jun  3 06:29:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53ATMhB014580
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 06:29:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53ASf4N014779;
	Sun, 3 Jun 2007 12:28:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.169])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53ASYDi014743
	for <r-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 12:28:34 +0200
Received: by ug-out-1314.google.com with SMTP id 36so486358uga
	for <r-help@stat.math.ethz.ch>; Sun, 03 Jun 2007 03:28:34 -0700 (PDT)
Received: by 10.67.10.18 with SMTP id n18mr2244567ugi.1180866514131;
	Sun, 03 Jun 2007 03:28:34 -0700 (PDT)
Received: from ?192.168.1.104? ( [81.242.41.246])
	by mx.google.com with ESMTP id y37sm2990830iky.2007.06.03.03.28.29;
	Sun, 03 Jun 2007 03:28:30 -0700 (PDT)
Message-ID: <466297CA.4070108@businessdecision.com>
Date: Sun, 03 Jun 2007 12:28:26 +0200
Organization: Business & Decision Benelux
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: pm509@york.ac.uk
References: <Prayer.1.0.18.0706031036320.4407@webmail1.york.ac.uk>
In-Reply-To: <Prayer.1.0.18.0706031036320.4407@webmail1.york.ac.uk>
From: Tobias Verbeke <tobias.verbeke@gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] specify font family for postscript device [was: Re:
 Subscript in axis label]
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: tobias.verbeke@businessdecision.com
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l53ATMhB014580

pm509@york.ac.uk wrote:

> Dear R help list members,

<snip>

> A related query is that the journal I want to publish this figure in 
> specifies that if EPS format is used, the font should be either Arial, 
> Courier, Helvetica, Times or Symbol. Is one of these the default font for 
> an EPS file in R, and if not, is there a possibility of changing it?

See ?postscript and in particular the family argument the details of
which are treated in the Families section.

HTH,
Tobias

-- 

Tobias Verbeke - Consultant
Business & Decision Benelux
Rue de la révolution 8
1000 Brussels - BELGIUM

+32 499 36 33 15
tobias.verbeke@businessdecision.com

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

ad0e
i