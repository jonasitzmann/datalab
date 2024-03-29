From speakup-bounces@braille.uwo.ca  Wed Jun  6 20:02:12 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5702ChB027708
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 20:02:12 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hw5S1-0004EN-00; Wed, 06 Jun 2007 20:02:05 -0400
Received: from beaver.sibername.com ([64.15.155.210])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hw5Ry-0004Dh-00
	for <speakup@braille.uwo.ca>; Wed, 06 Jun 2007 20:02:02 -0400
Received: from [24.226.71.27] (helo=tenstac)
	by beaver.sibername.com with smtp (Exim 4.66)
	(envelope-from <spie@proficio.ca>) id 1Hw5RR-0006WE-LZ
	for speakup@braille.uwo.ca; Wed, 06 Jun 2007 20:01:29 -0400
Message-ID: <012f01c7a89f$b0adb8f0$ab00a8c0@tenstac>
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <20070605030234.GB32366@ourhouse.brannan.name><001501c7a71e$1ba45340$0901a8c0@HANDS><20070605031014.GA32497@ourhouse.brannan.name><472CC8C1-1F61-4B21-9F9A-352C11B9E46D@softcon.com><20070605234921.GC26352@gmx.net>
	<20070606195406.GB14562@grml>
Subject: Re: Definitely unslung
Date: Wed, 6 Jun 2007 20:03:41 -0500
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

There is nothing wrong with Intel. The discussion was comparing
x86 compatible with ARM, two different animals that serve two
different purposes. The x86 architecture is CISC and has more 
instructions and generally many more transistors and higher clock
speed, more RAM, more peripherals, and requires a lot of power
relative to ARM which uses RISC, less instructions, simpler bus
architectures, lower clock speed, usually much less transitors
and therefor much lower power and less heat generated.

The x86 architecture is actually preferrable if you can deal with
the power and heat requirements, especially for the application
compatibility reasons. Linux on ARM works great but you can't
expect drivers, and therefore many applications to just work.
At minimal they need to be compiled, and in many cases they 
will not work without re-writing drivers. There is no ISA or PCI
bus on ARM, you have ABI or EABI or some proprietary bus
depending on manufacturer. Most phones use ARM processor
in fact ARM owns that whole space. ARM is desireable for 
small portable devices, but in the sub-notebook category it 
still makes sense to use x86.

I am working with ARM specifically for the low power and 
low heat benefits, but as I said it's a completely different class
of applications. Even if you're not dealing with graphics like
x-windows, there is little source compatibility, except where
no hardware specific drivers are involved. There is no such
thing as BIOS on ARM, most systems boot from a kernel
loaded onto flash with embedded file system and scaled 
down versions of standard tools for example busybox. 
There is lots to learn and more work to do when developing
software, setting up a cross platform development toolchain,
often JTAG is required to flash the kernel, you're generally 
much more concerned about memory limitations and other
implications of using a smaller scale architecture.      

Also, Intel is a brand name, they made StrongARM which
evolved to X-Scale, also RISC and uses the original ARM 
as core with Intel specific extensions. So using the name 
Intel is only a brand, the discussion was x86 versus ARM,
in general x86 is preferrable for anything larger than PDA,
ARM for PDA and smaller. 

  -- Spie

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

        

e aAkMl Rs
0K�No