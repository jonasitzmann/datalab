From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 00:45:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l644jgL9005724
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 00:45:43 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l644ivCY022809;
	Wed, 4 Jul 2007 06:45:17 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ipn.mx (ipn.mx [148.204.103.31])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l644ilDC022732
	for <R-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 06:44:48 +0200
Received: from (mail.ipn.mx [148.204.103.31]) by gateway-IPN.ipn.mx with smtp
	id 4723_1a49a418_29bf_11dc_837b_000423d284b6;
	Tue, 03 Jul 2007 23:42:46 +0000
Received: from [148.204.53.65] (HELO [148.204.53.65])
	by ipn.mx (CommuniGate Pro SMTP 4.2.10)
	with ESMTP id 26884538 for R-help@stat.math.ethz.ch;
	Tue, 03 Jul 2007 23:39:30 -0500
Received: from (unknown [148.204.53.65]) by gateway-IPN.ipn.mx with smtp
	id 46ca_e3ca1daa_29be_11dc_b13f_000423d284b6;
	Tue, 03 Jul 2007 23:41:17 +0000
From: "=?ISO-8859-1?Q?H=E9ctor_Villalobos?=" <hvillalo@ipn.mx>
To: R-help@stat.math.ethz.ch
Date: Tue, 03 Jul 2007 22:42:57 -0600
MIME-Version: 1.0
Message-ID: <468AD0F1.31216.3147CF7@hvillalo.ipn.mx>
Priority: normal
X-mailer: Pegasus Mail for Windows (4.41)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] retrieving stats from bwplot
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
Content-Type: multipart/mixed; boundary="===============1952346415=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1952346415==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 714

Hi all,

I want to retrieve the stats from a 'bwplot' with one factor. I have read t=
he help for 'panel'
function and I'm aware of the option 'stats' which defaults to 'boxplot.sta=
ts' but I didn't
understand it well and therefore I am unable to get what I need.

Thanks in advance.

H=E9ctor Villalobos

Windows XP, R 2.5.0

> bwplot(decrease ~ colpos | treatment, OrchardSprays, horizontal =3D FALSE=
,cex =3D 1, panel =3D function(...) {panel.bwplot(decrease ~ colpos | treat=
ment, stats=3Dboxplot.stats)})

Error in all(is.na(x) | is.na(y)) : argument "y" is missing, with no default
In addition: Warning message:
is.na() applied to non-(list or vector) in: is.na(x)


	[[alternative HTML version deleted]]


--===============1952346415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1952346415==--

           

f rp2.2n 