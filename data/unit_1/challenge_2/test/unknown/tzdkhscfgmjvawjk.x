From speakup-bounces@braille.uwo.ca  Tue Jun  5 00:09:54 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5549rhB003720
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 00:09:53 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvQMb-0002Vo-00; Tue, 05 Jun 2007 00:09:45 -0400
Received: from bay0-omc2-s37.bay0.hotmail.com ([65.54.246.173])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvQMZ-0002Uy-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 00:09:43 -0400
Received: from hotmail.com ([65.55.152.11]) by bay0-omc2-s37.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Mon, 4 Jun 2007 21:09:12 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Mon, 4 Jun 2007 21:09:12 -0700
Message-ID: <BAY141-DAV1ADDF4A9D21DD9888F9558F200@phx.gbl>
Received: from 71.111.96.206 by BAY141-DAV1.phx.gbl with DAV;
	Tue, 05 Jun 2007 04:09:11 +0000
X-Originating-IP: [71.111.96.206]
X-Originating-Email: [z_kline@hotmail.com]
X-Sender: z_kline@hotmail.com
From: "Zachary Kline" <Z_kline@hotmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <000a01c7a726$a5a46a00$6401a8c0@GRANDMA>
Subject: Re: emu10k1 compilation problms.
Date: Mon, 4 Jun 2007 21:09:02 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-OriginalArrivalTime: 05 Jun 2007 04:09:12.0272 (UTC)
	FILETIME=[45F6E500:01C7A727]
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

Hello,
    The kernel sources themselves contain the Emu10K driver, do they not? 
At least that's been my experience whenever I've needed a sound card 
configured.
Thanks,
Zack.

----- Original Message ----- 
From: "Littlefield, Tyler" <compgeek13@gmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Monday, June 04, 2007 9:04 PM
Subject: emu10k1 compilation problms.


> Hello list,
> Well, I wanted to accomplish something and be able to say I didn't need 
> help.
> Unfortunately, that plan was shattered.
> I found the emu10k1 driver on sourceforge, coppied in my .config and set 
> the kernel source path.
> When I type make, here's the problem I get.
> Anyone able to suggest a fix?
> make[1]: Entering directory `/usr/src/emu10k1-v0.20a/scripts'
> cc -I/usr/src/linux/include get_version.c -o get_version
> get_version.c: In function 'main':
> get_version.c:5: error: 'UTS_RELEASE' undeclared (first use in this 
> function)
> get_version.c:5: error: (Each undeclared identifier is reported only once
> get_version.c:5: error: for each function it appears in.)
> make[1]: *** [get_version] Error 1
> make[1]: Leaving directory `/usr/src/emu10k1-v0.20a/scripts'
> make: *** [opts] Error 2
> Any help is appriciated,
> Thanks,
> ~~TheCreator~~
> [My programs don't have bugs; just randomly added features]
> msn:
> compgeek13@gmail.com
> aim: st8amnd2005
> skype: st8amnd127
> vertigo head coder
> web: tysdomain.com
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
> 


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

 

k/rih7 rZT/oHoh