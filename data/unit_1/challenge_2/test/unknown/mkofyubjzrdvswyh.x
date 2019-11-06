From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 08:04:05 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55C44hB008538
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 08:04:04 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55C3SYZ014820;
	Tue, 5 Jun 2007 14:03:40 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from mail.citigroup.com (smtp4.citigroup.com [192.193.71.3])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55BuxMC013054
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 13:57:02 +0200
Received: from imbarc-sg01.apac.nsroot.net (imbarc-sg01.ap.ssmb.com
	[163.37.24.21])
	by imbaspam-sg03.apacdmz.dmzroot.net (8.13.8/8.13.8/SSMB_EXT/ev: 16778
	$) with ESMTP id l55BuoZj010956
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 11:56:58 GMT
Received: from mailhub-sg01.apac.nsroot.net (mailhub-sg01.apac.nsroot.net
	[163.36.1.97])
	by imbarc-sg01.apac.nsroot.net (8.13.7/8.13.7/SSMB_QQQ_IN/1.1) with
	ESMTP id l55BuhxY028781
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 11:56:43 GMT
Received: from EXHKSM01.apac.nsroot.net (exhksm01.apac.nsroot.net
	[169.181.10.89])
	by mailhub-sg01.apac.nsroot.net (8.13.7/8.13.7/CG_HUB) with ESMTP id
	l55Btld7001149
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 11:56:42 GMT
Received: from exinmb04.apac.nsroot.net ([163.36.240.27]) by
	EXHKSM01.apac.nsroot.net with Microsoft SMTPSVC(5.0.2195.6713); 
	Tue, 5 Jun 2007 19:56:25 +0800
X-MimeOLE: Produced By Microsoft Exchange V6.0.6619.12
content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 5 Jun 2007 17:26:23 +0530
Message-ID: <6E2AF71DA2E3F241A66122F3F90F32140DB250@exinmb04-bkp.apac.nsroot.net>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Problems with Merge
Thread-Index: AcenaIohB1svTmyeT8ii6inmW4Q/hA==
From: "Patnaik, Tirthankar " <tirthankar.patnaik@citi.com>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 05 Jun 2007 11:56:25.0535 (UTC)
	FILETIME=[8B175CF0:01C7A768]
X-Scanned-By: MIMEDefang 2.52 on 192.193.71.3
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l55BuxMC013054
Subject: [R] Problems with Merge
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
 I have a history dataset, a matrix with about 1590 obs, and 242 cols,
and I need to update this matrix with an 'update' matrix that has about
30 rows, and roughly similar number of columns as the history ds (but
not necessarily equal). The update dataset is read from an Excel ODBC
connection. When I try and merge these datasets, I get counter-intuitive
results.

library(RODBC)
   chn <- odbcConnectExcel(UpdateFile)
   sqlTables(chn)
   UpdateData <- sqlFetch(chn,"MCap243")
   colnames(UpdateData) <- gsub("#",".",colnames(UpdateData))
   close(chn)
   # specify just how many rows we need from the Update file. We'd only
read five
   # rows at a time.
   UpdateRows = 20
   UpdateData <- UpdateData[1:UpdateRows,]

   # Delete Unwanted stocks.
   UpdateData <- UpdateData[,!names(UpdateData) %in% ToBeDeleted]
   x <- tail(UpdateData[c("Date","ABAN.BO")],n=50)
   print(x)
   

Gives x as:

         Date  ABAN.BO
1  2007-04-30 96448.40
2  2007-05-01 96448.40
3  2007-05-02 96448.40
4  2007-05-03 96300.44
5  2007-05-04 93718.52
6  2007-05-05 93718.52
7  2007-05-06 93718.52
8  2007-05-07 92743.82
9  2007-05-08 90374.60
10 2007-05-09 89126.18
11 2007-05-10 87082.47
12 2007-05-11 85493.73
13 2007-05-12 85493.73
14 2007-05-13 85493.73
15 2007-05-14 85033.21
16 2007-05-15 89209.41
17 2007-05-16 89089.19
18 2007-05-17 90472.62
19 2007-05-18 90326.51
20 2007-05-19 90326.51

But when I merge this file with the history dataset, I get the dates
misaligned by one row.

whistory <- merge(rhistory,UpdateData,by.x=rhistory["Date"],all=TRUE)

tail(WHist4[c("Date","ABAN.BO")],n=30)

          Date  ABAN.BO
1581 2007-04-19 83632.60
1582 2007-04-20 85942.00
1583 2007-04-23 88244.00
1584 2007-04-24 90309.50
1585 2007-04-25 92048.00
1586 2007-04-26 92051.70
1587 2007-04-27 95863.10
1588 2007-04-29 96448.40
1589 2007-04-30 96448.40
1590 2007-04-30 96343.40
1591 2007-05-01 96448.40
1592 2007-05-02 96300.44
1593 2007-05-03 93718.52
1594 2007-05-03 96195.60
1595 2007-05-04 93718.52
1596 2007-05-04 93616.50
1597 2007-05-05 93718.52
1598 2007-05-06 92743.82
1599 2007-05-07 90374.60
1600 2007-05-08 89126.18
1601 2007-05-09 87082.47
1602 2007-05-10 85493.73
1603 2007-05-11 85493.73
1604 2007-05-12 85493.73
1605 2007-05-13 85033.21
1606 2007-05-14 89209.41
1607 2007-05-15 89089.19
1608 2007-05-16 90472.62
1609 2007-05-17 90326.51
1610 2007-05-18 90326.51

Any reasons why the dates are shifted by one date? Am I missing some
parameters in the merge statement?

TIA and best,
-Tir

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

mtE.aa3 s/