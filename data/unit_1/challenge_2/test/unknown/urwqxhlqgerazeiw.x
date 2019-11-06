From speakup-bounces@braille.uwo.ca  Thu Jun 21 22:14:42 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5M2EfL9032471
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 22:14:42 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1YfX-0006K0-00; Thu, 21 Jun 2007 22:14:39 -0400
Received: from beaver.sibername.com ([64.15.155.210])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1YfV-0006Jo-00
	for <speakup@braille.uwo.ca>; Thu, 21 Jun 2007 22:14:37 -0400
Received: from [24.226.66.196] (helo=tenstac)
	by beaver.sibername.com with smtp (Exim 4.66)
	(envelope-from <spie@proficio.ca>) id 1I1Yez-0004nY-Gv
	for speakup@braille.uwo.ca; Thu, 21 Jun 2007 22:14:05 -0400
Message-ID: <002701c7b47b$96feb340$ab00a8c0@tenstac>
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <002401c7b45b$3069eb60$6401a8c0@GRANDMA>
	<1182468805.17350.31.camel@ubuntu1>
Subject: Re: help with hd problem.
Date: Thu, 21 Jun 2007 22:15:30 -0500
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

Cody Hurst wrote:
you cannot mix hd installs with other machines because when you install
linux, it is compiled and molded to that particular system and no other
systems I have the same issue when I do it. Do a clean install on the
machine you want to run it on.

Say what? This is not true, I have done it dozens of times. I have in 
fact set up machines as build machines for others. The only thing that
is "molded" is the kernel. As said in recent thread, what you need is 
a generic kernel, not pentium or amd specific. To be more clear, in 
the kernel config, you want 386 processor:

Subarchitecture Type
PC-compatible  (CONFIG_X86_PC)

Processor family 
386  (CONFIG_M386) 

A 386 kernel will boot on anything. You also want generic chipset
stuff, not anything specific to the original hardware. The easiest way
to achieve this is to get one of the already made generic kernels, 
the ones that boot when you run an install. On slackware that is 
called bare.i, it will boot on anything! Equivalents are available on 
other distros. And repeating what I said before: if a kernel will 
not boot on any system, boot with floppy or cd, load the kernel
from that media but use the root= parameter to boot into the 
root on the hard drive. This has never failed for me unless the
drive is toast. You need to catch the boot: prompt and do 
something like 

boot: bare.i root=/dev/hda1 noinitrd ro 

where bare.i is the name of your generic kernel. You should
be able to find a generic kernel for debian. Once you have 
booted from the CD or floppy, with the root= to your hard
drive, you have a running system, build a kernel on the target
and then update bootloader. It is definitely possible to move 
drives from one machine to another. 

  -- Spie



_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

              

Fvu
,