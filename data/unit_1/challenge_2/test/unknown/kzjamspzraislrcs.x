From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 19:04:27 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63N4OL9002662
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 19:04:26 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63N2SCS010630;
	Wed, 4 Jul 2007 01:03:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailhub2.uq.edu.au (mailhub2.uq.edu.au [130.102.149.128])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63N2I1C010556
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 01:02:19 +0200
Received: from smtp1a.uq.edu.au (smtp1a.uq.edu.au [130.102.128.16])
	by mailhub2.uq.edu.au (8.13.7/8.13.7) with ESMTP id l63N2G9g076490;
	Wed, 4 Jul 2007 09:02:16 +1000 (EST)
Received: from uqexav02.soe.uq.edu.au (uqexav02.soe.uq.edu.au [130.102.4.249])
	by smtp1a.uq.edu.au (8.13.7/8.13.7) with ESMTP id l63N2GW1033692;
	Wed, 4 Jul 2007 09:02:16 +1000 (EST)
Received: from uqexav01.soe.uq.edu.au ([130.102.4.248]) by
	uqexav02.soe.uq.edu.au with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 4 Jul 2007 09:02:16 +1000
Received: from uqeximf02.soe.uq.edu.au ([130.102.6.17]) by
	uqexav01.soe.uq.edu.au with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 4 Jul 2007 09:02:16 +1000
Received: from uqeximf01.soe.uq.edu.au ([130.102.6.16]) by
	uqeximf02.soe.uq.edu.au with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 4 Jul 2007 09:02:15 +1000
Received: from [172.23.218.220] ([172.23.218.220]) by uqeximf01.soe.uq.edu.au
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 4 Jul 2007 09:02:15 +1000
From: Simon Blomberg <s.blomberg1@uq.edu.au>
To: Milton Cezar Ribeiro <milton_ruser@yahoo.com.br>
In-Reply-To: <813951.67055.qm@web56615.mail.re3.yahoo.com>
References: <813951.67055.qm@web56615.mail.re3.yahoo.com>
Date: Wed, 04 Jul 2007 09:04:46 +1000
Message-Id: <1183503886.4806.2.camel@sib-sblomber01d.sib.uq.edu.au>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 
X-OriginalArrivalTime: 03 Jul 2007 23:02:15.0604 (UTC)
	FILETIME=[32C11F40:01C7BDC6]
X-UQ-FilterTime: 1183503736
X-Scanned-By: MIMEDefang 2.51 on UQ Mailhub on 130.102.149.128
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] Parsimony Analysis of Encemism in R?
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

Short answer: No.

Longer answer:

R currently has some useful but relatively limited functions for
phylogenetics. See the "Statistical genetics" task view on CRAN. The ape
package is the most full-featured.

Simon.

On Tue, 2007-07-03 at 07:59 -0700, Milton Cezar Ribeiro wrote:
> Hi R-gurus, 
> 
> Is there a package for "Parsimony Analysis of Endemism" (Cladist) in R?
> 
> Kind regards,
> 
> Miltinho
> Brazil
> 
> 
>        
> ____________________________________________________________________________________
> 
> http://yahoo.com.br/oqueeuganhocomisso 
> 	[[alternative HTML version deleted]]
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
-- 
Simon Blomberg, BSc (Hons), PhD, MAppStat. 
Lecturer and Consultant Statistician 
Faculty of Biological and Chemical Sciences 
The University of Queensland 
St. Lucia Queensland 4072 
Australia

Room 320, Goddard Building (8)
T: +61 7 3365 2506 
email: S.Blomberg1_at_uq.edu.au 

The combination of some data and an aching desire for 
an answer does not ensure that a reasonable answer can 
be extracted from a given body of data. - John Tukey.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

Vea l1rc�0G72
h
