From speakup-bounces@braille.uwo.ca  Tue Jun  5 00:04:55 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5544thB003685
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 00:04:55 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvQHl-0002LI-00; Tue, 05 Jun 2007 00:04:45 -0400
Received: from ip-206-123-194-16.static.fasttrackcomm.net ([206.123.194.16]
	helo=tysdomain.com)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvQHj-0002L8-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 00:04:43 -0400
Received: from [192.168.1.100] (helo=GRANDMA)
	by tysdomain.com with smtp (Exim 3.36 #1 (Debian))
	id 1HvKgl-0001SA-00
	for <speakup@braille.uwo.ca>; Mon, 04 Jun 2007 16:06:12 -0600
Message-ID: <000a01c7a726$a5a46a00$6401a8c0@GRANDMA>
From: "Littlefield, Tyler" <compgeek13@gmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: emu10k1 compilation problms.
Date: Mon, 4 Jun 2007 22:04:42 -0600
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2800.1158
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2800.1165
X-Antivirus: avast! (VPS 000747-0, 06/04/2007), Outbound message
X-Antivirus-Status: Clean
X-Content-Filtered-By: Mailman/MimeDel 2.1.9
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

Hello list,
Well, I wanted to accomplish something and be able to say I didn't need help.
Unfortunately, that plan was shattered.
I found the emu10k1 driver on sourceforge, coppied in my .config and set the kernel source path.
When I type make, here's the problem I get.
Anyone able to suggest a fix?
make[1]: Entering directory `/usr/src/emu10k1-v0.20a/scripts'
cc -I/usr/src/linux/include get_version.c -o get_version
get_version.c: In function 'main':
get_version.c:5: error: 'UTS_RELEASE' undeclared (first use in this function)
get_version.c:5: error: (Each undeclared identifier is reported only once
get_version.c:5: error: for each function it appears in.)
make[1]: *** [get_version] Error 1
make[1]: Leaving directory `/usr/src/emu10k1-v0.20a/scripts'
make: *** [opts] Error 2 
Any help is appriciated,
Thanks,
~~TheCreator~~
[My programs don't have bugs; just randomly added features]
msn:
compgeek13@gmail.com
aim: st8amnd2005
skype: st8amnd127
vertigo head coder
web: tysdomain.com
_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

            

a=-6nhIrB g