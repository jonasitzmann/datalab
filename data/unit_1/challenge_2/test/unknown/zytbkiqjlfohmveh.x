From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 13:12:04 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FHC2L9004765
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 13:12:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FHBOHR008551;
	Fri, 15 Jun 2007 19:11:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from relay-av.club-internet.fr (relay-av.club-internet.fr
	[194.158.96.107])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FHBJUQ008530
	for <r-help@lists.R-project.org>; Fri, 15 Jun 2007 19:11:19 +0200
Received: from [127.0.0.1] (sp137-1-212-195-85-5.dsl.club-internet.fr
	[212.195.85.5])
	by relay-av.club-internet.fr (Postfix) with ESMTP id 665AD2561E;
	Fri, 15 Jun 2007 19:11:18 +0200 (CEST)
Message-ID: <4672D67E.5040705@univ-nantes.fr>
Date: Fri, 15 Jun 2007 19:12:14 +0100
From: Bellanger Lise <lise.bellanger@univ-nantes.fr>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; fr;
	rv:1.7.3) Gecko/20040910
X-Accept-Language: fr, en
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Antivirus: avast! (VPS 000749-1, 15/06/2007), Outbound message
X-Antivirus-Status: Clean
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Registration density profiles using FDA (Functional Data
	Analysis)
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5FHC2L9004765

Hello,


      I would like to use  fda (Functional data analysis) library  to 
compare sampled curves that are density profiles. But I encounter some 
problems to register my data as functional data.
I know that I must use a registration function to align functions in 
order to have important features found in each curve occur at roughly 
the same argument value, prior to do subsequent analysis ( PCA and 
cluster analysis).   But I do not know which function (if there exists 
one) allows me  to synchronize density profiles : could help me please ?

  Thank you by advance

  Best regards

        Lise Bellanger

-- 
Lise Bellanger, 
Universit� de Nantes
D�partement de Math�matiques, Laboratoire Jean Leray UMR CNRS 6629 
2, Rue de la Houssini�re BP 92208 - F-44322 Nantes Cedex 03 
T�l. : (33|0) 2 51 12 59 00 (ou 43) - Fax : (33|0) 2 51 12 59 12 
E-Mail : lise.bellanger@univ-nantes.fr
URL : http://www.math.sciences.univ-nantes.fr/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

Cnfi_tn