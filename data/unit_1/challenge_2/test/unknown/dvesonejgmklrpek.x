From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 07:30:51 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TBUnL9024969
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 07:30:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TBTFik012136;
	Fri, 29 Jun 2007 13:29:33 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.182])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TBT0Lh012042
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 13:29:00 +0200
Received: by wa-out-1112.google.com with SMTP id j37so1151394waf
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 04:28:57 -0700 (PDT)
Received: by 10.115.78.1 with SMTP id f1mr2555088wal.1183116534625;
	Fri, 29 Jun 2007 04:28:54 -0700 (PDT)
Received: by 10.115.88.15 with HTTP; Fri, 29 Jun 2007 04:28:54 -0700 (PDT)
Message-ID: <da79af330706290428h7b1bb42eqdc968891477dc157@mail.gmail.com>
Date: Fri, 29 Jun 2007 08:28:54 -0300
From: "Henrique Dallazuanna" <wwwhsd@gmail.com>
To: "Taka Matzmoto" <sell_mirage_ne@hotmail.com>
In-Reply-To: <BAY135-F2482060D9F6557D933551AC7080@phx.gbl>
MIME-Version: 1.0
References: <BAY135-F2482060D9F6557D933551AC7080@phx.gbl>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] extracting df and MS values from aov
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
Content-Type: multipart/mixed; boundary="===============0228916561=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0228916561==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1409

Hi,

model1<-aov(dv~iv.1*iv.2*iv.3)
mod.av <- anova(model1)
names(mod.av)
mod.av$Df
mod.av$Mean


On 29/06/07, Taka Matzmoto <sell_mirage_ne@hotmail.com> wrote:
>
> Dear R users,
> I would like to extract df and Mean Sq values. I tried several things (e.g
> .,
> str(model1), names(model1)) but I can't find a way to extract these
> values.
> I also tried to search using
> RSiteSearch. Any help will be appreciated. Thanks Taka,
>
> model1<-aov(dv~iv.1*iv.2*iv.3)
>
> summary(model1)
>
>                            Df Sum Sq Mean Sq
> iv.1                   1  3.200   3.200
> iv.2                   9 62.200   6.911
> iv.3                   3 37.450  12.483
> iv.1:iv.2             9 12.050   1.339
> iv.1:iv.3             3  7.500   2.500
> iv.2:iv.3            27 56.300   2.085
> iv.1:iv.2:iv.3      27 25.250   0.935
>
> _________________________________________________________________
> PC Magazine's 2007 editors' choice for best Web mail=97award-winning Wind=
ows
> Live Hotmail.
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
Henrique Dallazuanna
Curitiba-Paran=E1-Brasil
25=B0 25' 40" S 49=B0 16' 22" O

	[[alternative HTML version deleted]]


--===============0228916561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0228916561==--

         

-a5- >n dMe