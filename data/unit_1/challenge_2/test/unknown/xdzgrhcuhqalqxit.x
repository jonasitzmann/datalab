From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 06:54:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62AsUL9012696
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 06:54:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62ArDmA029371;
	Mon, 2 Jul 2007 12:53:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mx02.fc.ul.pt (mx02.fc.ul.pt [194.117.42.36])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62Ar8HY029334
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@hypatia.math.ethz.ch>; Mon, 2 Jul 2007 12:53:08 +0200
Received: from mailhub02.ul.pt (mailhub02.ul.pt [10.100.27.112])
	by mx02.fc.ul.pt (8.13.6/8.13.6) with ESMTP id l62Ar2sD005349
	for <r-help@lists.R-project.org>; Mon, 2 Jul 2007 11:53:03 +0100
Received: from fc-mailserver01.ul.pt ([10.101.246.31]) by mailhub02.ul.pt with
	Microsoft SMTPSVC(6.0.3790.1830); Mon, 2 Jul 2007 11:53:01 +0100
Content-class: urn:content-classes:message
MIME-Version: 1.0
x-mimeole: Produced By Microsoft Exchange V6.5
Date: Mon, 2 Jul 2007 11:53:01 +0100
Message-ID: <ED0CEB28C60A4B458DF365134CEB4D00041157D8@fc-mailserver01.ul.pt>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Interface R and C - windows
Thread-Index: Acex3ra1NPCgm8dHSfq3zNYCYyhf3AKtlysK
X-Priority: 1
Priority: Urgent
Importance: high
References: <ED0CEB28C60A4B458DF365134CEB4D000BE53E@fc-mailserver01.ul.pt>
	<554C46A9-4C8B-4C62-ABEE-F46D0566F8BD@jhsph.edu>
	<ED0CEB28C60A4B458DF365134CEB4D001C9B5A@fc-mailserver01.ul.pt>
	<C709DFFD-F5AE-4B9A-9F85-B302A57A7327@jhsph.edu>
	<ED0CEB28C60A4B458DF365134CEB4D0004115794@fc-mailserver01.ul.pt>
	<9B19CF94-610C-426C-BF33-63ADE6E339C8@jhsph.edu>
	<ED0CEB28C60A4B458DF365134CEB4D00041157BD@fc-mailserver01.ul.pt>
	<C374B369-53A0-454C-AB1B-D5A725E67A3D@jhsph.edu>
From: "ElisabeteFernandes" <ebfernandes@fc.ul.pt>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 02 Jul 2007 10:53:01.0818 (UTC)
	FILETIME=[290D75A0:01C7BC97]
X-FCUL-MailScanner-Information: Por favor contacte o CI-FCUL para mais
	informacoes
X-FCUL-MailScanner: Found to be clean
X-FCUL-MailScanner-From: ebfernandes@fc.ul.pt
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l62Ar8HY029334
Subject: [R] Interface R and C - windows
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l62AsUL9012696

Hello,

I want use the interface between R and C.  I usually work in windows.

I installed the Rtools.exe and ActivePerl 5.8.8 in the path  C:\R\R-2.3.1 like it is in the Appendix F the windows tools (Manual).  However, I do not have sucess. How should I do this ? Which type of path should I use?
 
Other question is about how compiling C code using the Dev-C++ and librarys of packages R. For example, I want use the function dnorm and I include in compiler options the library Rmath.h and dnorm.c:
 
#include <stdio.h> 
#include <Rmath.h>
#include <dnorm.c>

        main()
        {
           int a, b, s;
 
           printf("Introduza um n�mero:\n");
           scanf("%d", &a);
           printf("Introduza outro n�mero:\n");
           scanf("%d", &b);
           s = a + b;
           s=dnorm(2,1,1,1);
           printf("A densidade de %d com %d d� %d\n", a, b, s);
           system("PAUSE");
        }

 
However, this code do not work. 


 thanks

the best regard

 Elisabete Fernandes

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

mD r7"<eYa<e7