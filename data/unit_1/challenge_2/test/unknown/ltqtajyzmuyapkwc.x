From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 12:00:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54G07hB029916
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 12:00:08 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54FxPeP017740;
	Mon, 4 Jun 2007 17:59:40 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.237])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54Fsjdt015872
	for <r-help@stat.math.ethz.ch>; Mon, 4 Jun 2007 17:54:46 +0200
Received: by nz-out-0506.google.com with SMTP id o37so892379nzf
	for <r-help@stat.math.ethz.ch>; Mon, 04 Jun 2007 08:54:45 -0700 (PDT)
Received: by 10.115.54.1 with SMTP id g1mr4899484wak.1180972484963;
	Mon, 04 Jun 2007 08:54:44 -0700 (PDT)
Received: by 10.114.126.4 with HTTP; Mon, 4 Jun 2007 08:54:44 -0700 (PDT)
Message-ID: <c84ed6950706040854v1ee57c11mf842daa730dd9417@mail.gmail.com>
Date: Mon, 4 Jun 2007 12:54:44 -0300
From: "R Help" <rhelp.stats@gmail.com>
To: fsando <fsando@fs-analyse.dk>
In-Reply-To: <461A2D9E.4060603@fs-analyse.dk>
MIME-Version: 1.0
References: <461A2D9E.4060603@fs-analyse.dk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] R 'could not find any X11 fonts'
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

Hi there,

Here's something I found on the web ...

You'll probably have to log in as root in order to edit the xorg.conf file.

Hope this works for you.

- Mo

====================================
I edited /etc/X11/xorg.conf to change every instance of X11/fonts to
fonts/X11.

So now that section is

Section "Files"
FontPath "/usr/share/fonts/X11/misc"
FontPath "/usr/share/fonts/X11/cyrillic"
FontPath "/usr/share/fonts/X11/100dpi/:unscaled"
FontPath "/usr/share/fonts/X11/75dpi/:unscaled"
FontPath "/usr/share/fonts/X11/Type1"
FontPath "/usr/share/fonts/X11/100dpi"
FontPath "/usr/share/fonts/X11/75dpi"
FontPath "/usr/share/fonts/X11/misc"
# path to defoma fonts
FontPath "/var/lib/defoma/x-ttcidfont-conf.d/dirs/TrueType"
EndSection


whereas the automatic configuration from my clean installation of Edgy was
Section "Files"
FontPath "/usr/share/X11/fonts/misc"
FontPath "/usr/share/X11/fonts/cyrillic"
FontPath "/usr/share/X11/fonts/100dpi/:unscaled"
FontPath "/usr/share/X11/fonts/75dpi/:unscaled"
FontPath "/usr/share/X11/fonts/Type1"
FontPath "/usr/share/X11/fonts/100dpi"
FontPath "/usr/share/X11/fonts/75dpi"
FontPath "/usr/share/fonts/X11/misc"
# path to defoma fonts
FontPath "/var/lib/defoma/x-ttcidfont-conf.d/dirs/TrueType"
EndSection

The new configuration takes effect after rebooting.

========================================

On 4/9/07, fsando <fsando@fs-analyse.dk> wrote:
>
> Thanks anhnmncb
> I think the problem comes from the 'adobe' part of the font names - I
> 'solved' the problem by installing the newses Ubuntu 7.04 beta and now R
> reports the same font names without 'adobe'.
>
> anhnmncb@gmail.com wrote:
> > You haven't installed such xorg-fonts-75dpi fonts, which is the
> > default xorg's fonts.
> > I think maybe there are other better solutions like changing the default
> > fonts that r looks for, but I don't know how.
> > On Thu, Apr 05, 2007 at 01:55:53PM +0200, fsando wrote:
> >> I'm having this problem - and I have seen earlier post on the same
> >> problem - but the solutions either do not work for me or (being fairly
> >> new to linux) I do not understand the suggested actions.
> >>
> >> So here goes:
> >> Whenever I try to add a 'main' title R responds with an error that it
> >> can't find any X11 fonts.
> >>
> >> ### Very basic examples ###
> >> # 1. No error (a scatterplot x=1:10 and y=1:10):
> >> plot(1:10,1:10)
> >> # 2. No error (as above, but add a subtitle):
> >> plot(1:10,1:10,sub="subtitle")
> >> # 3a. Error (as above, but add a main title):
> >> plot(1:10,1:10,main="Main title")
> >> # 3b. Error (an equivalent way to produce the same):
> >> plot(1:10,1:10) # no error
> >> title(main="main") # error
> >>
> >> # produced error:
> >>  > plot(1:10,1:10,main="main")
> >> Error in title(...) : could not find any X11 fonts
> >> Check that the Font Path is correct.
> >>
> >> # output from sessionInfo()
> >>  > sessionInfo()
> >> Version 2.3.1 (2006-06-01)
> >> i486-pc-linux-gnu
> >>
> >> attached base packages:
> >> [1] "methods"   "stats"     "graphics"  "grDevices" "utils"
> "datasets"
> >> [7] "base"
> >>
> >> # I don't know if this is relevant but
> >> # from getOption("X11fonts")
> >>  > getOption('X11fonts')
> >> [1] "-adobe-helvetica-%s-%s-*-*-%d-*-*-*-*-*-*-*"
> >> [2] "-adobe-symbol-medium-r-*-*-%d-*-*-*-*-*-*-*"
> >>
> >> ### examples end ###
> >>
> >> The solution may obvious for somebody more familiar with Linux, but as
> >> stated, I'm new to Linux, so I would appreciate detailed explanations.
> >> Thanks
> >>
> >> ______________________________________________
> >> R-help@stat.math.ethz.ch mailing list
> >> https://stat.ethz.ch/mailman/listinfo/r-help
> >> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> >> and provide commented, minimal, self-contained, reproducible code.
> >
> >
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

htnF k