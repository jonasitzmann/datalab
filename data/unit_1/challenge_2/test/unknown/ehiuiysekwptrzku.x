From speakup-bounces@braille.uwo.ca  Tue Jun  5 00:36:28 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l554aShB003918
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 00:36:28 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvQmM-0003Do-00; Tue, 05 Jun 2007 00:36:22 -0400
Received: from ip-206-123-194-16.static.fasttrackcomm.net ([206.123.194.16]
	helo=tysdomain.com)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvQmK-0003Df-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 00:36:20 -0400
Received: from [192.168.1.100] (helo=GRANDMA)
	by tysdomain.com with smtp (Exim 3.36 #1 (Debian))
	id 1HvLBR-0001XB-00
	for <speakup@braille.uwo.ca>; Mon, 04 Jun 2007 16:37:54 -0600
Message-ID: <005501c7a72b$1359c0f0$6401a8c0@GRANDMA>
From: "Littlefield, Tyler" <compgeek13@gmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <000a01c7a726$a5a46a00$6401a8c0@GRANDMA><BAY141-DAV1ADDF4A9D21DD9888F9558F200@phx.gbl><002c01c7a729$a3f1a990$6401a8c0@GRANDMA>
	<20070605043342.GC842@ourhouse.brannan.name>
Subject: Re: emu10k1 compilation problms.
Date: Mon, 4 Jun 2007 22:36:24 -0600
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2800.1158
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2800.1165
X-Antivirus: avast! (VPS 000747-0, 06/04/2007), Outbound message
X-Antivirus-Status: Clean
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

It installed snd_emu10k1. but somehow, /dev/dsp got deleted.
I'm working on retrieving that.
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
From: "Buddy Brannan" <buddy@brannan.name>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Monday, June 04, 2007 10:33 PM
Subject: Re: emu10k1 compilation problms.


> On Mon, Jun 04, 2007 at 10:26:08PM -0600, Littlefield, Tyler wrote:
> > hello,
> > I found it in my modules dir, but I can't modprobe for it.
> 
> Why not? Is your modprobe broke?  
> 
> Or do you actually mean that modprobe for it nets you a negative
> result? 
> 
> If that's what you actually mean, we can't really help much without
> knowing what that negative result is. 
> 
> In English:
> 
> What happens when you type (as root)
> modprobe snd_emu10k1
> ?
> 
> 
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

        

<a-lgX ni