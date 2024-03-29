From bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Wed Jun 13 15:26:35 2007
Return-Path: <bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DJQWL9011561
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 15:26:33 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 291042E2A9; Wed, 13 Jun 2007 19:25:28 +0000 (UTC)
Old-Return-Path: <andrelrf@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,LDOSUBSCRIBER,
	MURPHY_DRUGS_REL8,SPF_PASS autolearn=ham version=3.1.4
X-Original-To: debian-desktop@lists.debian.org
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.179])
	by murphy.debian.org (Postfix) with ESMTP id C3C822E2AE
	for <debian-desktop@lists.debian.org>; Wed, 13 Jun 2007 19:25:15 +0000 (UTC)
Received: by py-out-1112.google.com with SMTP id f47so577476pye
        for <debian-desktop@lists.debian.org>; Wed, 13 Jun 2007 12:25:47 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=gvgnNnA0X9RJlhUrFfcXiYOjgqRJLKA/AqM4UYCSSRansS7crC9/zlcGJvY9yRsOke4bZiOQsmnCJ566WvAnJr6LQAfw02CXRDa7DBwnZnZ0nIdxEKzpHNCa/Uk1CdO4y2PR7dXPzbLPQdEe8lrUD0vOQRbDpqXBRMffdIwzA5c=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=VAJie4VnheukDP+wcXJ+ALxm9hpoi3xouNo3usiiLaFwJZ+71bYyTRNjmHaCWE5EJQPbMD7zn+sjRsRgGI40Lh0+2JuhnMkkgeoVbxhIa3RKiK5BD2WaYMO35k9xYUFl2hfKZ4ENZggHDdkA8bcSLyf6Dhv0gIIFPcHJL6as2i8=
Received: by 10.65.133.8 with SMTP id k8mr1716348qbn.1181762746710;
        Wed, 13 Jun 2007 12:25:46 -0700 (PDT)
Received: by 10.64.203.11 with HTTP; Wed, 13 Jun 2007 12:25:46 -0700 (PDT)
Message-ID: <7a2ce3870706131225l475ddd8dje923a35ca16bf34a@mail.gmail.com>
Date: Wed, 13 Jun 2007 16:25:46 -0300
From: "=?ISO-8859-1?Q?Andr=E9_Luiz_Rodrigues_Ferreira?=" <andrelrf@gmail.com>
To: "Frans Pop" <elendil@planet.nl>
Subject: Re: A common Debian style for Debian Installer and the desktop
Cc: debian-desktop@lists.debian.org, debian-boot@lists.debian.org
In-Reply-To: <200706122349.20602.elendil@planet.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <200706122349.20602.elendil@planet.nl>
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <Ccp8HC.A.ys.nSEcGB@murphy>
Resent-From: debian-desktop@lists.debian.org
X-Mailing-List: <debian-desktop@lists.debian.org> archive/latest/1753
X-Loop: debian-desktop@lists.debian.org
List-Id: <debian-desktop.lists.debian.org>
List-Post: <mailto:debian-desktop@lists.debian.org>
List-Help: <mailto:debian-desktop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-desktop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-desktop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-desktop-request@lists.debian.org
Resent-Date: Wed, 13 Jun 2007 19:25:28 +0000 (UTC)

2007/6/12, Frans Pop <elendil@planet.nl>:
> Hi,
>
> Before the release of Etch there were some proposals [1] to change the
> theme of the graphical version of Debian Installer to match the theme
> developed for the desktop. As D-I release manager, I rejected those
> proposals, basically for two reasons:
> 1) because it was just plain too late in the release process for such
>    changes
> 2) because IMNSHO the proposals were just not good enough and certainly
>    not an improvement over the current D-I theme
>
> It was certainly not because I don't support the goal of a common style
> for Debian. With this mail I hope that there will be a good enough
> proposal that can be implemented for Lenny.
>
> I'd like to mention that I actually do know a bit about this stuff as my
> father worked as a copywriter in advertising and also did quite a bit of
> graphical design and layout work related to that.
>
>
> So, let me explain why I feel that the designs proposed so far are not
> good enough.
>
> Basically my complaint is that the proposals so far have tried to force
> the desktop theme on the installer instead of developing a proper theme
> for the installer itself. Also, the proposals have focussed too much on
> just replacing the banner, and developing a full theme involves a bit
> more than that.
>
> Note that I used the term "style" in the title of this mail, and not
> "theme". There is a huge difference between the two. A style is the
> general concept, while a theme is an implementation of the style for a
> particular purpose.
> A common style means all themes derived from it contain common elements,
> not that all themes are basically the same.
>
> The current desktop theme is fine for the desktops. For the desktop a
> theme basically has a background function and should not be too
> intrusive. It also has to fit with the style of the desktop itself (i.e.
> GNOME or KDE).
>
> The installer is totally different: it is a completely separate piece of
> software and is also probably the only thing in Debian that is totally
> and uniquely "Debian". As such it needs a much stronger identity.

Yeap...
Congratulations to d-i team for this theme.

But, I think the pallet color (used by gtk theme and upper bar image)
is different of used by default desktop, creating a failure on visual
identity of system. :(

>
> * The light blue of the desktop theme really is too weak for the
> installer, especially in combination with the grey general background.
> The contrast between the blue and grey is just not strong enough and this
> makes the whole user interface look weak.
> * As the installer is so uniquely Debian, it needs a much stronger tie
> with the official Debian logo. That means that it needs to include the
> *red* swirl and the *red* "dot" on the i in "Debian" (and in the correct
> font).
> * A theme for the installer needs to fit the constraints for the
> installer. These include low memory usage (avoid too complex graphics,
> keep file sizes low and no unnecessary icons), the resolution and color
> depth it is run in, and the fact that info text can be displayed in the
> banner area (for example in rescue mode).
>
>
> So, my challenge to you is to design a theme for the installer that allows
> it to maintain its strong identity and still allows users to recognize
> that it fits in the same style as the desktop theme.
> Unless that happens you will continue to find me opposed to changing the
> current theme, especially as I've only seen very positive comments in
> reviews about D-I's current theme. People very easily identify it with
> Debian.
>
> To get a proposal considered, you will have to present a _complete_
> proposal. This includes at the very least:
> - a banner
> - a background or background color
> - a color scheme for gui elements like the progress bar

Can we prepare an other GTK theme, using other gtk2 engine?

> - icons
> - patches :-)
> - a netboot-gtk (gtk-miniiso) image built using all these that d-i people
>   can try to evaluate the proposal (this is not as hard as it sounds,
>   AFAIK there are plenty of people involved in debian-desktop who have the
>   skills needed to build a modified image)

Yeap.. I can help with it...

About the images/icons, the artists of DebianArt can help and we can
create a contest on DebianArt for receive ideas...

>
> Cheers,
> FJP
>
> [1] http://wiki.debian.org/DebianDesktopArtwork/DebianInstallerEtch
>
>


-- 
Andre Luiz Rodrigues Ferreira (si0ux) <andrelrf@gmail.com>
 *******************************************************************
Orlandia - SP - Brazil

"Unix is user friendly... It's just selective about who its friends are."


-- 
To UNSUBSCRIBE, email to debian-desktop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org



3Dmncuoin-2';nz