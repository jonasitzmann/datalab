From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 12:51:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KGpJL9012494
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 12:51:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KGoYws013892;
	Wed, 20 Jun 2007 18:50:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from idmailgate1.unizh.ch (idmailgate1.unizh.ch [130.60.127.100])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KGOfO0003497
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 18:24:41 +0200
Received: from localhost (virus6.unizh.ch [130.60.127.89])
	by idmailgate1.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5KGOfFr023822; Wed, 20 Jun 2007 18:24:41 +0200
Received: from idmailgate1.unizh.ch ([130.60.127.100])
	by localhost (virus6.unizh.ch [130.60.127.89]) (amavisd-new, port 10024)
	with LMTP id 24223-19; Wed, 20 Jun 2007 18:24:37 +0200 (CEST)
Received: from [130.60.200.39] ([130.60.200.39]) (authenticated bits=0)
	by idmailgate1.unizh.ch (8.13.8/8.13.8/SuSE Linux 0.7) with ESMTP id
	l5KGOZnk023760
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO);
	Wed, 20 Jun 2007 18:24:37 +0200
In-Reply-To: <1182355373.16388.29.camel@gsimpson.geog.ucl.ac.uk>
References: <EEB60A75-0E84-4202-9393-18A3FAEB4230@systbot.uzh.ch>
	<1182341499.16388.10.camel@gsimpson.geog.ucl.ac.uk>
	<32627275-EC9D-46A4-A342-D96FB0946DCB@systbot.uzh.ch>
	<1182355373.16388.29.camel@gsimpson.geog.ucl.ac.uk>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <351D3EDF-F0E4-4C72-B759-CB775B3985E9@systbot.uzh.ch>
From: Birgit Lemcke <birgit.lemcke@systbot.uzh.ch>
Date: Wed, 20 Jun 2007 18:24:50 +0200
To: gavin.simpson@ucl.ac.uk
X-Mailer: Apple Mail (2.752.2)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R Hilfe <r-help@stat.math.ethz.ch>
Subject: Re: [R] How to extract diagonals
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
Content-Type: multipart/mixed; boundary="===============1291519025=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1291519025==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 7215

Hello Gavin!

I thank you so much that you help me here.
Only to answer your questions there are 452 samples (species) in A=20=20
and the same number in B.
Unfortunately I will get the book from Legendre & Legendre only in 2=20=20
days (small library) but I think for the moment I am busy to try and=20=20
learn with the codes you gave me here.
For me it seems that this will solve all the problems I have at the=20=20
moment.
Now it is my turn to learn about it.

Once again: thanks

Greetings

Birgit


Am 20.06.2007 um 18:02 schrieb Gavin Simpson:

