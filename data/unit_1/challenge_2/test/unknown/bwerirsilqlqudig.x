From speakup-bounces@braille.uwo.ca  Tue Jun  5 01:26:04 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l555Q4hB004308
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 01:26:04 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvRYF-000435-00; Tue, 05 Jun 2007 01:25:51 -0400
Received: from ip-206-123-194-16.static.fasttrackcomm.net ([206.123.194.16]
	helo=tysdomain.com)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvRYD-00042u-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 01:25:49 -0400
Received: from [192.168.1.100] (helo=GRANDMA)
	by tysdomain.com with smtp (Exim 3.36 #1 (Debian))
	id 1HvLxL-0000hi-00
	for <speakup@braille.uwo.ca>; Mon, 04 Jun 2007 17:27:24 -0600
Message-ID: <008201c7a731$fd5b6590$6401a8c0@GRANDMA>
From: "Littlefield, Tyler" <compgeek13@gmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <000a01c7a726$a5a46a00$6401a8c0@GRANDMA><BAY141-DAV1ADDF4A9D21DD9888F9558F200@phx.gbl><000c01c7a728$ed521b20$6401a8c0@GRANDMA>
	<20070605042704.GA842@ourhouse.brannan.name>
Subject: Re: emu10k1 compilation problms.
Date: Mon, 4 Jun 2007 23:24:30 -0600
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

OK, I modprobed like I said for snd_emu10k1, and snd_pcm_oss.
my /dev/dsp device was tossed, so I got that back, with mknod /dev/dsp c 14
3, because mplayer likes to have that around.
I don't get errors, but I also don't get any sound, so I guess it's sorta a
love hate type thing.
Any suggestions?

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
Sent: Monday, June 04, 2007 10:27 PM
Subject: Re: emu10k1 compilation problms.


> That's 'cause you should be modprobe'ing
> snd_emu10k1
> instead.
>
> Since kernel 2.6.X, ALSA is the default set of sound modules and they're
all named in similar fashion.
>
> Really, you shouldn't try to create extra work for yourself :)
> -- 
> Buddy Brannan, KB5ELV
> Email: buddy@brannan.name or phone 888-75-BUDDY
> Get a free online mall and earn on 1000 stores:
> http://www.powermall.us
> From Kitchen Disaster to Culinary Master, make meals and baking
> easier and faster: http://www.tastyshop.net
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

              

/eU <