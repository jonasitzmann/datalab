From speakup-bounces@braille.uwo.ca  Thu Jun 21 17:18:45 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LLIiL9029423
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 17:18:44 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1U35-0001cL-00; Thu, 21 Jun 2007 17:18:39 -0400
Received: from wsip-24-249-27-228.ri.ri.cox.net ([24.249.27.228]
	helo=lava-net.com)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1U33-0001cC-00
	for <speakup@braille.uwo.ca>; Thu, 21 Jun 2007 17:18:37 -0400
Received: by lava-net.com (Postfix, from userid 1020)
	id 7AC4A63001C; Thu, 21 Jun 2007 17:18:20 -0400 (EDT)
Date: Thu, 21 Jun 2007 17:18:19 -0400
From: Igor Gueths <igueths@lava-net.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: A VmWare alternative
Message-ID: <20070621211819.GA16774@lava-net.com>
References: <BAY141-DAV169FC60F63CB5FDD9B9C918F100@phx.gbl>
	<20070621182051.GA17614@localhost.localdomain>
	<BAY141-DAV1046F4C2E825B885A8DC4A8F100@phx.gbl>
	<20070621204841.GA20922@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20070621204841.GA20922@localhost.localdomain>
User-Agent: Mutt/1.5.15 (2007-04-06)
X-Lava-net-MailScanner-Information: 
X-Lava-net-MailScanner: Found to be clean
X-Lava-net-MailScanner-From: igueths@lava-net.com
X-Spam-Status: No
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
Hash: SHA512

Hi Zachary. Have you tried booting anything virtually using Qemu under Linux? The last time I tried this by booting the test image I got no output, since Qemu was using SDL. I'm wondering if 
this is still the case if I were to say, try and boot an OpenBSD iso or something.
On Thu, Jun 21, 2007 at 01:48:41PM -0700, Gregory Nowak wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Thanks for that. I did forget to mention that I tried to have the
> cdrom as the second drive from an iso, but I didn't try booting from
> it. I actually wanted to see first how a windows/dos boot floppy would do,
> thus the floppy boot, but I might bite the bullet, and try booting a
> debian install iso directly. Also, my purpose in keeping wineyes
> running was to have access to the qemu monitor, though it sounds like
> you're saying that won't be accessible, which is too bad. 
> 
> I may try it again, though it probably won't be soon. Thanks also for
> your offer of answering additional questions, I may take you up on
> that if I need to when I try this again.
> 
> Greg
> 
> 
> On Thu, Jun 21, 2007 at 01:25:26PM -0700, Zachary Kline wrote:
> > Hiya,
> >     I'll be glad to show you how I run Qemu under Windows.  I warn you that 
> > Window-Eyes will be of no help whatsoever in reading the Qemu console 
> > window.  In fact, I suggest either creating a custom set file for it and 
> > using the Hotkeys option in the general menu to turn them off, or just 
> > unloading WE entirely.  That, of course, isn't very convenient.  If you turn 
> > off hotkeys in qemu alone you'll get response when alt+tab is pressed to get 
> > you out of that window.  Anyway, here's what I do:
> > To start with, I haven't installed Qemu into c:\program files.  I just did 
> > C:\qemu,, with the bios in the same place.  So to get that option I do -L ., 
> > which like under Unix stands for current directory.
> > A sample command line is:
> > qemu -serial com3 -boot d -net tap,ifname="tap" -net 
> > nic,model=rtl8139 -soundhw ens1370 -hda debian.img -cdrom debian.iso -L .
> > This is what I used to get Debian installed, with the Dectalk express 
> > connected to a USB-to-serial converter which acted as COM3 under Windows. 
> > It will work as ttyS0 under Linux, of course.
> > The boot d option is just to specify booting from the ISO image.  I 
> > personally haven't done much with floppy images or actual drives.
> > Once Qemu runs, you'll possibly get a Windows properties dialogue asking 
> > about whichever COM port you used.  Just hit enter to close it and you'll be 
> > in a Qemu console window.  Type the command to get speakup up and running, 
> > in the case of a Debian install it would be:
> > speakup speakup_synth=dectlk speakup_ser=0
> > From that point, assuming you unloaded WE or created a set file properly, 
> > things will just run as normal.  You can alt+tab out of the Qemu window at 
> > any time.
> > Hope this helps some.
> > Thanks,
> > Zack.
> > PS: If not, please feel free to ask me anything you'd like.
> > 
> > 
> > _______________________________________________
> > Speakup mailing list
> > Speakup@braille.uwo.ca
> > http://speech.braille.uwo.ca/mailman/listinfo/speakup
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
> iD8DBQFGeuQp7s9z/XlyUyARAh3DAJ9nyqurzSP5FEyZpmvagW1JN11bZwCfbcsF
> hUXeI0oUm/5xoGkrcoH2bNo=
> =qGLd
> -----END PGP SIGNATURE-----
> 
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
> 
> -- 
> This message has been scanned for viruses and
> dangerous content by MailScanner, and is
> believed to be clean.
> 

- -- 
Igor
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iQIVAwUBRnrrG6e2pgKIdGq4AQqxXBAApm51wg/KuTaAVVCaqwdBWeIhspFZqHaH
0YkbsqFGWheabwdDI4HhPmEqKzkALlMs1WRTN3fgncgriejlKM8KRGsR7/LVCAJ2
oP+624tvLr+KlrmaJ3VDu5/7HLQajGF1ZdxW85TvYnK6tdSiOge4qq48UrHhlCWe
wEx4bBqcKIYa7plp6XYeaLa+rSChTILMZA66uqT8z7p07cJ6mKL1FyCAipdVGm//
jRGTIC7pVsyfaxSMDmdH1O/G5lxKaKffFAnsakZUGF1xNHN0P0Xcy+0A0MxGbRE2
TC6EU0wEhqIuryve7Z+NicKGo/8kVmZWdNQ2QE+XF/i6kRAsAHN8Dsasx9ZUY8Xv
zh5gFRRxLDzeisly57foymmySBFhGbTqkt0vlLsshJILyVuIaG7NZe9/Q2pHW7+r
mxUZoxpz0k0WDfwIReJesx7qEDWDjUk7aXuKjLhTuvssFH5H62fXo4hzQxXqDVf6
ZgQvlUpZHT+jNeQcz3XFDl81wcxW3ccCOduu+C/hOjWgiiXuPfiF6VNcIpaO44EO
mJxoCQ4kEuCrVSwPjq0DTKWw04PMtyIUJpCOGoIfa1Gu4dZM0/wEEn7Gapbhpmsm
Rlccu7u6pSdZaHv5lTo97ROkZtC9QjaPmqJj3ESYDKFCnbM8k2MWb/f2bFci5ahB
NcUIDQ6rfGY=
=gPT0
-----END PGP SIGNATURE-----

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

          

�Ba&h

"s