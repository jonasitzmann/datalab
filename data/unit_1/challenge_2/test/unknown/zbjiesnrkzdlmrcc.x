From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 03:39:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l647dNL9007376
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 03:39:25 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l647bja4010835;
	Wed, 4 Jul 2007 09:38:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.244])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l647bXcp010733
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 09:37:34 +0200
Received: by an-out-0708.google.com with SMTP id b2so397907ana
	for <r-help@stat.math.ethz.ch>; Wed, 04 Jul 2007 00:37:33 -0700 (PDT)
Received: by 10.100.144.11 with SMTP id r11mr4713868and.1183534653465;
	Wed, 04 Jul 2007 00:37:33 -0700 (PDT)
Received: by 10.100.132.13 with HTTP; Wed, 4 Jul 2007 00:37:33 -0700 (PDT)
Message-ID: <f8e6ff050707040037h58fba7a1w67c2b829dc9b2cb0@mail.gmail.com>
Date: Wed, 4 Jul 2007 09:37:33 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: "Prof Brian Ripley" <ripley@stats.ox.ac.uk>
In-Reply-To: <Pine.LNX.4.64.0707031255400.25506@gannet.stats.ox.ac.uk>
MIME-Version: 1.0
Content-Disposition: inline
References: <468A1B01.9090100@genoscope.cns.fr>
	<f8e6ff050707030314h21fa2898m1dc1ce35b91dbb54@mail.gmail.com>
	<Pine.LNX.4.64.0707031255400.25506@gannet.stats.ox.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-Help <r-help@stat.math.ethz.ch>
Subject: Re: [R] possible bug in ggplot2 v0.5.2???
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

On 7/4/07, Prof Brian Ripley <ripley@stats.ox.ac.uk> wrote:
> On Tue, 3 Jul 2007, hadley wickham wrote:
>
> > Hi Stephane,
> >
> > The problem is that the windows graphics device doesn't support
> > transparent colours.  You can get around this in two ways:
>
> It certainly does!  Try col="transparent" (and perhaps consult your
> dictionary).  It was news to me that the windows() graphics device worked
> on
> Linux i586.

Well my dictionary defines transparent as "allowing light to pass
through so that objects behind can be distinctly seen" which I believe
applies here (ie. stained glass windows and blue points with alpha 0.5
are both transparent).  What does your dictionary say?

> What it does not support as yet is translucent colours, and that is a
> restriction imposed by Windows (translucency support was introduced for
> Windows XP, and we still try to support older versions of Windows, unlike
> the MacOS people).  I have been working on a workaround, so translucency
> support is likely to be implemented in R 2.6.0 for users of XP or later.

I am confused by your implication that windows (prior to XP) does not
support translucency.  Perhaps it is not supported at the operating
system level, but it has certainly been available at the application
level for a very long time.

> Given that neither of the two main screen devices and neither of the
> standard print devices support translucency, the subject line looks
> correct to me: the problem surely lies in the assumptions made in ggplot2.

The features of the windows and X11 devices clearly lag behind the
quartz and pdf devices.  I can program for the lowest common
denominator or I can use modern features that support the tasks I am
working on.  I choose the later, and it is certainly your prerogative
to declare that a bug in me.

Hadley

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

tnehttu/+av-tO:c