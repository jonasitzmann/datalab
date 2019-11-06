From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 09:40:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QDevL9011439
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 09:40:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QDeHuX022881;
	Tue, 26 Jun 2007 15:40:34 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from ipex4.johnshopkins.edu (ipex4.johnshopkins.edu
	[128.220.161.141])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QDe4Ns022812
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 15:40:05 +0200
Received: from dom-59mfy81.monument1.jhmi.edu (HELO DOM59MFY81)
	([10.16.148.124]) by ipex4.johnshopkins.edu with ESMTP/TLS/RC4-MD5;
	26 Jun 2007 09:40:04 -0400
X-BrightmailFiltered: true
X-Brightmail-Tracker: AAAAAA==
X-IronPort-AV: i="4.16,463,1175486400"; 
	d="scan'208"; a="307193942:sNHT92145508"
From: "Ravi Varadhan" <rvaradhan@jhmi.edu>
To: "'Federico Calboli'" <f.calboli@imperial.ac.uk>,
   "'r-help'" <r-help@stat.math.ethz.ch>
References: <4680FF60.7080801@imperial.ac.uk>
Date: Tue, 26 Jun 2007 09:40:05 -0400
Message-ID: <000101c7b7f7$812d4020$7c94100a@win.ad.jhu.edu>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
In-reply-to: <4680FF60.7080801@imperial.ac.uk>
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
Thread-index: Ace36OvRO9jgDKI5TDyehDK62TiJTwADbWqg
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: "'Gambhir, Manoj'" <m.gambhir@imperial.ac.uk>
Subject: Re: [R] fisher information matrix
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

Hi,

You can use the function hessian() in the package "numDeriv".  This will
yield a very accurate estimate of the "observed" Fisher information matrix.


library(numDeriv)
?hessian

Ravi.
----------------------------------------------------------------------------
-------

Ravi Varadhan, Ph.D.

Assistant Professor, The Center on Aging and Health

Division of Geriatric Medicine and Gerontology 

Johns Hopkins University

Ph: (410) 502-2619

Fax: (410) 614-9625

Email: rvaradhan@jhmi.edu

Webpage:  http://www.jhsph.edu/agingandhealth/People/Faculty/Varadhan.html

 

----------------------------------------------------------------------------
--------


-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Federico Calboli
Sent: Tuesday, June 26, 2007 7:58 AM
To: r-help
Cc: Gambhir, Manoj
Subject: [R] fisher information matrix

Hi All,

a colleague wants to calculate the Fisher information matrix for a model he 
wrote (not in R). He can easily get the neg-log-likelihood and the best fit 
parameters at the minimum. He can also get negLLs for other parameter values
too.

Given these data, is there a way in R to calculate the Fisher information
matrix?

Best,

Federico

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

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

smLi7- n3U