From speakup-bounces@braille.uwo.ca  Fri Jun 22 19:11:28 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5MNBNLJ010641
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 19:11:27 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1pXT-0005lW-00; Fri, 22 Jun 2007 16:15:27 -0400
Received: from vms048pub.verizon.net ([206.46.252.48])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1pXR-0005lN-00
	for <speakup@braille.uwo.ca>; Fri, 22 Jun 2007 16:15:25 -0400
Received: from [192.168.1.102] ([151.197.119.170])
	by vms048.mailsrvcs.net (Sun Java System Messaging Server 6.2-6.01
	(built Apr
	3 2006)) with ESMTPA id <0JK200HI908Z0SC6@vms048.mailsrvcs.net> for
	speakup@braille.uwo.ca; Fri, 22 Jun 2007 15:15:00 -0500 (CDT)
Date: Fri, 22 Jun 2007 16:14:51 -0400
From: Cody Hurst <churst35@verizon.net>
Subject: Re: dectalk or double talk advice
In-reply-to: <20070622194733.GA30841@localhost.localdomain>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Message-id: <1182543291.7974.8.camel@ubuntu1>
MIME-version: 1.0
X-Mailer: Evolution 2.10.1
References: <1182496319.12506.12.camel@ubuntu1>
	<000b01c7b49e$31cd2970$6c01a8c0@tdsportable>
	<20070622194733.GA30841@localhost.localdomain>
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

Hi Greg,

  Thanks for filling me in on Slackware. I will first look into the
double talk lt. I kind of figured serial would have to be my obvious
choice, however I jsut wanted to make sure. These systems are older (not
ancient) but bottom linie they more than likely have a few serials on
them.

  As far as the software part goes, are there any other alternatives to
speakup, so at least I can have a taste of a few if I should ever need
another one. It is just kind of up to me to I guess you could say "fend
for myself" on this course since the school really doesn't know what is
best for me and never has had a visually impaired person in their
networking course. I wish things woud work out of the box but we know
about that.

Thanks,
Cody

On Fri, 2007-06-22 at 12:47 -0700, Gregory Nowak wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> First, the operating systems mentioned were suse linux, and
> netware. There was no mention of windows, thus I don't see how the
> reference to jaws fits in, unless it was to explain how jaws gets its
> data, which is besides the point.
> 
> Also, the reference to usb being the better choice was
> inappropriate, since speakup currently doesn't support usb synths, as has
> been mentioned here frequently, especially in recent threads. Having
> said that, if you're going to rely on speakup, you will want to be
> sure that all the work stations you're going to use have at least 1
> rs232 serial port. If they don't, then you're in trouble if you
> expect to use speakup.
> 
> Also, be aware that suse doesn't include speakup in their
> distribution, and I'm not aware of any existing suse kernels with
> speakup patched into them. You mentioned also not being sure about the
> accessibility of slackware. Actually, slackware was the first
> distribution to include a speakup-patched kernel in the official
> slackware media.
> 
> As for which synth to choose, I think the 2 biggest factors in that
> decision are the speech, and the price of each. The doubletalk lt is
> cheaper than the dectalk usb, which does also have a serial port as
> far as I know. As for the speech, I personally prefer that of the
> doubletalk, but that's probably because I've used a doubletalk far
> more than I have used a dectalk, and others may disagree here as
> well. Speech is a very qualitative subject, and there is no synth that
> fits every person's taste perfectly. As an aside, you wouldn't have
> been able to use a doubletalk pc anyway, because they aren't being produced
> anymore, and because it is very hard these days to find a pc with an
> isa slot. Hth.
> 
> Greg
> 
> 
> 
> On Fri, Jun 22, 2007 at 12:23:06AM -0700, Littlefield, tyler wrote:
> > First, you're not going to get speech support without a program.
> > The screen reader puts hooks in the kernel, or catches the video in the case 
> > of jaws, and translates.
> > Next, I'd recommend USB, because, if you start using newer systems, most 
> > don't have a serial port.
> > Third, the accessibility of slackware is fine, unless you insist on running 
> > under gnome, x, or something else, then you're really not getting the 
> > benafit of linux.
> > HTH,
> 
> 
> - -- 
> web site: http://www.romuald.net.eu.org
> gpg public key: http://www.romuald.net.eu.org/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> 
> - --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.6 (GNU/Linux)
> 
> iD8DBQFGfCdV7s9z/XlyUyARAhQoAKC2pAxtaBHQFbcRxJ7X3YAKxDtHqwCg1nOM
> uSZ2tei1eRwXa/lpYrCpqgg=
> =UAdR
> -----END PGP SIGNATURE-----
> 
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

          

f."8qDc>M