From speakup-bounces@braille.uwo.ca  Sun Jun 17 19:12:37 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5HNCbL9011444
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 19:12:37 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I03v7-0006Ui-00; Sun, 17 Jun 2007 19:12:33 -0400
Received: from imo-m19.mx.aol.com ([64.12.137.11])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I03v6-0006Sr-00
	for <speakup@braille.uwo.ca>; Sun, 17 Jun 2007 19:12:32 -0400
Received: from mwhapples@aim.com
	by imo-m19.mx.aol.com (mail_out_v38_r9.2.) id f.cf3.1131d09f (57870)
	for <speakup@braille.uwo.ca>; Sun, 17 Jun 2007 19:11:57 -0400 (EDT)
Received: from [10.3.107.110] (snsjanet.sns.nottingham.ac.uk
	[128.243.253.217]) by air-ia01.mail.aol.com (v117.7) with ESMTP
	id MAILINIA14-e20e4675bfb0cb; Sun, 17 Jun 2007 19:11:57 -0400
Subject: Re: gentoo dropping speakup support
From: Michael Whapples <mwhapples@aim.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
In-Reply-To: <20070617200022.GA16786@linux1>
References: <20070617200022.GA16786@linux1>
Date: Sun, 17 Jun 2007 23:22:19 +0100
Message-Id: <1182118939.3634.15.camel@layla.Mshome>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 
X-AOL-IP: 128.243.253.217
X-Spam-Flag: NO
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

While it is a shame that you find this, thank you for saying what the
exact problem is. If speakup won't compile on x86-64 either now, I am
sure that soon someone will fix that as it probably affects quite a
number of users.

Other than the install of gentoo, I don't think the impact is as bad as
it is for other distros as gentoo users may tend to want to compile a
custom kernel anyway. The install probably isn't such a problem as I
think if you are doing an install from the internet then it doesn't
matter what version of gentoo the CD is as the installed system will be
the latest, so a user could use the last release with speakup to install
with speakup (unless they are doing an install without internet access,
for which there may not be a solution).

On a different note, while I don't know enough about the kernel to be
certain, but is this problem to do with speakup and the way it accesses
the serial ports? As I remember from some previous discussions about
speakup and serial port access, I think it was said that if speakup used
the standard serial port driver then it should be possible to use serial
ports not built on the motherboard. So would this also help in solving
such a problem as found in gentoo? If so might it be time to say it must
be done?

Unfortunately I currently cannot help with this as I am a python
programmer so would need to learn C before I could do anything, probably
something I should do as so much opensource software is written in C.

From
Michael Whapples
On Sun, 2007-06-17 at 15:00 -0500, William Hubbs wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> All,
> 
> because of this bug [1], gentoo linux will be dropping support for speakup in its official kernels starting at 2.6.22.
> 
> [1] http://bugs.gentoo.org/show_bug.cgi?id=177794
> 
> Is there any possibility at all that speakup could be moved into user space as the bug suggests?  I feel that if we can go into user space this will b a better approach.
> 
> Thanks,
> 
> - -- 
> William Hubbs
> gentoo accessibility team lead
> williamh@gentoo.org
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.7 (GNU/Linux)
> 
> iD8DBQFGdZLWblQW9DDEZTgRAsCOAJoD/roDmHTKu7ji8qTXZ2eoX47T1ACeIivJ
> j/qhb9Z6KNpfitEvr7Onrug=
> =mpb2
> -----END PGP SIGNATURE-----
> 
> 
> 


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

       

Eotc 