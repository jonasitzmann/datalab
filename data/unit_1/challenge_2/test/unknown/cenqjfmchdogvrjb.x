From speakup-bounces@braille.uwo.ca  Wed Jun  6 15:25:03 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56JP2hB025382
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 15:25:02 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hw17k-0008IL-00; Wed, 06 Jun 2007 15:24:52 -0400
Received: from bay0-omc2-s2.bay0.hotmail.com ([65.54.246.138])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hw17g-0008Hv-00
	for <speakup@braille.uwo.ca>; Wed, 06 Jun 2007 15:24:49 -0400
Received: from hotmail.com ([65.55.152.27]) by bay0-omc2-s2.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Wed, 6 Jun 2007 12:24:17 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Wed, 6 Jun 2007 12:24:17 -0700
Message-ID: <BAY141-DAV17E017E754F6A268A69F088F270@phx.gbl>
Received: from 71.111.96.206 by BAY141-DAV17.phx.gbl with DAV;
	Wed, 06 Jun 2007 19:24:13 +0000
X-Originating-IP: [71.111.96.206]
X-Originating-Email: [z_kline@hotmail.com]
X-Sender: z_kline@hotmail.com
From: "Zachary Kline" <Z_kline@hotmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <BAY141-DAV35DF1AC4D786EA12DF47A8F270@phx.gbl><20070606184739.GA407@localhost.localdomain><BAY141-DAV602C905B6AF9772267E948F270@phx.gbl>
	<20070606191038.GA570@localhost.localdomain>
Subject: Re: Upgrading Debian to Testing with speakup
Date: Wed, 6 Jun 2007 12:23:23 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-OriginalArrivalTime: 06 Jun 2007 19:24:17.0705 (UTC)
	FILETIME=[4690D990:01C7A870]
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

Hiya,
    Are their any Debian-specific patches I need to apply to the kernel?  I 
seem to remember that their was a package named 'debian-patches', or the 
like.  Just want to be sure to cover all the bases, though this description 
seems to be enough for me to follow.  I'd also need to add speakup patches, 
of course...
Thanks,
Zack.

----- Original Message ----- 
From: "Gregory Nowak" <greg@romuald.net.eu.org>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Wednesday, June 06, 2007 12:10 PM
Subject: Re: Upgrading Debian to Testing with speakup


> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> You don't need an initrd if you don't want to use one, I
> don't. However, if you go without an initrd, make sure that things
> like your ide/sata chipset, and hd support and the root file system
> you use are built into the kernel itself, else you won't be able to
> boot. Then, install kernel-package, untar the kernel sources, run make
> oldconfig/config/menuconfig, and then run
>
> make-kpkg kernel_image.
>
> If you were building in /usr/src/linux for example, then the resulting
> deb will be in /usr/src. Then, install it with dpkg -i package.deb,
> where package.deb is the file kernel-package created. Then you'll need
> to add the new image to your boot loader, this may or may not be done
> for you when you install the package. I'd strongly suggest keeping
> your current kernel in the boot loader as well, so that you can boot
> back with it if your new kernel panics and doesn't boot. Then reboot.
>
> If the new kernel works like you'd expect, then you can remove your
> old kernel from your system, and from the boot loader of course as
> well.
>
> This is a very brief description, there are howtos and docs on the web
> that cover this in much more detail.
>
> Greg
>
>
>
> On Wed, Jun 06, 2007 at 11:58:04AM -0700, Zachary Kline wrote:
>> Hiya,
>>     In that case, I can probably roll my own kernel as well.  I believe 
>> I'd
>> need kernel-package to make that a bit easier.  Also, I'm a bit unsure 
>> about
>> things like initial ram disks--I never needed an initrd with Gentoo. 
>> Might
>> you be able to provide some instructions on what exactly I'd need to do 
>> to
>> get a kernel that will boot?  I've never had to deal with the vagueries 
>> of
>> kernel-package and all that before.
>> Thanks much,
>> Zack.
>>
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
> iD8DBQFGZwau7s9z/XlyUyARAgawAJ4lX7DZh64jkQM0MCzfuEF97QPgngCg2lCH
> 8AkB4bC/OEWTOPdvcrPSAW4=
> =wuuE
> -----END PGP SIGNATURE-----
>
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
> 


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

       

 ;Sr.-arcl