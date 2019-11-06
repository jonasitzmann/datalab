From r-help-bounces@stat.math.ethz.ch  Sun Jul  1 07:21:27 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61BLQL9032447
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 07:21:27 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l61BKjRF014632;
	Sun, 1 Jul 2007 13:20:51 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.250])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l61BKU2n014438
	for <r-help@stat.math.ethz.ch>; Sun, 1 Jul 2007 13:20:31 +0200
Received: by an-out-0708.google.com with SMTP id b2so244551ana
	for <r-help@stat.math.ethz.ch>; Sun, 01 Jul 2007 04:20:29 -0700 (PDT)
Received: by 10.100.135.16 with SMTP id i16mr294101and.1183288829868;
	Sun, 01 Jul 2007 04:20:29 -0700 (PDT)
Received: by 10.100.190.17 with HTTP; Sun, 1 Jul 2007 04:20:29 -0700 (PDT)
Message-ID: <bd07447b0707010420h7a1d9de7sdbe0f638a1714ce6@mail.gmail.com>
Date: Sun, 1 Jul 2007 12:20:29 +0100
From: "=?ISO-8859-1?Q?Carlos_\"Gu=E2no\"_Grohmann?="
	<carlos.grohmann@gmail.com>
To: "Milton Cezar Ribeiro" <milton_ruser@yahoo.com.br>
In-Reply-To: <224562.39105.qm@web56609.mail.re3.yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <224562.39105.qm@web56609.mail.re3.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l61BKU2n014438
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] moving-window (neighborhood) analysis
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l61BLQL9032447

Hi Milton

thanks for your help

I want to compute a lot of things.. :)
for instance, I want to look at the large scale (regional, non-local)
behavior of slope and aspect, but since aspect is a circular variable,
I can't just go around with mean/median/etc, which are the tools I
have on GIS, so I was hoping I could find some way to define the
moving-window and the apply some function (from a package or
user-defined) to the values within the window (like circular
statistics).

best regards

Carlos
(Brazil / UK)


On 7/1/07, Milton Cezar Ribeiro <milton_ruser@yahoo.com.br> wrote:
>
> Hi Carlos,
>
> What are really you looking for? What you want to compute for the central
> pixel?
> I use FRAGSTATS to compute some landscape metrics using moving windows.
> There you can define circular and rectangular shaped search windows, sized
> as you want.
>
> Kind regards,
>
> Miltinho
> Brazil
>
>
> ----- Mensagem original ----
> De: "Carlos "Gu�no" Grohmann" <carlos.grohmann@gmail.com>
> Para: r-help@stat.math.ethz.ch
> Enviadas: Quarta-feira, 27 de Junho de 2007 12:27:28
> Assunto: [R] moving-window (neighborhood) analysis
>
>
> Hello all
>
> I was wondering what would be the best way to do a moving-window
> analysis of a matrix? By moving-window I mean that kind of analysis
> common in GIS, where each pixel (matrix element) of the resulting map
> is a function of it neighbors, and the neighborhood is a square
> matrix.
> I was hoping there was some function in R that could do that, where I
> could define the size of the neighborhood, and then apply some
> function to the values, some function I don't have in GIS packages
> (like circular statistics).
>
> thanks all.
>
> Carlos
>
>
> --
> +-----------------------------------------------------------+
>               Carlos Henrique Grohmann - Guano
>   Visiting Researcher at Kingston University London - UK
>   Geologist M.Sc  - Doctorate Student at IGc-USP - Brazil
> Linux User #89721  - carlos dot grohmann at gmail dot com
> +-----------------------------------------------------------+
> _________________
> "Good morning, doctors. I have taken the liberty of removing Windows
> 95 from my hard drive."
> --The winning entry in a "What were HAL's first words" contest judged
> by 2001: A SPACE ODYSSEY creator Arthur C. Clarke
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>
>  ________________________________
> Novo Yahoo! Cad�? - Experimente uma nova busca.


-- 
+-----------------------------------------------------------+
              Carlos Henrique Grohmann - Guano
  Visiting Researcher at Kingston University London - UK
  Geologist M.Sc  - Doctorate Student at IGc-USP - Brazil
Linux User #89721  - carlos dot grohmann at gmail dot com
+-----------------------------------------------------------+
_________________
"Good morning, doctors. I have taken the liberty of removing Windows
95 from my hard drive."
--The winning entry in a "What were HAL's first words" contest judged
by 2001: A SPACE ODYSSEY creator Arthur C. Clarke

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

t/a>Mae0h3eepin