From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 20:47:38 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C0laL9020575
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 20:47:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C0jqGF000708;
	Tue, 12 Jun 2007 02:46:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_80, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ipn.mx (ipn.mx [148.204.103.31])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C0jf4v000669
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 02:45:42 +0200
Received: from (ipn.mx [148.204.103.31]) by gateway-IPN.ipn.mx with smtp
	id 75e9_1a70018e_1854_11dc_8bd1_000423d284b6;
	Mon, 11 Jun 2007 19:44:01 +0000
Received: from [148.204.53.65] (HELO [148.204.53.65])
	by ipn.mx (CommuniGate Pro SMTP 4.2.10)
	with ESMTP id 26277547 for r-help@stat.math.ethz.ch;
	Mon, 11 Jun 2007 19:41:59 -0500
Received: from (unknown [148.204.53.65]) by gateway-IPN.ipn.mx with smtp
	id 768f_13237960_1854_11dc_81d7_000423d284b6;
	Mon, 11 Jun 2007 19:43:49 +0000
From: "=?ISO-8859-1?Q?H=E9ctor_Villalobos?=" <hvillalo@ipn.mx>
To: r-help@stat.math.ethz.ch
Date: Mon, 11 Jun 2007 18:45:17 -0600
MIME-Version: 1.0
Message-ID: <466D983D.22125.2401CFC@hvillalo.ipn.mx>
Priority: normal
X-mailer: Pegasus Mail for Windows (4.41)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] barplot and map overlay
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
Content-Type: multipart/mixed; boundary="===============1319048726=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1319048726==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 809

Hi,

I wonder if it is possible with the graphics package to overlay one or seve=
ral plots
(barplots, for example) over a map. Data for the map is in a data frame wit=
h the
latitude and longitude coordinates, and then:

> plot(map$long, map$lat, type =3D"l")

produces the map. I want to put each barplot in specific locations on the m=
ap, namely
at the center of "statistical squares".

I=B4ve seen an example in Paul Murrell=B4s "R Graphics" book that seems app=
ropriate
(grid package), but a bit complicated.

Thanks a lot for any advice.

H=E9ctor

--
H=E9ctor Villalobos <hvillalo@ipn.mx>
 CICIMAR - IPN
 A.P. 592. Col. Centro
 La Paz, Baja California Sur, M=C9XICO. 23000
 Tels. (+52 612) 122 53 44; 123 46 58; 123 47 34  ext. 2425
 Fax.  (+52 612) 122 53 22


	[[alternative HTML version deleted]]


--===============1319048726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1319048726==--



po1r9�eO0