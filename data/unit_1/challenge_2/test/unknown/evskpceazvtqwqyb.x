From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 12:19:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PGJpL9031011
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 12:19:52 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PGIpaV017816;
	Mon, 25 Jun 2007 18:19:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=AWL, BAYES_99,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from smtp01.ine.pt (smtp01.ine.pt [193.192.10.250])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PGGId8016577
	for <R-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 18:16:21 +0200
Received: from ptmail.ine.pt (unknown [193.192.7.56])
	by smtp01.ine.pt (Postfix) with ESMTP id C12F6106891
	for <R-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 17:16:17 +0100 (WEST)
Received: by ptmail.ine.pt with Internet Mail Service (5.5.2653.19)
	id <NCTNHH08>; Mon, 25 Jun 2007 17:18:08 +0100
Message-ID: <E97312684A84D511BDD40002A50968D60A41B785@lxpobw01.ine.pt>
From: Ana Patricia Martins <ana.pmartins@ine.pt>
To: R-help@stat.math.ethz.ch
Date: Mon, 25 Jun 2007 17:15:56 +0100
MIME-Version: 1.0
X-Mailer: Internet Mail Service (5.5.2653.19)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R]  simultaneous actions of grep ???
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
Content-Type: multipart/mixed; boundary="===============0623404700=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0623404700==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 773

Hello R-users and developers,

Once again, I'm asking for your help.

There is other way to do the same more easily for applied simultaneous
grep???
=20=20
    c<-subset(c,!rownames(c) %in% grep(".1",rownames(c),value=3DT))
    c<-subset(c,!rownames(c) %in% grep(".5",rownames(c),value=3DT))
    c<-subset(c,!rownames(c) %in% grep(".6",rownames(c),value=3DT))
    c<-subset(c,!rownames(c) %in% grep(".99999",rownames(c),value=3DT))

Thanks in advance for helping me.

Atenciosamente,
Ana Patricia Martins
-------------------------------------------
Servi=E7o M=E9todos Estat=EDsticos
Departamento de Metodologia Estat=EDstica
INE - Portugal
Telef:  218 426 100 - Ext: 3210
E-mail: ana.pmartins@ine.pt <mailto:ana.pmartins@ine.pt>=20


	[[alternative HTML version deleted]]


--===============0623404700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0623404700==--

                

h
m1tr
X