From speakup-bounces@braille.uwo.ca  Sat Jun 16 20:07:54 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5H07sL9020874
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 20:07:54 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HziJ5-0003ds-00; Sat, 16 Jun 2007 20:07:51 -0400
Received: from beaver.sibername.com ([64.15.155.210])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HziJ3-0003dR-00
	for <speakup@braille.uwo.ca>; Sat, 16 Jun 2007 20:07:49 -0400
Received: from [24.226.68.228] (helo=tenstac)
	by beaver.sibername.com with smtp (Exim 4.66)
	(envelope-from <spie@proficio.ca>) id 1HziIX-0002D2-G3
	for speakup@braille.uwo.ca; Sat, 16 Jun 2007 20:07:17 -0400
Message-ID: <004b01c7b07c$067ce470$ab00a8c0@tenstac>
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <001e01c7b044$fd7fbbe0$6401a8c0@GRANDMA><007401c7b04f$923f85d0$ab00a8c0@tenstac><007901c7b065$01102810$9501a8c0@yellobow>
	<002601c7b072$058f0d90$6401a8c0@GRANDMA>
Subject: Re: moving from amd to p3?
Date: Sat, 16 Jun 2007 20:08:33 -0500
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

If you can wait for the network download, sure you can do a 
net install. There is a way to do this on most distros these days.
I have done it on debian, redhat, and slackware for sure. Get 
the network install boot image and let it go, it will take a long
time though.

 Tyler said.
Is there any way I can just install like debian with a really old kernel,
 like off flyppy, then use apt to upgrade?

It's not that you'd need an old kernel, just a generic one, 
basically the same bare ones that are used when doing the
initial install. But as I said in other message, if you are 
getting disk boot failure, then something else is wrong. 
A different kernel will not fix that. Check the connections
and if you can, check the BIOS drive settings. If there is
another drive in there, take it out for now and boot with 
just the new drive.

  -- Spie

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                

Ba
mooov