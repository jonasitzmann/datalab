From speakup-bounces@braille.uwo.ca  Mon Jun  4 07:37:58 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54BbvhB027292
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 07:37:57 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvAsf-0002ZW-00; Mon, 04 Jun 2007 07:37:49 -0400
Received: from moutng.kundenserver.de ([212.227.126.188])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvAse-0002Z7-00
	for <speakup@braille.uwo.ca>; Mon, 04 Jun 2007 07:37:48 -0400
Received: from [87.165.151.95] (helo=localhost)
	by mrelayeu.kundenserver.de (node=mrelayeu8) with ESMTP (Nemesis),
	id 0ML31I-1HvAs42JQE-0004Dj; Mon, 04 Jun 2007 13:37:13 +0200
Date: Mon, 4 Jun 2007 13:37:14 +0200
From: Hermann <steppenwolf2@onlinehome.de>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Speech Dispatcher bugfixes, request for help with testing
Message-ID: <20070604113714.GA2805@ubuntu>
References: <1180889365.23463.27.camel@labts16.troja.mff.cuni.cz>
	<20070603171305.GA32366@ubuntu> <86lkf19c2d.fsf@ferda.buchal.xx>
	<1180955961.9837.2.camel@labts16.troja.mff.cuni.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1180955961.9837.2.camel@labts16.troja.mff.cuni.cz>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Provags-ID: V01U2FsdGVkX181iBjr7p5koul+mZ4IJK3np4GGmujt6uDfG7C
	JJGdHtIRW5/HxMepIXXlHyk2ELczQSDYR/8/v2Fo36HPHv9zeo
	njBcu+u9+h/GqYTGvTGCw==
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

Hello Hynek,
No, I couldn't install the latest libspeechd, obtained from freebsoft, 
because it requires libc6 >=2.6.
dpkg refuses to configure the package, and apt-get recommends to perform
apt-get -f install
to restore the old system.
But in fact it does not restore. It deinstalls all packages related to SD, 
so that I've to reinstall the whole Sd system, included libraries.
So I decided to build SD from the source.
I've libspeechd2 and libspeech-dev installed, but I think they came with SD 
0.6.1.
Hermann

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

        

5blc:V6 eod"