From speakup-bounces@braille.uwo.ca  Tue Jun  5 17:51:40 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55LpehB014216
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 17:51:40 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hvgw8-0004Er-00; Tue, 05 Jun 2007 17:51:32 -0400
Received: from ip-206-123-194-16.static.fasttrackcomm.net ([206.123.194.16]
	helo=tysdomain.com)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hvgw7-0004Eh-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 17:51:31 -0400
Received: from [192.168.1.100] (helo=GRANDMA)
	by tysdomain.com with smtp (Exim 3.36 #1 (Debian))
	id 1HvbLJ-0001nM-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 09:53:09 -0600
Message-ID: <002a01c7a7bb$b1a63050$6401a8c0@GRANDMA>
From: "Littlefield, Tyler" <compgeek13@gmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <000901c7a735$1a93d630$2518a8c0@bouncy><005601c7a77e$726a1060$6401a8c0@GRANDMA>
	<20070605212442.GB15402@grml>
Subject: Re: emu10k1 compilation problms.
Date: Tue, 5 Jun 2007 15:51:38 -0600
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2800.1158
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1165
X-Antivirus: avast! (VPS 000747-1, 06/05/2007), Outbound message
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

I'll try that. thanks. :)
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
From: "Spie Smith" <bdsmith@buncombe.main.nc.us>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Tuesday, June 05, 2007 3:24 PM
Subject: Re: emu10k1 compilation problms.


> Ok, if you can get any kind of speech or sighted assistance with
> aumix, do this: 
> 
> First of all query the setting of the audio.  
> 
> aumix -q
> 
> This will give you all the settings of the various mixer levels.
> Now, just read the man page for aumix, and it will give you what you
> need to know to set the levels to what you might want.  When you do
> this and see that you have sound again, just do an 
> 
> aumix -S 
> 
> to save the settings to the master aumixrc file.  This should  correct
> the sound problem if aumix runs at boot time with this as its
> configuration file.  
> 
> 
> 
> Hope this helps. 
> 
> 
> 
> 
> -- 
> Spie Smith: C.S.F.C.
> Computer Scientist For CHRIST
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

         

Wnwle=vt;s�bnstf