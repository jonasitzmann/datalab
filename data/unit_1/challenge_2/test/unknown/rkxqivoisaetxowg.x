From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 03:37:46 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L7bjL9021051
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 03:37:45 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L7amXT024992;
	Thu, 21 Jun 2007 09:37:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from idmailgate2.unizh.ch (idmailgate2.unizh.ch [130.60.127.101])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L7Mh7a019635
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 09:22:43 +0200
Received: from localhost (zilnx55.unizh.ch [130.60.127.87])
	by idmailgate2.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5L7MhmT002049; Thu, 21 Jun 2007 09:22:43 +0200
Received: from idmailgate2.unizh.ch ([130.60.127.101])
	by localhost (virus4.unizh.ch [130.60.127.87]) (amavisd-new, port 10024)
	with LMTP id 18191-08; Thu, 21 Jun 2007 09:22:39 +0200 (CEST)
Received: from [130.60.200.39] ([130.60.200.39]) (authenticated bits=0)
	by idmailgate2.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5L7Mc49001998
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO);
	Thu, 21 Jun 2007 09:22:39 +0200
In-Reply-To: <11220912.post@talk.nabble.com>
References: <0B85CE3E-78E8-4DC5-8484-CBB687E61545@systbot.uzh.ch>
	<1182354377.16388.14.camel@gsimpson.geog.ucl.ac.uk>
	<11220912.post@talk.nabble.com>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <7BE6A4DA-4934-44C9-8C5F-209994C99DD0@systbot.uzh.ch>
From: Birgit Lemcke <birgit.lemcke@systbot.uzh.ch>
Date: Thu, 21 Jun 2007 09:22:54 +0200
To: Mark Difford <mark_difford@yahoo.co.uk>
X-Mailer: Apple Mail (2.752.2)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R Hilfe <r-help@stat.math.ethz.ch>
Subject: Re: [R] Dissimilarity
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
Content-Type: multipart/mixed; boundary="===============0491843521=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0491843521==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 7894

Hello Mark,

thank you for your additional advices.
I had already a short look at the vegan package but I think I have to=20=20
look closer and also at the ade4 package.

Unfortunately I am basically from Germany and my French is perhaps=20=20
only a rudimental school french but anyway, I would like to have a=20=20
look at this lecture notes, but I can not open the link you wrote me.
Ah sorry now the link works.

Greetings and thanks a lot.

Birgit

Hey Gavin,
I found it funny that your institute is in the Gower Street.



Am 20.06.2007 um 21:49 schrieb Mark Difford:

