From r-help-bounces@stat.math.ethz.ch  Sat Jun  2 19:32:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52NWIhB029157
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 19:32:19 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l52NVcIQ006179;
	Sun, 3 Jun 2007 01:31:54 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from uu01msg-exb01.soliscom.uu.nl (uu01msg-exb01.soliscom.uu.nl
	[131.211.4.82])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l52NUstK005552
	for <r-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 01:30:55 +0200
x-mimeole: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Sun, 3 Jun 2007 01:30:53 +0200
Message-ID: <94E133D09AA24D43BF6341B675C01A338DCD5F@uu01msg-exb01.soliscom.uu.nl>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Updating R version
Thread-Index: AcelXIvvpZHaRpuUR2eiN1KOqWc6ywAELanm
References: <c98270fd0706021413i3d1e31f9q524865f88c7b491b@mail.gmail.com>
From: "Bojanowski, M.J.  \(Michal\)" <M.J.Bojanowski@uu.nl>
To: "Raghu Naik" <naik.raghu@gmail.com>, <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] ODP:  Updating R version
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
Content-Type: multipart/mixed; boundary="===============2081379259=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============2081379259==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1755

Is R not loading the packages at all (like they were never installed), or p=
erhaps it is complaining that they were build on the older version of R? Yo=
u have to be more specific here about what happens etc.

For now try running update.packages and see if it fixes the problem.

I would also suggest keeping all the additional packages (beyond R base ins=
tallation) in the separate library tree -- less work every time you update =
R. See ?library and ?.libPaths


hth,

Michal

:
::
::: Note that my e-mail address has changed to m.j.bojanowski at uu dot nl
::: Please update you address books accordingly. Thank you!
::
:


____________________________________
Michal Bojanowski
ICS / Department of Sociology
Utrecht University
Heidelberglaan 2; 3584 CS Utrecht
Room 1428
m.j.bojanowski at uu dot nl
http://www.fss.uu.nl/soc/bojanowski/



-----Wiadomo=B6=E6 oryginalna-----
Od: r-help-bounces@stat.math.ethz.ch w imieniu Raghu Naik
Wys=B3ano: So 2007-06-02 23:13
Do: r-help@stat.math.ethz.ch
Temat: [R] Updating R version

A quick question.  I am trying to understand how I could move the installed
packages in my R 2.3 version to the newly installed R 2.5 version, without
having to install all the packages again. I copied the files under the old
library subdirectory to the new library subdirectory. But still the newer
version is not recognizing the packages that were copied over.

Thanks.

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.


	[[alternative HTML version deleted]]


--===============2081379259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============2081379259==--

         

yedJ6o�a L