> On Wed, 2007-06-20 at 15:09 +0200, Birgit Lemcke wrote:
>> Hello Gavin and thanks for your answer.
>>
>> Your completely right I dont need the diagonal that is the bisecting
>> line of the angle.
>>
>> I need another diagonal of the (now) matrix.
>>
>>          A1 A2 A3 A4 B1 B2 B3 B4
>>     A1
>>     A2
>>     A3
>>     A4
>>     B1 X
>>     B2       X
>>     B3            X
>>     B4                 X
>>
>
> Not easily, especially without knowing how many samples are in A or B,
> although all that is really needed is some careful subsetting of the
> dist object and a minor amount of programming - unfortunately after
> close to two weeks intensive teaching my brain isn't up to doing that
> just now.
>
> One simple way to do this is to use the distance() function in my
> analogue package (on CRAN). distance() can calculate the=20=20
> dissimilarities
> between one group of samples and another. Here is a simple example=20=20
> using
> some dummy data, from ?distance:
>
>      ## simple example using dummy data
>      train <- data.frame(matrix(abs(runif(200)), ncol =3D 10))
>      rownames(train) <- LETTERS[1:20]
>      colnames(train) <- as.character(1:10)
>      fossil <- data.frame(matrix(abs(runif(100)), ncol =3D 10))
>      colnames(fossil) <- as.character(1:10)
>      rownames(fossil) <- letters[1:10]
>
>      ## calculate distances/dissimilarities between train and fossil
>      ## samples
>      test <- distance(train, fossil)
>
> test is now a matrix, the diagonal elements of which are the values=20=20
> that
> you appear to want:
>
>      diag(test)
>
> if I'm reading your diagram correctly. Note that for this, you need to
> be comparing row 1 from matrix A with row 1 from matrix B - if they=20=20
> are
> in some other order, then this won't work.
>
> distance() has a version of Gower's coefficient for mixed that allows
> you to specify weights. The function is just about clever enough to
> allow missing values if you use method =3D "mixed" in distance(). Be=20=
=20
> sure
> to read up about Gower's mixed coefficient in his 1971 paper (Gower,
> 1971, Biometrics 23; 623--637) and the use that weights and the range
> parameter Rj are put to, or see the relevant section in Legendre &
> Legendre (1998).
>
>> I need for example the diagonal that compares A1 with B1.
>> Do you have an idea how I can handle this?
>>
>> What is the effect of this code?
>>
>> all.equal(diags, diag(as.matrix(dis.bc)))
>
> This was showing you that the diagonals of the dissimilarity matrix=20=20
> are
> just a vector of zeroes. all.equal tests equality of its arguments.
>
>>
>> Thanks a lot and sorry for my inability to solve my problems on my=20=20
>> own.
>
> You're welcome. Using R is a learning experience. You only need to
> grovel and apologise if you have not done your homework before posting
> and not read the FAQ, the documentation or searched the archives, or
> followed the posting guide. Which is not the case here.
>
> HTH
>
> G
>
>>
>> Am 20.06.2007 um 14:11 schrieb Gavin Simpson:
>>
>>> On Wed, 2007-06-20 at 13:26 +0200, Birgit Lemcke wrote:
>>>> Hello,
>>>>
>>>> I am using Mac OS X on a power book and R 2.5.0
>>>>
>>>> I try to extract a diagonal from a dissimilarity matrix made with
>>>> dsvdis, with this code:
>>>>
>>>> diag(DiTestRR)
>>>>
>>>> But I get this error message:
>>>>
>>>> Fehler in array(0, c(n, p)) : 'dim' spezifiziert ein zu groes Array
>>>>
>>>> english:
>>>>
>>>> Error in array(0, c(n, p)) : 'dim' specifies a too big array.
>>>>
>>>> Is there a limit to extract diagonals?
>>>
>>> The returned object is not a matrix, but an object of class "dist"
>>> which
>>> doesn't store the diagonals or the upper triangle of the=20=20
>>> dissimilarity
>>> matrix to save memory. You need to convert the dist object to a=20=20
>>> matrix
>>> first, then extract the diagonal. But, as this shows:
>>>
>>>> require(labdsv)
>>>> ?dsvdis
>>>> data(bryceveg)
>>>> ?dsvdis
>>>> dis.bc <- dsvdis(bryceveg,index=3D"bray/curtis")
>>> Warning in symbol.For("dsvdis") : 'symbol.For' is not needed: please
>>> remove it
>>>> diag(as.matrix(dis.bc))
>>>
>>> This is meaningless as the diagonals are all zero, as they should=20=20
>>> be;
>>> this is the distance between a site and itself.
>>>
>>>>
>>>> I hope somebody will help me!
>>>
>>> So perhaps you could explain why you want the diagonal. It would be
>>> easier to just do:
>>>
>>> diags <- rep(0, length =3D nrow(bryceveg))
>>>
>>> That will be without the sample labels, but that is easily rectified
>>>
>>>> names(diags) <- rownames(bryceveg)
>>>> all.equal(diags, diag(as.matrix(dis.bc)))
>>> [1] TRUE
>>>
>>> So you'll have to reformulate your question if this is not what you
>>> wanted.
>>>
>>> A word of warning, do not do diag(dis.bc)) on the above as it
>>> brought my
>>> Linux box to it's knees trying to do something silly - easily
>>> recoverable, but beware.
>>>
>>> HTH
>>>
>>> G
>>>
>>>>
>>>> Greetings
>>>>
>>>> Birgit Lemcke
>>>
>>> --=20
>>> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~=20
>>> %~%
>>>  Gavin Simpson                 [t] +44 (0)20 7679 0522
>>>  ECRC, UCL Geography,          [f] +44 (0)20 7679 0565
>>>  Pearson Building,             [e] gavin.simpsonATNOSPAMucl.ac.uk
>>>  Gower Street, London          [w] http://www.ucl.ac.uk/~ucfagls/
>>>  UK. WC1E 6BT.                 [w] http://www.freshwaters.org.uk
>>> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~=20
>>> %~%
>>>
>>
>> Birgit Lemcke
>> Institut fr Systematische Botanik
>> Zollikerstrasse 107
>> CH-8008 Zrich
>> Switzerland
>> Ph: +41 (0)44 634 8351
>> birgit.lemcke@systbot.uzh.ch
>>
>>
>>
>>
>>
>>
>> 	[[alternative HTML version deleted]]
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide http://www.R-project.org/posting-=20
>> guide.html
>> and provide commented, minimal, self-contained, reproducible code.
> --=20
> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
>  Gavin Simpson                 [t] +44 (0)20 7679 0522
>  ECRC, UCL Geography,          [f] +44 (0)20 7679 0565
>  Pearson Building,             [e] gavin.simpsonATNOSPAMucl.ac.uk
>  Gower Street, London          [w] http://www.ucl.ac.uk/~ucfagls/
>  UK. WC1E 6BT.                 [w] http://www.freshwaters.org.uk
> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
>

Birgit Lemcke
Institut f=FCr Systematische Botanik
Zollikerstrasse 107
CH-8008 Z=FCrich
Switzerland
Ph: +41 (0)44 634 8351
birgit.lemcke@systbot.uzh.ch






	[[alternative HTML version deleted]]


--===============1291519025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1291519025==--

                  

0 nR 