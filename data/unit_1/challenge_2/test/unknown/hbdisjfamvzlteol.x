From speakup-bounces@braille.uwo.ca  Tue Jun  5 19:51:57 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55NpuhB015198
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 19:51:57 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvioY-0006qs-00; Tue, 05 Jun 2007 19:51:50 -0400
Received: from mtai02.charter.net ([209.225.8.182])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvioW-0006qY-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 19:51:48 -0400
Received: from aa03.charter.net ([10.20.200.155]) by mtai02.charter.net
	(InterMail vM.7.08.02.00 201-2186-121-20061213) with ESMTP
	id <20070605235118.ISWU1551.mtai02.charter.net@aa03.charter.net>
	for <speakup@braille.uwo.ca>; Tue, 5 Jun 2007 19:51:18 -0400
Received: from h14me.homelinux.net ([24.151.115.123]) by aa03.charter.net
	with ESMTP
	id <20070605235118.GGQF24649.aa03.charter.net@h14me.homelinux.net>
	for <speakup@braille.uwo.ca>; Tue, 5 Jun 2007 19:51:18 -0400
Received: from h14me.homelinux.net (localhost [127.0.0.1])
	by h14me.homelinux.net (8.13.4/8.12.11) with ESMTP id l55NpHI4026491
	for <speakup@braille.uwo.ca>; Tue, 5 Jun 2007 19:51:17 -0400
Received: (from alex_snow@localhost)
	by h14me.homelinux.net (8.13.4/8.12.10/Submit) id l55NpHQI026490
	for speakup@braille.uwo.ca; Tue, 5 Jun 2007 19:51:17 -0400
Date: Tue, 5 Jun 2007 19:51:17 -0400
From: Alex Snow <alex_snow@gmx.net>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: emu10k1 compilation problms.
Message-ID: <20070605235117.GE26352@gmx.net>
References: <000a01c7a726$a5a46a00$6401a8c0@GRANDMA>
	<BAY141-DAV1ADDF4A9D21DD9888F9558F200@phx.gbl>
	<000c01c7a728$ed521b20$6401a8c0@GRANDMA>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000c01c7a728$ed521b20$6401a8c0@GRANDMA>
User-Agent: Mutt/1.4.2.1i
X-Virus-Scanned: ClamAV version 0.88,
	clamav-milter version 0.87 on h14me.homelinux.net
X-Virus-Status: Clean
X-Chzlrs: 0
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

modprobe snd-emu10k1
On Mon, Jun 04, 2007 at 10:21:02PM -0600, 
Littlefield, Tyler wrote:
> I don't see it in my modules dir, and I got the kernel image from apt,
> hoping once I got time, to patch speakup in, and go.
> Anyway, I can't modprobe emu10k1, it tells me that the file can't be found.
> 
> Thanks,
> ~~TheCreator~~
> [My programs don't have bugs; just randomly added features]
> msn:
> compgeek13@gmail.com
> aim: st8amnd2005
> skype: st8amnd127
> vertigo head coder
> web: tysdomain.com
> ----- Original Message ----- 
> From: "Zachary Kline" <Z_kline@hotmail.com>
> To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
> Sent: Monday, June 04, 2007 10:09 PM
> Subject: Re: emu10k1 compilation problms.
> 
> 
> > Hello,
> >     The kernel sources themselves contain the Emu10K driver, do they not?
> > At least that's been my experience whenever I've needed a sound card
> > configured.
> > Thanks,
> > Zack.
> >
> > ----- Original Message ----- 
> > From: "Littlefield, Tyler" <compgeek13@gmail.com>
> > To: "Speakup is a screen review system for Linux."
> <speakup@braille.uwo.ca>
> > Sent: Monday, June 04, 2007 9:04 PM
> > Subject: emu10k1 compilation problms.
> >
> >
> > > Hello list,
> > > Well, I wanted to accomplish something and be able to say I didn't need
> > > help.
> > > Unfortunately, that plan was shattered.
> > > I found the emu10k1 driver on sourceforge, coppied in my .config and set
> > > the kernel source path.
> > > When I type make, here's the problem I get.
> > > Anyone able to suggest a fix?
> > > make[1]: Entering directory `/usr/src/emu10k1-v0.20a/scripts'
> > > cc -I/usr/src/linux/include get_version.c -o get_version
> > > get_version.c: In function 'main':
> > > get_version.c:5: error: 'UTS_RELEASE' undeclared (first use in this
> > > function)
> > > get_version.c:5: error: (Each undeclared identifier is reported only
> once
> > > get_version.c:5: error: for each function it appears in.)
> > > make[1]: *** [get_version] Error 1
> > > make[1]: Leaving directory `/usr/src/emu10k1-v0.20a/scripts'
> > > make: *** [opts] Error 2
> > > Any help is appriciated,
> > > Thanks,
> > > ~~TheCreator~~
> > > [My programs don't have bugs; just randomly added features]
> > > msn:
> > > compgeek13@gmail.com
> > > aim: st8amnd2005
> > > skype: st8amnd127
> > > vertigo head coder
> > > web: tysdomain.com
> > > _______________________________________________
> > > Speakup mailing list
> > > Speakup@braille.uwo.ca
> > > http://speech.braille.uwo.ca/mailman/listinfo/speakup
> > >
> >
> >
> > _______________________________________________
> > Speakup mailing list
> > Speakup@braille.uwo.ca
> > http://speech.braille.uwo.ca/mailman/listinfo/speakup
> 
> 
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup

-- 
We apologize for the inconvenience, but we'd still like yout to test out
this kernel. 
	-- Linus Torvalds, announcing another kernel patch

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

      

f Z>