From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 05:12:57 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5J9CuL9027693
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 05:12:56 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J9CFXr020074;
	Tue, 19 Jun 2007 11:12:25 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=DKIM_POLICY_SIGNSOME,
	SPF_HELO_SOFTFAIL autolearn=no version=3.2.0
Received: from mail.citigroup.com (mail12.ssmb.com [199.67.179.106])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J9C7Tq020003
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 11:12:08 +0200
Received: from imbarc-nj02.nj.ssmb.com (imbarc-nj02.nj.ssmb.com
	[150.110.178.211])
	by imbaspam-ny06.iplex.ssmb.com (8.13.8/8.13.8/SSMB_EXT/ev: 16778 $)
	with ESMTP id l5J9C5bN010157
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 09:12:06 GMT
Received: from mailhub-jp01.nssmb.com (mailhub-jp01-b.nssmb.com
	[169.180.188.118])
	by imbarc-nj02.nj.ssmb.com (8.13.7/8.13.7/SSMB_QQQ_IN/1.1) with ESMTP
	id l5J9C2RG024815
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 09:12:03 GMT
Received: from exossm01.jpn.nsroot.net (EXOSSM01.jpn.nsroot.net
	[161.75.100.28])
	by mailhub-jp01.nssmb.com (8.13.7/8.13.7/CG_HUB) with ESMTP id
	l5J9BxSR020907
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 09:12:02 GMT
Received: from exyhmb08.jpn.nsroot.net ([169.180.205.92]) by
	exossm01.jpn.nsroot.net with Microsoft SMTPSVC(5.0.2195.6713); 
	Tue, 19 Jun 2007 18:11:59 +0900
Content-Class: urn:content-classes:message
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft Exchange V6.0.6619.12
Date: Tue, 19 Jun 2007 18:11:58 +0900
Message-ID: <0143A263BEF94644AC0D4027373EECD3054309AE@exyhmb08.jpn.nsroot.net>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: How do I avoid a loop?
thread-index: AceyUePAWy2XlpLgQ2OzHKWl6HPYjQ==
From: "Feng, Ken " <ken.feng@citi.com>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 19 Jun 2007 09:11:59.0222 (UTC)
	FILETIME=[E417F960:01C7B251]
X-Scanned-By: MIMEDefang 2.52 on 172.27.136.25
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] How do I avoid a loop?
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

I start with an array of booleans:

	x <- c( TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE );

I want to define an y <- f(x) such that:

	y <- c( 1, 2, 3, 0, 0, 1, 2, 0, 1 );

In other words, do a cumsum when I see a TRUE, but reset to 0 if I see a FALSE.

I know I can do this with a very slow and ugly loop or maybe use apply,
but I was hoping there are some R experts out there who can show me
a cleaner/more elegant solution?

Thanks in advance.

- Ken

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

!mn6 8itH-:1le.