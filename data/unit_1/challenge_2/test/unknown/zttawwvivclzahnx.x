From speakup-bounces@braille.uwo.ca  Sat Jun 16 21:08:26 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5H18PL9021270
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 21:08:26 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HzjFZ-0004qU-00; Sat, 16 Jun 2007 21:08:17 -0400
Received: from nsfone.fone.net ([206.168.68.96])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HzjFY-0004lB-00
	for <speakup@braille.uwo.ca>; Sat, 16 Jun 2007 21:08:16 -0400
Received: from mail2.fone.net (mail2.fone.net [206.168.68.165])
	by nsfone.fone.net (8.13.8+Sun/8.13.7) with ESMTP id l5H17O0P009770
	for <speakup@braille.uwo.ca>; Sat, 16 Jun 2007 19:07:25 -0600 (MDT)
Received: from GRANDMA (ip-206-123-194-16.static.fasttrackcomm.net
	[206.123.194.16])
	by mail2.fone.net (8.13.6+Sun/8.12.10) with SMTP id l5H17llY018219
	for <speakup@braille.uwo.ca>; Sat, 16 Jun 2007 19:07:48 -0600 (MDT)
Message-ID: <001801c7b07b$e8b2b3c0$6401a8c0@GRANDMA>
From: "Littlefield, Tyler" <compgeek13@gmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <Pine.BSF.4.64.0706161719420.14120@freire2.furyyjbeyq.arg><000b01c7b068$f52e0630$ab00a8c0@tenstac><001201c7b071$3f80ff00$6401a8c0@GRANDMA>
	<004501c7b07b$46d700b0$ab00a8c0@tenstac>
Subject: Re: switching from amd to p3
Date: Sat, 16 Jun 2007 19:07:36 -0600
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2800.1158
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1165
X-Antivirus: avast! (VPS 000749-2, 06/16/2007), Outbound message
X-Antivirus-Status: Clean
X-PMX-Version: 5.3.1.294258, Antispam-Engine: 2.5.1.298604,
	Antispam-Data: 2007.6.16.175133
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

The cables are ok. do I just move it around on the cable?
Thanks,
Thanks,
~~TheCreator~~
[My programs don't have bugs; just randomly added features]
msn:
compgeek13@gmail.com
aim: st8amnd2005
skype: st8amnd127
vertigo head coder
web: tysdomain.com
----- Original Message ----- 
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Saturday, June 16, 2007 7:03 PM
Subject: Re: switching from amd to p3


> If you're getting disk boot failure then probably something 
> is not right with the physical connection, the IDE cable or
> possibly the BIOS needs to be tweaked to recognize the
> hard drive. If there is more than one drive in the system 
> make sure the one you are moving in is on the first IDE 
> port so it's drive A, also make sure there are no conflicts
> if you have two drives in there ie make sure one is set as
> master by jumper and the other is set as slave. 
> 
> I think you can get disk boot error even if there is no disk
> at all, so start by checking the physical connections and 
> jumpering of drives.
> 
> The other thing that sometimes happens when moving 
> drives around is that what was drive a becomes drive 
> c for example, in that case you will get a kernel panic 
> with message stating no root file system found. If this 
> happens, then the other procedure I mentioned will 
> work, booting from cdrom or floppy, loading the 
> kernel from removable storage with the boot param
> root= pointing to the proper location of root file system
> (follow that with noinitrd ro) and then once booted you
> can rebuild the kernel and update the bootloader.
> 
> What you are doing is definitely possible, I have done
> it many times, building an entire system on on PC then
> then moving the drive to a mobile system.
> 
>   -- Spie
> 
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                   

ii�=Cz fM6ru0Zg