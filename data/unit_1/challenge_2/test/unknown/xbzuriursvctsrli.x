From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 09:41:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5IDfRL9018033
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 09:41:27 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5IDem4w006759;
	Mon, 18 Jun 2007 15:41:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from web27515.mail.ukl.yahoo.com (web27515.mail.ukl.yahoo.com
	[217.146.177.219])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5IDedqR006723
	for <R-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 15:40:39 +0200
Received: (qmail 37083 invoked by uid 60001); 18 Jun 2007 13:40:39 -0000
X-YMail-OSG: RJbDDeQVM1kv7h9bRc2O5OtYQip58O098aEN.q.jnPNIWwYSO.RFDKe4diKobgc9TlfSIFb9xlbh02laIKnapJ8.PFoXc2XahNyuJ3Rl7ZU5_XCAOWB50tclpP8-
Received: from [217.19.195.242] by web27515.mail.ukl.yahoo.com via HTTP;
	Mon, 18 Jun 2007 13:40:38 GMT
X-Mailer: YahooMailRC/651.29 YahooMailWebService/0.7.41.16
Date: Mon, 18 Jun 2007 13:40:38 +0000 (GMT)
From: elyakhlifi mustapha <elyakhlifi_mustapha@yahoo.fr>
To: R-help@stat.math.ethz.ch
MIME-Version: 1.0
Message-ID: <964808.32304.qm@web27515.mail.ukl.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] data.frame
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
Content-Type: multipart/mixed; boundary="===============1802893085=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1802893085==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1446

hello,
I'm trying to write a function which take a matrix and give a dataframe wit=
h column names and row names but the problem I meet it's that the column nu=
mber is changing and the vector containing the column names is also changin=
g how can I do to write a good progam for the moment I tryied like follow:

dm <- ncol(M)
v <- vector()
t <- 1
while (dm > 0) {
 v <- c(v,paste("R=E9p",t,sep=3D""))
 t <- t + 1
 dm <- dm - 1
}
nv <- noquote(v)
df <- function (M,x) {
 return(data.frame(nv[1] =3D M[,1], nv[2] =3D M[,2],nv[3] =3D M[,3], row.na=
mes =3D var[[1]], check.rows =3D TRUE, check.names =3D TRUE))
}

 I know that there are errors but the important is that R doesn't recognize=
 nv.
For more precision the martix M is like follow:

 M
      [,1] [,2] [,3]
 [1,] 6.52   NA 6.59
 [2,] 6.99 6.85 6.38
 [3,] 6.92 6.72 6.99
 [4,] 6.59 5.51 6.45
 [5,] 6.65 7.12 6.99
 [6,] 6.18 5.71 5.78
 [7,] 6.65 6.52 6.72
 [8,] 6.65 6.79 6.12
 [9,] 6.59 6.65 6.32
[10,] 5.85 6.05 6.38
[11,] 6.38 6.79 6.65
[12,] 6.79 6.52 6.72
[13,] 6.12 6.25 6.38
[14,] 6.99 6.72 6.38
[15,] 6.59 6.65 6.99
[16,] 6.45 6.18 6.59
[17,] 5.65 6.05 6.52
[18,] 6.52 6.85 6.65
[19,] 6.18 6.32 6.32
[20,] 6.99 6.65 6.72
[21,] 6.52 6.99 6.32

Can you help me?
thanks.


      _____________________________________________________________________=
________=20
Ne gardez plus qu'une seule adresse mail ! Copiez vos mails vers Yahoo! Mai=
l=20
	[[alternative HTML version deleted]]


--===============1802893085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1802893085==--

   

ixsrmOfBr 