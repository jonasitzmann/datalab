From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 13:43:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KHh6L9013090
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 13:43:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KHgP3d002408;
	Wed, 20 Jun 2007 19:42:39 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	RCVD_IN_SORBS_WEB autolearn=no version=3.2.0
Received: from smtpi2.usherbrooke.ca (smtpi2.USherbrooke.ca [132.210.244.93])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KHbjiP000512
	for <r-help@lists.R-project.org>; Wed, 20 Jun 2007 19:37:45 +0200
Received: from localhost (www05.USherbrooke.ca [132.210.244.140])
	by smtpi2.usherbrooke.ca (8.13.1/8.13.1) with ESMTP id l5KHbMgv016299
	for <r-help@lists.R-project.org>; Wed, 20 Jun 2007 13:37:22 -0400
Received: from bas1-sherbrooke40-1128567700.dsl.bell.ca
	(bas1-sherbrooke40-1128567700.dsl.bell.ca [67.68.147.148]) 
	by www.usherbrooke.ca (IMP) with HTTP 
	for <shij1401@courriel-fec.usherbrooke.ca>;
	Wed, 20 Jun 2007 13:37:22 -0400
Message-ID: <1182361042.467965d24abac@www.usherbrooke.ca>
Date: Wed, 20 Jun 2007 13:37:22 -0400
From: Bill Shipley <Bill.Shipley@usherbrooke.ca>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) 3.2.6
X-Originating-IP: 67.68.147.148
X-UdeS-MailScanner-Information: Veuillez consulter le
	http://www.usherbrooke.ca/vers/virus-courriel
X-UdeS-MailScanner: Aucun code suspect =?ISO-8859-1?Q?d=E9tect=E9?=
X-MailScanner-SpamCheck: n'est pas un polluriel, SpamAssassin (score=-3.78,
	requis 5, ALL_TRUSTED -1.80, BAYES_00 -2.60, RCVD_IN_SORBS_WEB 0.62)
X-UdeS-MailScanner-From: bill.shipley@usherbrooke.ca
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] finding roots of multivariate equation
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5KHh6L9013090

Hello,
I want to find the roots of an equation in two variables.  I am aware of the
uniroot function, which can do this for a function with a single variable (as I
understand it...) but cannot find a function that does this for an equation
with more than one variable.  I am looking for something implementing similar
to a Newton-Raphson algorithm.
Thanks.

-- 
Bill Shipley
North American Editor for Annals of Botany
Subject Editor for Ecology
D�partement de biologie
Universit� de Sherbrooke
Sherbrooke (Qu�bec) J1K 2R9
Canada

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

>Mi3Pta y