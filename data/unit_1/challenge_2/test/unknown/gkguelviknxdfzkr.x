From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 18:18:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GMIeL9020077
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 18:18:41 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GMH9oo008651;
	Sun, 17 Jun 2007 00:17:25 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_40, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.173])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GMGe4s008496
	for <r-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 00:16:40 +0200
Received: by ug-out-1314.google.com with SMTP id m3so323041uge
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 15:16:40 -0700 (PDT)
Received: by 10.67.96.1 with SMTP id y1mr3789292ugl.1182032200125;
	Sat, 16 Jun 2007 15:16:40 -0700 (PDT)
Received: by 10.66.221.12 with HTTP; Sat, 16 Jun 2007 15:16:40 -0700 (PDT)
Message-ID: <644e1f320706161516t9f6ed01l655c28feb3f34aac@mail.gmail.com>
Date: Sat, 16 Jun 2007 18:16:40 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "=?ISO-8859-1?Q?S=E9bastien?=" <pomchip@free.fr>
In-Reply-To: <46719125.4080908@free.fr>
MIME-Version: 1.0
References: <46719125.4080908@free.fr>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] Define tick mark width
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
Content-Type: multipart/mixed; boundary="===============2138514921=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============2138514921==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1004

does this do what you want?


plot(0, xlim=3Dc(0,10), xaxt=3D'n')
axis(1, at=3Dc(0,5,10))
axis(1,at=3D0:10,tcl=3D-.2, labels=3DFALSE)





On 6/14/07, S=E9bastien <pomchip@free.fr> wrote:
>
> Hello,
>
> Is there a way to define the width of the axis tick marks on
> traditionnal plots? I did not find anything specific on this topic in
> the help and par(lwd=3D...) does not affect the tick marks. I guess that
> using axes=3DFALSE and recreating the axis with the axis() command could
> do the trick but I wonder if there is no easier way.
>
> Thanks in advance
>
> Sebastien
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>



--=20
Jim Holtman
Cincinnati, OH
+1 513 646 9390

What is the problem you are trying to solve?

	[[alternative HTML version deleted]]


--===============2138514921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============2138514921==--

    

tmlc:Hgrr1M