>
> Hi Birgit,
>
> Just to add to what Gavin has said.  There are two other very powerful
> packages in R that handle this kind of thing: ade4 and vegan.  Have a
> thorough look at both of them.  You should be looking at Principal
> Coordinate Analysis (Classical Scaling) and Non Metric=20=20
> Multidimensional
> Scaling (NMDS)---with, as Gavin has said, your species as rows.  At=20=20
> least
> the first of these methods goes hand-in-glove with cluster analysis.
>
> Given that you are based in Switzerland, and perhaps are Swiss, you=20=20
> probably
> therefore read and speak French as a second/third language.  You may
> therefore find the ade4 package more useful, since its authors are=20=20
> French,
> and its principal authors, Prof. Daniel Chessel &c., have made=20=20
> publicly
> available some exceptionally useful documentation on these methods=20=20
> on their
> ade4 website.  These are mainly Prof. Chessel's lecture notes:
>
> http://pbil.univ-lyon1.fr/R/enseignement.html
>
> I hope that speeds you on your way.
>
> Regards,
> Mark.
>
> PS: Apropos of the Legendre & Legendre text: It's well worth buying=20=20
> if you
> work in this area; one of its authors, Pierre Legendre, now=20=20
> collaborates
> with Jari Oksanen on some functions of the vegan package.
>
>
> Gavin Simpson wrote:
>>
>> On Wed, 2007-06-20 at 16:13 +0200, Birgit Lemcke wrote:
>>> Hello Stephen,
>>>
>>> I am happy that you help me. Thanks a million.
>>>
>>> It is a good feeling that you confirm my assumption that dsvdis is
>>> not able to deal with missing data, because it says me that I am not
>>> completely incapable.
>>> Okay now I have the problem what to do.
>>> I used this function cause there is an option to weight columns
>>> differently what I havent found in other functions.
>>>
>>> But now I dont understand why I have to transpose the species as
>>> columns? As I read in the help manual of dsvdis this function
>>> calculates dissimilarities between rows.
>>> I have to calculate the dissimilarities between species that are in
>>> rows by the use of morphological characters that are in columns.
>>
>> If you really what to measure the associations between species then
>> leave them as you had them as the rows. But make sure you are=20=20
>> choosing a
>> dissimilarity coefficient that works well for species associations.
>> There is a whole section in Legendre and Legendre 1998 Numerical=20=20
>> Ecology
>> 2nd English Edition Elsevier which may help here.
>>
>> HTH
>>
>> G
>>
>>>
>>> Am I completely wrong with my thoughts?
>>>
>>> Birgit
>>>
>>> Am 20.06.2007 um 15:52 schrieb Stephen B. Cox:
>>>
>>>> Hi Birgit - looks like you have a few issues here.
>>>>
>>>> Birgit Lemcke <birgit.lemcke <at> systbot.uzh.ch> writes:
>>>>
>>>>>
>>>>> Hello you all!
>>>>>
>>>>> I am a completely new user of R and I have a problem to solve.
>>>>> I am using Mac OS X on a PowerBook.
>>>>>
>>>>> I have a table that looks like this:
>>>>>
>>>>>             species X1 X2 X3 X4 X5 X6 X7 X8 X9 X10 X11 X12 X13 X14
>>>>> X15 X16 X17 X18 X19 X20 X21
>>>>> 1        Anth_cap1  1  0  0  1  0  1  0  0  1   0   0   0   0   0
>>>>> 0   0   1   0   0   0   1
>>>>> 2       Anth_crin1  1  0  0  1  0  1  0  0  1   0   1   0   0   0
>>>>> 0   0   0   1   0   0   1
>>>>> 3        Anth_eck1  1  0  0  1  0  1  0  0  1   0   0   0   0   0
>>>>> 0   0   0   1   0   0   1
>>>>> 4       Anth_gram1  1  0  0  1  0  1  0  0  1  NA  NA  NA  NA   0
>>>>> 0   0   0   1   0   0   0
>>>>> 5       Anth_insi1  1  0  0  1  0  1  0  0  1   0   0   0   1   0
>>>>> 0   0   0   1   0   0   1
>>>>>
>>>>> All columns  are binary coded characters.
>>>>> The Import was done by this
>>>>>
>>>>> Test<-read.table("TestRFemMalBivariat1.csv",header =3D TRUE, sep=20=
=20
>>>>> =3D ";")
>>>>
>>>> First - you need to transpose the matrix to have species as
>>>> columns.  You can do
>>>> this with:
>>>>
>>>> d2 =3D data.frame(t(Test[,-1]))
>>>> colnames(d2) =3D Test[,1]  #now use d2
>>>>
>>>>
>>>>
>>>>> Now I try to perform a similarity analysis with the dsvdis=20=20
>>>>> function
>>>>> of the labdsv package with the sorensen-Index.
>>>>>
>>>>> My first question is if all zeros in my table are seen as missing
>>>>> values and if it islike that how can I change without turning zero
>>>>> into other numbers?
>>>>
>>>> no - the zeros are valid observations.  the na's are missing data.
>>>>
>>>>
>>>>>   DisTest<-dsvdis(Test, index =3D "sorensen")
>>>>>
>>>>> But I always get back this error message:
>>>>>
>>>>> Warnung in symbol.For("dsvdis") :'symbol.For' is not needed:=20=20
>>>>> please
>>>>> remove it
>>>>> Fehler in dsvdis(Test, index =3D "sorensen") :
>>>>> 	NA/NaN/Inf in externem Funktionsaufruf (arg 1)
>>>>> Zustzlich: Warning message:
>>>>> NAs durch Umwandlung erzeugt
>>>>
>>>>
>>>>
>>>> Second - you have an issue with missing data.  It looks like dsvdis
>>>> does not
>>>> like the NA's - so you must make a decision about what to do.
>>>> Delete that
>>>> species, delete that site, or whatever...
>>>>
>>>> Finally - the warning over symbol.For is an issue with the labdsv
>>>> library itself
>>>> - nothing you are doing wrong.  The results will still be valid -
>>>> but the use of
>>>> symbol.For is something that will eventually need to be changed in
>>>> the labdsv
>>>> library.
>>>>
>>>> hth,
>>>>
>>>> stephen
>>>
>>> Birgit Lemcke
>>> Institut fr Systematische Botanik
>>> Zollikerstrasse 107
>>> CH-8008 Zrich
>>> Switzerland
>>> Ph: +41 (0)44 634 8351
>>> birgit.lemcke@systbot.uzh.ch
>>>
>>>
>>>
>>>
>>>
>>>
>>> 	[[alternative HTML version deleted]]
>>>
>>> ______________________________________________
>>> R-help@stat.math.ethz.ch mailing list
>>> https://stat.ethz.ch/mailman/listinfo/r-help
>>> PLEASE do read the posting guide
>>> http://www.R-project.org/posting-guide.html
>>> and provide commented, minimal, self-contained, reproducible code.
>> --=20
>> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
>>  Gavin Simpson                 [t] +44 (0)20 7679 0522
>>  ECRC, UCL Geography,          [f] +44 (0)20 7679 0565
>>  Pearson Building,             [e] gavin.simpsonATNOSPAMucl.ac.uk
>>  Gower Street, London          [w] http://www.ucl.ac.uk/~ucfagls/
>>  UK. WC1E 6BT.                 [w] http://www.freshwaters.org.uk
>> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>>
>
> --=20
> View this message in context: http://www.nabble.com/Re%3A-=20
> Dissimilarity-tf3952667.html#a11220912
> Sent from the R help mailing list archive at Nabble.com.
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-=20
> guide.html
> and provide commented, minimal, self-contained, reproducible code.

Birgit Lemcke
Institut f=FCr Systematische Botanik
Zollikerstrasse 107
CH-8008 Z=FCrich
Switzerland
Ph: +41 (0)44 634 8351
birgit.lemcke@systbot.uzh.ch






	[[alternative HTML version deleted]]


--===============0491843521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0491843521==--

         

Kt
tR
0l1>02s