From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 17:09:22 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EL9LL9026506
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 17:09:22 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EL816C007381;
	Thu, 14 Jun 2007 23:08:13 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from web23014.mail.ird.yahoo.com (web23014.mail.ird.yahoo.com
	[217.146.189.39])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5EL7q0s006990
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 23:07:52 +0200
Received: (qmail 75946 invoked by uid 60001); 14 Jun 2007 16:00:22 -0000
X-YMail-OSG: 8_zbBQoVM1kWCoe0RIMLuH22rp_xENp4COjzl868iQ0aF9P6PzdJvZ6E5d6xwGQfSlppQn8rv7_93RI9m1T8xiZ1e9MuOHUnaLYysOrnqjmG.CbH
Received: from [195.24.202.249] by web23014.mail.ird.yahoo.com via HTTP;
	Thu, 14 Jun 2007 16:00:21 GMT
X-Mailer: YahooMailRC/651.29 YahooMailWebService/0.7.41.16
Date: Thu, 14 Jun 2007 16:00:21 +0000 (GMT)
From: justin bem <justin_bem@yahoo.fr>
To: Diego Gruber <diego.gruber@gmail.com>
MIME-Version: 1.0
Message-ID: <973610.75166.qm@web23014.mail.ird.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R Maillist <r-help@stat.math.ethz.ch>
Subject: [R] Re :  function with xyplot
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
Content-Type: multipart/mixed; boundary="===============0982489154=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0982489154==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1433

myplot <- function(varname){
    myformula<-as.formula(paste(deparse(substitute(varname)),"~Y"))
    xyplot(myformula, group =3D Z, data =3D DF)
}.


Justin BEM
El=E8ve Ing=E9nieur Statisticien Economiste
BP 294 Yaound=E9.
T=E9l (00237)9597295.

----- Message d'origine ----
De : Diego Gruber <diego.gruber@gmail.com>
=C0 : r-help@stat.math.ethz.ch
Envoy=E9 le : Jeudi, 14 Juin 2007, 11h53mn 38s
Objet : [R] function with xyplot

Hi,

I'm a new user trying to switch from SAS, so sorry for the beginner's
question: Suppose I have a dataframe DF that contains variables X,Y,Z. I am
trying to write a function like this:

myplot <- function(varname){xyplot(varname ~ Y, group =3D Z, data =3D DF)}.

The problem is then how to enter X into my function. If I write myplot("X")
I get an error because the argument is a string and xyplot can make nothing
out of it. If I write myplot(X) I also get an error that tells me the object
X does not exist.

Thanks for your help,

Diego

    [[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.







      _____________________________________________________________________=
_________=20

ail !
	[[alternative HTML version deleted]]


--===============0982489154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0982489154==--

                   

r/qm