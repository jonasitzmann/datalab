From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 08:35:18 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TCZGL9025609
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 08:35:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TCXo4N003134;
	Fri, 29 Jun 2007 14:34:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.176])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TCXcVe003097
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 14:33:38 +0200
Received: by py-out-1112.google.com with SMTP id p76so1252046pyb
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 05:33:37 -0700 (PDT)
Received: by 10.35.86.12 with SMTP id o12mr553448pyl.1183120417330;
	Fri, 29 Jun 2007 05:33:37 -0700 (PDT)
Received: by 10.35.34.12 with HTTP; Fri, 29 Jun 2007 05:33:37 -0700 (PDT)
Message-ID: <dea6cb960706290533w32cc7718gce288fcfece8dc48@mail.gmail.com>
Date: Fri, 29 Jun 2007 14:33:37 +0200
From: "Christophe Pallier" <christophe@pallier.org>
To: "Birgit Lemcke" <birgit.lemcke@systbot.uzh.ch>
In-Reply-To: <B56CDA79-AAFE-47FA-8076-15E293B43F3D@systbot.uzh.ch>
MIME-Version: 1.0
References: <C7B7CCEB-9193-40ED-850F-0385F9C3BB5B@systbot.uzh.ch>
	<468394EF.50704@bitwrit.com.au>
	<B56CDA79-AAFE-47FA-8076-15E293B43F3D@systbot.uzh.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R Hilfe <r-help@stat.math.ethz.ch>
Subject: Re: [R] Repeat if
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
Content-Type: multipart/mixed; boundary="===============1638141064=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1638141064==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 2211

On 6/29/07, Birgit Lemcke <birgit.lemcke@systbot.uzh.ch> wrote:
>
> Hello Jim,
>
> thanks for your answer. At the moment I am using this code:
>
> Range0<-sapply(1:85, function(i) eval(parse(text=3Dpaste("range(V", i,
> ", na.rm=3DT)", sep=3D""))))



It is a matter of taste, but I tend to prefer:

a <- list()
for (i in 1:85) a[[i]] =3D get(paste("V", i, spe=3D""))

sapply(a, range, na.rm=3DT)

The first two lines put your variables inside a list (assuming they are not
already in one, e.g., in a data.frame).
This is especially interesting if you have other operations to perform on
the V1..V85 variables.

Christophe








and it works really fine.
>
> The code you sent me is also fine but how can I implement, that
> missing values are TRUE?
>
> Thanks a lot for your help
>
> Birgit
>
> Am 28.06.2007 um 13:01 schrieb Jim Lemon:
>
> > Birgit Lemcke wrote:
> >> Hello,
> >> (Power Book G4, Mac OS X, R 2.5.0)
> >> I would like to repeat the function range for 85 Vectors (V1-V85).
> >> I tried with this code:
> >> i<-0
> >>  > repeat {
> >> + i<-i+1
> >> + if (i<85) next
> >> + range (Vi, na.rm =3D TRUE)
> >> + if (i=3D=3D85) break
> >> + }
> >> I presume that the Vi is wrong, because in this syntax i is not
> >> known  as a variable. But I don=B4t know how to say that it is a
> >> variable here.
> >> Would be nice if somebody could help me.
> >> Perhaps I=B4m thinking too complicated and there is an easier way to
> >> do  this.
> > Hi Birgit,
> > This may be what you want:
> >
> > for(i in 1:85)
> >  print(do.call("range",list(as.name(paste("V",i,sep=3D"")))))
> >
> > Jim
> >
>
> Birgit Lemcke
> Institut f=FCr Systematische Botanik
> Zollikerstrasse 107
> CH-8008 Z=FCrich
> Switzerland
> Ph: +41 (0)44 634 8351
> birgit.lemcke@systbot.uzh.ch
>
>
>
>
>
>
>         [[alternative HTML version deleted]]
>
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>


--=20
Christophe Pallier (http://www.pallier.org)

	[[alternative HTML version deleted]]


--===============1638141064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1638141064==--

    


=xJjNmv-