From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:55:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCt5L9028539
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:55:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5O8amQ4000384;
	Sun, 24 Jun 2007 10:36:54 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from mu-out-0910.google.com (mu-out-0910.google.com [209.85.134.186])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5O8Zmp9032739
	for <r-help@stat.math.ethz.ch>; Sun, 24 Jun 2007 10:35:48 +0200
Received: by mu-out-0910.google.com with SMTP id w8so1356890mue
	for <r-help@stat.math.ethz.ch>; Sun, 24 Jun 2007 01:35:48 -0700 (PDT)
Received: by 10.82.152.16 with SMTP id z16mr10060434bud.1182674147879;
	Sun, 24 Jun 2007 01:35:47 -0700 (PDT)
Received: by 10.82.154.18 with HTTP; Sun, 24 Jun 2007 01:35:47 -0700 (PDT)
Message-ID: <815b70590706240135q6929a5cah689603f1925ece5e@mail.gmail.com>
Date: Sun, 24 Jun 2007 09:35:47 +0100
From: "David Barron" <mothsailor@googlemail.com>
To: "=?ISO-8859-1?Q?Maja_Schr=F6ter?=" <maja.schroeter@gmx.de>,
   r-help <r-help@stat.math.ethz.ch>
In-Reply-To: <20070623205456.7320@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
References: <20070623205456.7320@gmx.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5O8Zmp9032739
Subject: Re: [R] Highliting a text in a plot
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5PCt5L9028539

How about this:

hilight <- function(x,y,s, bg="yellow") {
    text.width <- strwidth(s)
    text.height <- strheight(s)
    rect(x,y,x+text.width,y+text.height,col=bg,border=NA)
    text(x,y,s,adj=c(0,0))
}

plot(1:10,1:10,type="b")
hilight(4,4,"Point")


On 23/06/07, "Maja Schr�ter" <maja.schroeter@gmx.de> wrote:
> Hi everyone,
>
> I want to highlight something in a plot.
> So I want to write a text with a yellow background.
>
>
> I tried to make use of text(x,y,"hallo",bg="yellow")
> but that does not work.
>
> I know I am a handful. Sorry!
>
> Maja!
> --
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>


-- 
=================================
David Barron
Said Business School
University of Oxford
Park End Street
Oxford OX1 1HP

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

DVlCoRFV