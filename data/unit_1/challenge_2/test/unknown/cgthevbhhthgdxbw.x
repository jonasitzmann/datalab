From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 09:47:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CDlqL9026940
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 09:47:52 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CDkbn1031127;
	Tue, 12 Jun 2007 15:46:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.7 required=5.0 tests=AWL, BAYES_95,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from poster2.unibo.it (poster2.unibo.it [137.204.24.59])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CDkVvL031098
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 15:46:32 +0200
Received: from localhost (localhost.localdomain [127.0.0.1])
	by poster2.unibo.it (Postfix) with ESMTP id B97967DE
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 15:46:31 +0200 (CEST)
Received: from EXBK04 (unknown [137.204.25.207])
	by poster2.unibo.it (Postfix) with ESMTP id A1C497AF
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 15:46:26 +0200 (CEST)
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 12 Jun 2007 15:46:26 +0200
Message-ID: <DF025CBD019FD846B06D381BE3D0C3D302CC51@EXBK04.personale.dir.unibo.it>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Building packages with subroutine in fortran 90 under windows xp
Thread-Index: Aces+BKHf3JqT/ymS3So0CTFDVf/kg==
From: "Cinzia Viroli" <cinzia.viroli@unibo.it>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5CDkVvL031098
Subject: [R] Building packages with subroutine in fortran 90 under windows xp
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

Hello,

I work under windows xp and I am trying to build a R package with a subroutine written in fortran 90. 
I have installed all the updated tools and I am working with R-2.4.0 or R-2.5.0. 

When I check a package with a subroutine in fortran 77 (and extension f) everything is ok. 
When I try to build the same package with a subroutine in fortran 90 (with extension f90) the following warning appears:

Subdirectory 'src' contains no source files

and the package can not be built. 

The funny thing is that I have successfully built the same package with fortran 90 last March and everything was good. 

I can not imagine what is the problem, can anyone help me?
Thank you in advance,
best,
Cinzia





------------------------------------------------------------------------------------------------------------------------------------------------
Cinzia Viroli
Dipartimento di Scienze Statistiche "Paolo Fortunati" 
Via delle Belle Arti 41 
40126 Bologna 
Italy
Ph.  +39 051 2094628
Fax  +39 051 232153

home: www2.stat.unibo.it/viroli

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

k 6 c4Lwet