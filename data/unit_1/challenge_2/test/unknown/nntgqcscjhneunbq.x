From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 03:06:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5S75vL9006577
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 03:06:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S75FRC007687;
	Thu, 28 Jun 2007 09:05:25 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from web23003.mail.ird.yahoo.com (web23003.mail.ird.yahoo.com
	[217.146.189.28])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5S754rD007637
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 09:05:04 +0200
Received: (qmail 88548 invoked by uid 60001); 28 Jun 2007 07:05:04 -0000
Message-ID: <20070628070504.88546.qmail@web23003.mail.ird.yahoo.com>
X-YMail-OSG: ybtfHi0VM1nZpINW4W4jQhSOO0zDmE4kbLeIeFHfAlJWht1cCREQ9iT9sP2SUJRUB37dFvwPx7cBdwvmNkQThZowAja4mDy5ucwZKvvCz4w.i6VuS4_TYH3VwZQ-
Received: from [195.24.202.249] by web23003.mail.ird.yahoo.com via HTTP;
	Thu, 28 Jun 2007 07:05:04 GMT
X-Mailer: YahooMailRC/651.38 YahooMailWebService/0.7.41.16
Date: Thu, 28 Jun 2007 07:05:04 +0000 (GMT)
From: justin bem <justin_bem@yahoo.fr>
To: yoooooo <magno_yu@ml.com>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R Maillist <r-help@stat.math.ethz.ch>
Subject: [R] Re :  restructuring matrix
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
Content-Type: multipart/mixed; boundary="===============0969620444=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0969620444==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 2933

se reshape package
=20
Justin BEM
El=E8ve Ing=E9nieur Statisticien Economiste
BP 294 Yaound=E9.
T=E9l (00237)9597295.

----- Message d'origine ----
De : yoooooo <magno_yu@ml.com>
=C0 : r-help@stat.math.ethz.ch
Envoy=E9 le : Jeudi, 28 Juin 2007, 2h15mn 52s
Objet : Re: [R] restructuring matrix


Yea... let's say I constructed a matrix with rownames/colnames be those
unique elements.. then what should I do? I don't want to do mapply, etc to
find the field.. I'm wondering if there's a smarter way using row/col..
etc... Thanks!




Moshe Olshansky-2 wrote:
>=20
> If your original matrix is A then=20
> unique(A$People) and unique(A$Desc)=20
> will produce a vector of different people and a vector
> of different descriptions.
>=20
> --- yoooooo <magno_yu@ml.com> wrote:
>=20
>>=20
>> Hi all,=20
>>=20
>>     let's say I have matrix
>>=20
>> People    Desc    Value
>> Mary      Height    50
>> Mary      Weight   100
>> Fanny    Height     60
>> Fanny     Height    200
>>=20
>> Is there a quick way to form the following matrix?=20
>>=20
>> People   Height    Weight
>> Mary      50         100
>> Fanny     60        200
>>=20
>> (Assuming I don't know the length of people/desc and
>> let's say these are
>> characters matrix.. I tried play with row(), col(),
>> etc.. but I don't seem
>> to find like a duplicate match function...=20
>> I'm trying to write some one/two liner that convert
>> my resulting matrix to
>> vector and pick the appropriate fields.. etc )
>>=20
>> Thanks!
>>=20
>> --=20
>> View this message in context:
>>
> http://www.nabble.com/restructuring-matrix-tf3991741.html#a11334950
>> Sent from the R help mailing list archive at
>> Nabble.com.
>>=20
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained,
>> reproducible code.
>>
>=20
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>=20
>=20

--=20
View this message in context: http://www.nabble.com/restructuring-matrix-tf=
3991741.html#a11335437
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.







      _____________________________________________________________________=
________=20
Ne gardez plus qu'une seule adresse mail ! Copiez vos mails vers Yahoo! Mai=
l=20
	[[alternative HTML version deleted]]


--===============0969620444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0969620444==--

         

;n /tt3abl�ON.