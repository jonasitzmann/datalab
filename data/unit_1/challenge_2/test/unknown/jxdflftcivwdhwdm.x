From speakup-bounces@braille.uwo.ca  Wed Jun 20 23:17:05 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L3H5L9017964
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 23:17:05 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1DAL-0004Px-00; Wed, 20 Jun 2007 23:17:01 -0400
Received: from beaver.sibername.com ([64.15.155.210])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1DAK-0004Pn-00
	for <speakup@braille.uwo.ca>; Wed, 20 Jun 2007 23:17:00 -0400
Received: from [24.226.69.225] (helo=tenstac)
	by beaver.sibername.com with smtp (Exim 4.66)
	(envelope-from <spie@proficio.ca>) id 1I1DAH-0006TG-DT
	for speakup@braille.uwo.ca; Wed, 20 Jun 2007 23:16:57 -0400
Message-ID: <007101c7b3bb$33977a50$ab00a8c0@tenstac>
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <20070619000959.GD7821@rednote.net>
	<52938F2E-A4FC-4359-8A91-ABEA142454F4@softcon.com>
Subject: Re: TTSynth Is Available Again
Date: Wed, 20 Jun 2007 23:18:20 -0500
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

A better answer regarding the tts dependencies ...

Travis wrote:
> Why would you need any libs (regardless of gcc version) if it was a
> statically linked binary?

Well, here's what I wrote about getting it working on slackware 9.1
http://www.cs.vassar.edu/~priestdo/emacspeak/list.archive.2004/msg00128.html

Apparently it's not actually a statically linked binary because I had
to use glibc 2.3.1 and invoke viavoice using ld-2.3.1.so. We take
a lot for granted with distros, it's generally easy to build kernels
but the toolchain can be a bear. Note that the library enu50.so
(the speech engine) not only required an old glibc, it had to be
invoked using old loader. When I did this I had two glibc versions
and two loader versions on my system. I don't know if there is a
better way, but this approach worked on slackware and lfs.

At one point I was able to get it working on newer slackware
by using old binaries, but that eventually was not reliable anymore.
I have no idea if that is still true today, or if the instructions in my
archived message still work, apparently I did it three years ago.

Also from my notes, on slackware I used rpm2tgz to unpack viavoice.
Now I remember, the rpm tool choked because of dependencies.

I spent an insane amount of time getting viavoice working on
newer system. I for one have appreciation for what was done
with TTSynth, whatever that was I have no idea.

  -- Spie


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                  

 2?0