From speakup-bounces@braille.uwo.ca  Sun Jun  3 01:46:03 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l535k2hB031656
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 01:46:02 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Huiua-0002WA-00; Sun, 03 Jun 2007 01:45:56 -0400
Received: from 207-83-244-84.strcechy.adsl-llu.static.bluetone.cz
	([84.244.83.207] helo=ferda.buchal.name ident=qmailr)
	by speech.braille.uwo.ca with smtp (Exim 3.36 #1 (Debian))
	id 1HuiuZ-0002W1-00
	for <speakup@braille.uwo.ca>; Sun, 03 Jun 2007 01:45:55 -0400
Received: (qmail 6717 invoked by uid 1001); 3 Jun 2007 07:45:54 +0200
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Latest Speech-Dispatcher CVS build and questions.
From: Jan Buchal <buchal@brailcom.org>
Date: Sun, 03 Jun 2007 07:41:31 +0200
In-Reply-To: <000b01c7a55d$3e8eb570$6401a8c0@YOUR3ADE1B78A3> (Keith Hinton's
	message of "Sat\, 2 Jun 2007 14\:30\:30 -0700")
Message-ID: <86vee5egs4.fsf@ferda.buchal.xx>
References: <000b01c7a55d$3e8eb570$6401a8c0@YOUR3ADE1B78A3>
Lines: 32
User-Agent: Gnus/5.11 (Gnus v5.11) Emacs/22.0.95 (gnu/linux)
MIME-Version: 1.0
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

>>>>> "KH" == Keith Hinton <keithint38@CommSpeed.net> writes:

    KH> Okay, I understand that on May 23, or something like that, Hynek
    KH> Hanky released another CVS version of Speech-Dispatcher, that
    KH> apparently resolves these bugs of it crashing so frequently.
    KH> Hynek, If this helps: I have not yet had time to test it. I am
    KH> on Windows XP at the moment. Best thing I can do is to emulate
    KH> an SMP (dual-core) Linux machine under VMWare workstation (sinse
    KH> I can get Speech working just fine.) And then see if you're
    KH> Speech-Dispatcher tests work out that way. Lerenzo, have you
    KH> tested these out yet? I really really hope the day comes soon
    KH> where Hynek can at least announce with pleasure that these weird
    KH> crash bugs are finally resolved. When do you think another
    KH> version of SpeechD-up for Speakup will be released? 0.4 is so
    KH> old.
In speechd-up are any know problems now. Regarding speech dispatcher I
use latest announced cvs version dayly on dual core machine and works.
There was probably problem with glib libraries so Hynek Hanke rewrite
part of libspeechd which don't use this library now.


    KH> Wonder if the CVS stuff is really any better despite being
    KH> development code? I will happily test it, eaven if it breaks my
    KH> Virtual systems ;).
I think that is much stable then stable version :-)

-- 

Jan Buchal
Tel: (00420) 24 24 86 008
Mob: (00420) 608023021


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

               

"nredisB>