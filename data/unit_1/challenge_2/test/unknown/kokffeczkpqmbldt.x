From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 10:44:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63Ei0L9029854
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 10:44:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63EhHvG023501;
	Tue, 3 Jul 2007 16:43:28 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63EQ6VV015833
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 16:26:07 +0200
Received: by wa-out-1112.google.com with SMTP id j37so2748123waf
	for <r-help@stat.math.ethz.ch>; Tue, 03 Jul 2007 07:26:05 -0700 (PDT)
Received: by 10.114.67.2 with SMTP id p2mr6227410waa.1183472765534;
	Tue, 03 Jul 2007 07:26:05 -0700 (PDT)
Received: by 10.115.88.15 with HTTP; Tue, 3 Jul 2007 07:26:05 -0700 (PDT)
Message-ID: <da79af330707030726w7adfbea2m1aa8b252c4e05ba7@mail.gmail.com>
Date: Tue, 3 Jul 2007 11:26:05 -0300
From: "Henrique Dallazuanna" <wwwhsd@gmail.com>
To: "Benoit Chemineau" <benoitchemineau@gmail.com>
In-Reply-To: <50c8fbc90707030712v3e9a878fx698f77717c93dbc1@mail.gmail.com>
MIME-Version: 1.0
References: <50c8fbc90707030712v3e9a878fx698f77717c93dbc1@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] how to get the position of an element in a vector ?
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
Content-Type: multipart/mixed; boundary="===============0428515330=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0428515330==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 947

 which(a=3D=3Dmax(a))


--=20
Henrique Dallazuanna
Curitiba-Paran=E1-Brasil
25=B0 25' 40" S 49=B0 16' 22" O

On 03/07/07, Benoit Chemineau <benoitchemineau@gmail.com> wrote:
>
> Hi, dear R developers,
>
> I've got a vector of monthly volatilities and i would like to get the
> position of the highest volatility of the vector without computing a loop.
> Is there a function that could give me such a result ?
>
> a<-c(1,2,4,100,3)
>
> the highest value is the fourth of the vector.
> how can i get "4" without a loop going through the vector ?
>
> Thanks !
>
> Benoit.
>
>         [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

	[[alternative HTML version deleted]]


--===============0428515330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0428515330==--

                 

wTtf6