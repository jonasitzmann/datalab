From speakup-bounces@braille.uwo.ca  Sun Jun 17 20:45:24 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5I0jNL9012060
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 20:45:23 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I05Mi-00087p-00; Sun, 17 Jun 2007 20:45:08 -0400
Received: from eastrmmtao101.cox.net ([68.230.240.7])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I05Mg-00087W-00
	for <speakup@braille.uwo.ca>; Sun, 17 Jun 2007 20:45:06 -0400
Received: from eastrmimpo01.cox.net ([68.1.16.119]) by eastrmmtao101.cox.net
	(InterMail vM.7.08.02.01 201-2186-121-102-20070209) with ESMTP id
	<20070618004427.QRLA13718.eastrmmtao101.cox.net@eastrmimpo01.cox.net>
	for <speakup@braille.uwo.ca>; Sun, 17 Jun 2007 20:44:27 -0400
Received: from [192.168.1.100] ([72.213.197.48])
	by eastrmimpo01.cox.net with bizsmtp
	id CokR1X00c138HfL0000000; Sun, 17 Jun 2007 20:44:26 -0400
Date: Sun, 17 Jun 2007 19:44:34 -0500 (CDT)
From: Deedra Waters <dmwaters@gentoo.org>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: gentoo dropping speakup support
In-Reply-To: <1182118939.3634.15.camel@layla.Mshome>
Message-ID: <Pine.LNX.4.64.0706171937160.4393@monster>
References: <20070617200022.GA16786@linux1>
	<1182118939.3634.15.camel@layla.Mshome>
MIME-Version: 1.0
X-BeenThere: speakup@braille.uwo.ca
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: "Speakup is a screen review system for Linux."
	<speakup@braille.uwo.ca>
List-Id: "Speakup is a screen review system for Linux."
	<speakup.braille.uwo.ca>
List-Unsubscribe: <http://speech.braille.uwo.ca/mailman/listinfo/speakup>,
	<mailto:speakup-request@braille.uwo.ca?subject=unsubscribe>
List-Archive: <http://speech.braille.uwo.ca/pipermail/speakup>
List-Post: <mailto:speakup@braille.uwo.ca>
List-Help: <mailto:speakup-request@braille.uwo.ca?subject=help>
List-Subscribe: <http://speech.braille.uwo.ca/mailman/listinfo/speakup>,
	<mailto:speakup-request@braille.uwo.ca?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: speakup-bounces@braille.uwo.ca
Errors-To: speakup-bounces@braille.uwo.ca

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Sun, 17 Jun 2007, Michael Whapples wrote:

> Date: Sun, 17 Jun 2007 23:22:19 +0100
> From: Michael Whapples <mwhapples@aim.com>
> Reply-To: Speakup is a screen review system for Linux.
>     <speakup@braille.uwo.ca>
> To: Speakup is a screen review system for Linux. <speakup@braille.uwo.ca>
> Subject: Re: gentoo dropping speakup support
>
> While it is a shame that you find this, thank you for saying what the
> exact problem is. If speakup won't compile on x86-64 either now, I am
> sure that soon someone will fix that as it probably affects quite a
> number of users.

- From what i gather it's not building with  .22 in general though i could
be wrong. However, not building on x86-64 does effect a lot of users,
because a lot of the blind folks  i've talked to lately are using amd64
and other similar systems.

>
> Other than the install of gentoo, I don't think the impact is as bad as
> it is for other distros as gentoo users may tend to want to compile a
> custom kernel anyway. The install probably isn't such a problem as I
> think if you are doing an install from the internet then it doesn't
> matter what version of gentoo the CD is as the installed system will be
> the latest, so a user could use the last release with speakup to install
> with speakup (unless they are doing an install without internet access,
> for which there may not be a solution).

actually, most gentoo users use the gentoo-sources kernels because they
have several aditional patches. You are right in that gentoo users can
use an older livecd to install the system, which is what i suggest
people do since any newer releases won't be able to talk because of the
speakup support being removed.
>
> On a different note, while I don't know enough about the kernel to be
> certain, but is this problem to do with speakup and the way it accesses
> the serial ports? As I remember from some previous discussions about
> speakup and serial port access, I think it was said that if speakup used
> the standard serial port driver then it should be possible to use serial
> ports not built on the motherboard. So would this also help in solving
> such a problem as found in gentoo? If so might it be time to say it must
> be done?

You are right, that is the problem here. Williamh and i talked a great
deal before he wrote that email. While i don't like this idea, i think
it's time that speakup be put into user space as daniel has said in the
bug. If you really must have the boot omessages you can get them from
dmesg, or at worst, use the kernel config option to get your kernel to
dump panics in swap space, stick the machine on a livecd and get the
panics that way. Unfortunately, i'm with daniel on this one i really
think it's  time to put speakup into user space.
>
> Unfortunately I currently cannot help with this as I am a python
> programmer so would need to learn C before I could do anything, probably
> something I should do as so much opensource software is written in C.
>
> From
> Michael Whapples
> On Sun, 2007-06-17 at 15:00 -0500, William Hubbs wrote:
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA1
> >
> > All,
> >
> > because of this bug [1], gentoo linux will be dropping support for speakup in its official kernels starting at 2.6.22.
> >
> > [1] http://bugs.gentoo.org/show_bug.cgi?id=177794
> >
> > Is there any possibility at all that speakup could be moved into user space as the bug suggests?  I feel that if we can go into user space this will b a better approach.
> >
> > Thanks,
> >
> > - --
> > William Hubbs
> > gentoo accessibility team lead
> > williamh@gentoo.org
> > -----BEGIN PGP SIGNATURE-----
> > Version: GnuPG v1.4.7 (GNU/Linux)
> >
> > iD8DBQFGdZLWblQW9DDEZTgRAsCOAJoD/roDmHTKu7ji8qTXZ2eoX47T1ACeIivJ
> > j/qhb9Z6KNpfitEvr7Onrug=
> > =mpb2
> > -----END PGP SIGNATURE-----
> >
> >
> >
>
>
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>

- -- 
Deedra Waters - Gentoo accessibility and amd64 -
dmwaters@gentoo.org
Gentoo linux: http://www.gentoo.org

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQFGddVyU5AGPOTGNc8RAviEAJ9iETquiB3Si3ZqpOYheC4bO+xDcwCgrp7l
ZTDkY7qgDJ79AJcw1y9qiq0=
=yvTG
-----END PGP SIGNATURE-----

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

    

a2/2:eJBca isBc 