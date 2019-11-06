From speakup-bounces@braille.uwo.ca  Fri Jun 22 22:17:12 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5N2HBL9012771
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 22:17:12 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1vBR-0003Ou-00; Fri, 22 Jun 2007 22:17:05 -0400
Received: from beaver.sibername.com ([64.15.155.210])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1vBP-0003Oe-00
	for <speakup@braille.uwo.ca>; Fri, 22 Jun 2007 22:17:03 -0400
Received: from [24.226.66.233] (helo=tenstac)
	by beaver.sibername.com with smtp (Exim 4.66)
	(envelope-from <spie@proficio.ca>) id 1I1vAt-0007u9-9Z
	for speakup@braille.uwo.ca; Fri, 22 Jun 2007 22:16:31 -0400
Message-ID: <007a01c7b545$1a323f60$ab00a8c0@tenstac>
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <467C7987.8040405@clearwire.net>
Subject: Re: Jeez, what hassle.
Date: Fri, 22 Jun 2007 22:17:59 -0500
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2800.1807
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - beaver.sibername.com
X-AntiAbuse: Original Domain - braille.uwo.ca
X-AntiAbuse: Originator/Caller UID/GID - [0 0] / [47 12]
X-AntiAbuse: Sender Address Domain - proficio.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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

Michael,

> Well, I get half-way through the Slackware install and then try to 
> install to the root partition and that's as far as I can go. <sighs>

Are you talking about installing lilo, where it gives you the option
of installing it to either the master boot record (MBR) or the 
superblock of the root partition?

I always use the MBR not the superblock, but if you are 
talking about lilo install failing, you actually have not lost your
whole install, just the bootloader install. Sometimes the lilo 
install will fail, and if so you keep going to the end of the 
slackware install, then you can do what I've been saying 
about booting any drive that won't boot:

Boot from floppy or CD-ROM with the generic kernel,
I think even a disk with the speakup kernel will work, 
but you need to do this at the boot prompt:

boot: 
bare.i root=/dev/hda1 noinitrd ro

That would be using the slackware bare.i kernel, 
but I think you could do the same with speakup 
kernel like this:

boot:
speakup.s speakup_synth=ltlk root=/dev/hda1 noinitrd ro

You're loading the kernel from removable media but 
booting to the root filesystem on hard drive. Even if 
lilo failed to install, once you have booted the new system
this way, check the lilo.conf to make sure it look correct
then just run lilo to install the bootloader

lilo -v

>  Is there a way to install slackware that bypasses all the 
> stupid menus? 

No because it launches all of the various scripts that 
create all the directories and unpack all the tar files,
create config files etc.


> The docs say just to type in the kernal's name: speakup.s

speakup.s

This is like the bare.i (standard IDE) disk, but has support for Speakup 
(and since there was space, support for Adaptec's AIC7xxx SCSI 
controllers is also included) Speakup provides access to Linux for the 
visually impaired community. It does this by sending console output to 
a number of different hardware speech synthesizers. It provides access 
to Linux by making screen review functions available. For more 
information about speakup and its drivers check out: 
http://www.linux-speakup.org. To use this, you'll need to specify one 
of the supported synthesizers on the bootdisk's boot prompt:

ramdisk speakup_synth=synth

where 'synth' is one of the supported speech synthesizers: acntpc, 
acntsa, apolo, audptr, bns, decext, dectlk, dtlk, ltlk, spkout, txprt

This is from here:
http://www.slackware.com/install/bootdisk.php

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

        

2i,<t :Mi90/et-