From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 16:49:56 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58KnsL9001484
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 16:49:55 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58Kn2xO022280;
	Fri, 8 Jun 2007 22:49:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from antispam.colpos.mx (smtp.colpos.mx [200.23.27.11])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58KYiRn016651
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 22:34:45 +0200
Received: from mailadmin.colpos.mx (unknown [192.168.1.3])
	by antispam.colpos.mx (Postfix) with ESMTP id 40601409CC
	for <r-help@stat.math.ethz.ch>; Fri,  8 Jun 2007 14:21:04 -0500 (CDT)
Received: from [200.65.184.244] (account perpdgo@colpos.mx)
	by mailadmin.colpos.mx (CommuniGate Pro WEBUSER 5.1.4)
	with HTTP id 10710376 for r-help@stat.math.ethz.ch;
	Fri, 08 Jun 2007 15:17:09 -0500
From: "Paulino Perez Rodriguez" <perpdgo@colpos.mx>
To: r-help@stat.math.ethz.ch
X-Mailer: CommuniGate Pro WebUser v5.1.4
Date: Fri, 08 Jun 2007 14:17:09 -0600
Message-ID: <web-10710376@mailadmin.colpos.mx>
MIME-Version: 1.0
X-colpos-MailScanner-Information: Please contact the ISP for more information
X-colpos-MailScanner: Found to be clean
X-colpos-MailScanner-SpamCheck: no es spam, SpamAssassin (no almacenado,
	puntaje=-3.579, requerido 5, autolearn=not spam, ALL_TRUSTED -1.80,
	AWL 0.82, BAYES_00 -2.60)
X-colpos-MailScanner-From: perpdgo@colpos.mx
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] RMySQL configure.win error?
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l58KnsL9001484


Hello, is there an error in the file configure.win from 
the package RMySQL_0.6-0.tar.gz, in the line

dlltool --dllname ${MYSQL_LIB} --def libmysql.def 
--output-lib libmysql.a -k

I think it must be

dlltool --dllname ${MYSQL_DLL} --def libmysql.def 
--output-lib libmysql.a -k

right? since MYSQL_DLL=libMySQL.dll  and 
 MYSQL_LIB=libmysql.lib

It appears that the package doesn't work with 
mysql-5.0.4.1.

It works fine with mysql-5.0.18

Thanks.

-- 
Este mensaje ha sido analizado por MailScanner
en busca de virus y otros contenidos peligrosos,
y se considera que est� limpio.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

woabsIou