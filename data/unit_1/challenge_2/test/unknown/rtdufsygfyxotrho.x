From r-help-bounces@stat.math.ethz.ch  Sun Jun  3 13:46:36 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53HkYhB018073
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 13:46:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53Hk5vH026207;
	Sun, 3 Jun 2007 19:46:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from antispam.colpos.mx (smtp.colpos.mx [200.23.27.11])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53HjxAp026176
	for <r-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 19:46:00 +0200
Received: from mailadmin.colpos.mx (unknown [192.168.1.3])
	by antispam.colpos.mx (Postfix) with ESMTP id 46BF242B26
	for <r-help@stat.math.ethz.ch>; Sun,  3 Jun 2007 11:35:35 -0500 (CDT)
Received: from [200.66.227.133] (account perpdgo@colpos.mx)
	by mailadmin.colpos.mx (CommuniGate Pro WEBUSER 5.1.4)
	with HTTP id 10663969 for r-help@stat.math.ethz.ch;
	Sun, 03 Jun 2007 12:32:14 -0500
From: "Paulino Perez Rodriguez" <perpdgo@colpos.mx>
To: r-help@stat.math.ethz.ch
X-Mailer: CommuniGate Pro WebUser v5.1.4
Date: Sun, 03 Jun 2007 11:32:14 -0600
Message-ID: <web-10663969@mailadmin.colpos.mx>
MIME-Version: 1.0
X-colpos-MailScanner-Information: Please contact the ISP for more information
X-colpos-MailScanner: Found to be clean
X-colpos-MailScanner-SpamCheck: no es spam, SpamAssassin (no almacenado,
	puntaje=-4.343, requerido 5, autolearn=not spam, ALL_TRUSTED -1.80,
	AWL 0.06, BAYES_00 -2.60)
X-colpos-MailScanner-From: perpdgo@colpos.mx
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Error loading RMySQL
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l53HkYhB018073

Hello, I have sucessfully compiled and Installed in 
R-2.4.1/2.5.0 under Windows XP MCE, I am using MySQL 
5.0.41, but now I have another error, at load time:

> library(RMySQL)
Error in dyn.load(x, as.logical(local), as.logical(now)) :
         unable to load shared library 
'C:/PROGRA~1/R/R-24~1.1/library/RMySQL/libs/RMySQL.dll':
   LoadLibrary failure:  Invalid access to memory 
location.

Error: package/namespace load failed for 'RMySQL'

I have added C:\Program 
Files\R\R-2.4.1\library\RMySQL\libs to the windows PATH, 
any Idea?

Thanks...

-- 
Este mensaje ha sido analizado por MailScanner
en busca de virus y otros contenidos peligrosos,
y se considera que est� limpio.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

ry S 2Hf<#z 