From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 09:23:45 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PDNhL9028994
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 09:23:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ONxDGZ008265;
	Mon, 25 Jun 2007 01:59:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from mailhost.auckland.ac.nz (curly.its.auckland.ac.nz
	[130.216.12.33])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ONwvui008131
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 01:58:58 +0200
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mailhost.auckland.ac.nz (Postfix) with ESMTP id 9577D9C2F1
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 11:58:55 +1200 (NZST)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Received: from mailhost.auckland.ac.nz ([127.0.0.1])
	by localhost (curly.its.auckland.ac.nz [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 32KWnMXOqSTR for <r-help@stat.math.ethz.ch>;
	Mon, 25 Jun 2007 11:58:55 +1200 (NZST)
Received: from UXCHANGE2.UoA.auckland.ac.nz (uxcn4.itss.auckland.ac.nz
	[130.216.190.121])
	by mailhost.auckland.ac.nz (Postfix) with ESMTP id 6A31E9C30C
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 11:58:54 +1200 (NZST)
Received: from UXCHANGE3.UoA.auckland.ac.nz ([130.216.190.120]) by
	UXCHANGE2.UoA.auckland.ac.nz with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 25 Jun 2007 11:58:54 +1200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Mon, 25 Jun 2007 11:58:59 +1200
Message-ID: <4B518E6046247D418A5B86BB5B08389A79372B@UXCHANGE3.UoA.auckland.ac.nz>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: JRI and Axis Web Service
Thread-Index: Ace2u6HNmnC/9LnlQJeA1H7QLcKzmw==
From: "Yifan (Eric) Jiang" <e.jiang@auckland.ac.nz>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 24 Jun 2007 23:58:54.0489 (UTC)
	FILETIME=[9EEE1090:01C7B6BB]
Content-Disposition: inline
Subject: [R] JRI and Axis Web Service
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

Hi all,

 

It is my first time to use the R-help mailing list and doesn't have too
much R acknowledge. The reason that I am writing this email is looking
for helps of using JRI in Java Axis Web Service. Well, I am not quite
sure if this is the right place to ask this kind of questions, but I
can't find the JRI mailing list. So please give me some hints if this is
not the right place to ask these kinds of questions.

 

I've been asked to develop a Java Axis web service to retrieve an
R-script file from the client side and then using JRI jar file in order
to call the R program that installed on the web service server. After
reading the online documentation, I've successfully installed the R
program with rJava and JRI packages. In addition, I can call the R
program to run the R-script by using org.rosuda.JRI.Rengine. Everything
is running fine if this program is running as a normal Java application.
However, I fail to obtain any return when I was trying to consume this
method by using the Java Axis web service.

 

So I am wondering if any one could share their experiences to using JRI
in Axis web service. Your helps mean a lot to me and I've been struggled
to fix this problem for days.

 

Thanks

 

Kind Regards

 

Eric Jiang

 


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

ogJe