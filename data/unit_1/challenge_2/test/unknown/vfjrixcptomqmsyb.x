From speakup-bounces@braille.uwo.ca  Tue Jun 26 11:26:45 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QFQjL9012704
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 11:26:45 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I3Cw9-0000r0-00; Tue, 26 Jun 2007 11:26:37 -0400
Received: from ip15.shellworld.net
	([64.49.204.174] helo=server2.shellworld.net ident=root)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I3Cw8-0000qo-00
	for <speakup@braille.uwo.ca>; Tue, 26 Jun 2007 11:26:36 -0400
Received: from Michelle (static-63-131-41-157.day.onecommunications.net
	[63.131.41.157])
	by server2.shellworld.net (8.13.1/8.12.8) with SMTP id l5QFQXW9087665
	for <speakup@braille.uwo.ca>; Tue, 26 Jun 2007 15:26:34 GMT
	(envelope-from ace@talkingirc.net)
Message-ID: <24F0D6478C1A4D6C856E5DAF029DFC76@Michelle>
From: "ace" <ace@talkingirc.net>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <BAY141-DAV1334301F98FE27C9BDD9588F0B0@phx.gbl>
In-Reply-To: <BAY141-DAV1334301F98FE27C9BDD9588F0B0@phx.gbl>
Subject: Re: Patch hunk rejection?
Date: Tue, 26 Jun 2007 11:26:35 -0400
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Windows Mail 6.0.6000.16386
X-MIMEOLE: Produced By Microsoft MimeOLE V6.0.6000.16386
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

You really ought to just get the latest 2.6.21.x  kernel and build it from 
scratch that way.  It may take some tweeking but you'll thank yourself in 
the end.  Good experience.
If you plan on updating your kernel frequently, get the linux-2.6.21.tar.bz2 
file along with the latest patch for that kernel, like linux-2.6.21.5.patch 
and apply it.  Then, when a new patchlevel comes out, get that new patch, 
linux-2.6.21.6.patch, unapply the patchlevel 5 patch and apply 6.

----- Original Message ----- 
From: "Zachary Kline" <Z_kline@hotmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Tuesday, June 26, 2007 2:37 AM
Subject: Patch hunk rejection?


> Hiya,
>    Spie, when I tried to apply Speakup patches to the kernel 2.6.17 I 
> downloaded from Slackware, I got a couple of messages about hunk 
> rejections.  They occured in keyboard.c and vt.c.  I was wondering if 
> these were well-understood problems with the patch, or are just a sign 
> that I do indeed need to use 2.6.21.5 or something like that without 
> relying on a Slackware package?
> Thanks,
> Zack.
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>
>
> __________ NOD32 2355 (20070626) Information __________
>
> This message was checked by NOD32 antivirus system.
> http://www.eset.com
>
> 


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

              

Wf<loFc