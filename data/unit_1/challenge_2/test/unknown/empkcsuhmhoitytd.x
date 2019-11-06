From speakup-bounces@braille.uwo.ca  Sun Jun 17 21:10:34 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5I1AXL9012236
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 21:10:33 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I05lH-0008UZ-00; Sun, 17 Jun 2007 21:10:31 -0400
Received: from director.trueband.net ([216.163.120.8] helo=trueband.net)
	by speech.braille.uwo.ca with smtp (Exim 3.36 #1 (Debian))
	id 1I05lE-0008UQ-00
	for <speakup@braille.uwo.ca>; Sun, 17 Jun 2007 21:10:29 -0400
Received: (qmail 14355 invoked by uid 1006); 18 Jun 2007 01:10:27 -0000
Received: from sberry@northlc.com by rs0 by uid 1003 with qmail-scanner-1.16 
	(spamassassin: 3.1.4.  Clear:SA:0(0.1/100.0):. 
	Processed in 1.707381 secs); 18 Jun 2007 01:10:27 -0000
X-Spam-Status: No, hits=0.1 required=100.0
X-Spam-Level: 
Received: from unknown (HELO trueband.net) (172.16.0.9)
	by -v with SMTP; 18 Jun 2007 01:10:26 -0000
Received: (qmail 8113 invoked from network); 18 Jun 2007 01:10:23 -0000
Received: from unknown (HELO yellobow) (75.104.23.3)
	by -v with SMTP; 18 Jun 2007 01:10:23 -0000
From: "Scott Berry" <sberry@northlc.com>
To: "'Speakup is a screen review system for Linux.'" <speakup@braille.uwo.ca>
References: <007901c7b065$01102810$9501a8c0@yellobow><002d01c7b076$5a9ff390$ab00a8c0@tenstac><20070617012623.GA24480@localhost.localdomain>
	<001501c7b08a$1f274070$ab00a8c0@tenstac>
Subject: RE: moving from amd to p3?
Date: Sun, 17 Jun 2007 20:10:10 -0500
Message-ID: <006001c7b145$70941080$9501a8c0@yellobow>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
In-Reply-To: <001501c7b08a$1f274070$ab00a8c0@tenstac>
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
Thread-index: Acewgaw4BiFB5XweSqG4KR59RLM7PAAw3RYg
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

Spie,

What is the best way to go through the config?  Do you just do like a lspci
and also check for isa stuff too which I don't remember how to do.  Should
that give you a pretty good idea of what the kernel needs and does not need?
Also how do you know what really needs configured.

Scott

-----Original Message-----
From: speakup-bounces@braille.uwo.ca [mailto:speakup-bounces@braille.uwo.ca]
On Behalf Of Spie Sutherland
Sent: Saturday, June 16, 2007 9:49 PM
To: Speakup is a screen review system for Linux.
Subject: Re: moving from amd to p3?



> Actually, as far as I know, and this is what I've always done, you're
> supposed to untar the kernel, patch with speakup, run make mrproper
> clean, then copy a .config file into place if any. Also, if you're just
> building a freshly untared kernel from kernel.org without speakup, or
> any other patches, you don't need to do make mrproper, I never did
> that in those cases.

If you read the kernel FAQ it states that even if a fresh kernel from 
source you should do mrproper because there is a chance that some 
old stuff gets left behind when they package it. Better safe than sorry, 
always do mrproper before building a kernel. It can't hurt anything 
and does make sure there are no old deps or object modules around. 
mrproper is a superset of clean so if you do that you don't need to 
also do clean.

Also, it doesn't seem right to copy an existing  .config after doing the 
speakup patch. The speakup patch adds new items into .config after 
speakup is selected in menuconfig, the CONFIG_SPEAKUP and 
other related entries. If you copied in a .config from a kernel without 
speakup then it won't have the speakup stuff in .config. If you copy 
some existing .config then it may not match the kernel that you are
compiling from source. If it's the same kernel version that you used 
before it will work, but if you now have a newer kernel it may or 
may not work, and you might be missing some new stuff that's in the 
newer kernel version. 

It is a pain to go through the config, but worthwhile to understand 
what you need and don't for your hardware. There is so much in 
the kernel that is not needed on most systems. If you set all those
to not be included, then you have a whole lot less to compile.

  -- Spie






_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup



-- 
No virus found in this incoming message.
Checked by AVG Free Edition. 
Version: 7.5.472 / Virus Database: 269.8.17/850 - Release Date: 6/15/2007
11:31 AM



_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

 

5odYsa;o�BFagL