From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 15:43:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GJhsL9018883
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 15:43:54 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GJgVg5018747;
	Sat, 16 Jun 2007 21:42:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_60, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from bay0-omc2-s13.bay0.hotmail.com (bay0-omc2-s13.bay0.hotmail.com
	[65.54.246.149])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GJgLkI018711
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 21:42:22 +0200
Received: from BAY110-W16 ([65.54.229.116]) by bay0-omc2-s13.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Sat, 16 Jun 2007 12:42:21 -0700
Message-ID: <BAY110-W168254FE5CD5109E68A9FCC91D0@phx.gbl>
X-Originating-IP: [194.117.40.134]
From: laran gines <larangines@hotmail.com>
To: <r-help@stat.math.ethz.ch>
Date: Sat, 16 Jun 2007 19:42:21 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 16 Jun 2007 19:42:21.0049 (UTC)
	FILETIME=[746B8690:01C7B04E]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] GLM dist Gamma-links identity and inverse
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
Content-Type: multipart/mixed; boundary="===============0938789249=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0938789249==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1408

Dear users;=20
=20
I am doing GLMs with the Gamma distribution, and I always get errors ("no v=
alid set of coefficients: please supply starting values") or warnings ("NaN=
s produced in log(x)") when I use the links identity or inverse, but I don=
=B4t get them if I use the log link.
=20
For example:
=20
> summary(step(glm(formula=3Dacin.x~Canais+Hetero+Indrel+Penetra+Ph2o+Pmato=
rg+Vasa+Aguasup+Prof+Conchdisp+Conchaglom+Ostdisp+Ostaglom+
Rugos+distcanais+distcosta+distsalina+disturbano+distsapal+cota,family=3DGa=
mma(link=3D"inverse"))))Start:  AIC=3D9.18acin.x ~ Canais + Hetero + Indrel=
 + Penetra + Ph2o + Pmatorg +     Vasa + Aguasup + Prof + Conchdisp + Conch=
aglom + Ostdisp +     Ostaglom + Rugos + distcanais + distcosta + distsalin=
a +     disturbano + distsapal + cota
Error: no valid set of coefficients has been found: please supply starting =
valuesIn addition: Warning message:NaNs produced in: log(x)=20
=20
I am doing this to twelve species and I always get the errors with links id=
entity and inverse, and never with log link.
=20
Could someone give me an explanation about what is happening?
=20
Thank you very much in advance!
=20
Best wishes;
=20
Catarina
_________________________________________________________________
Receba GR=C1TIS as mensagens do Messenger no seu celular quando voc=EA esti=
ver offline. Conhe=E7a  o MSN Mobile!

	[[alternative HTML version deleted]]


--===============0938789249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0938789249==--

       

n7ft9 st1>