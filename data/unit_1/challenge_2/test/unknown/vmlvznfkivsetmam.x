From speakup-bounces@braille.uwo.ca  Tue Jun 19 15:54:44 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JJshL9000804
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 19 Jun 2007 15:54:43 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0jmi-0002hh-00; Tue, 19 Jun 2007 15:54:40 -0400
Received: from smtp1.commspeed.net ([216.19.2.40])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0jmh-0002hT-00
	for <speakup@braille.uwo.ca>; Tue, 19 Jun 2007 15:54:39 -0400
Received: (qmail 71791 invoked by uid 1034); 19 Jun 2007 19:54:08 -0000
Received: from mmds-216-19-30-69.mm.az.commspeed.net (HELO YOUR3ADE1B78A3)
	(216.19.30.69)
	by smtp1.commspeed.net with SMTP; 19 Jun 2007 19:54:08 -0000
Message-ID: <000c01c7b2ab$984096f0$6401a8c0@YOUR3ADE1B78A3>
From: "Keith Hinton" <keithint38@CommSpeed.net>
To: <speakup@braille.uwo.ca>
Subject: Software speech opinions
Date: Tue, 19 Jun 2007 12:54:06 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2869
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2962
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

Hi Kirk and all at the Speakup mailing list.
I wanted to express my opinions on Speakup's actual design itself and with 
software speech.
First, I hope that Speech-Dispatcher and SpeechD-up (wich are free open 
source projects) continue to receive bugfixes in CVS, as much as possible, 
and that at some point all SMP related issues are solved. What if some users 
need Speech-Dispatcher Hynek eaven after the TTS API provider has been 
created and works? I suggest still keeping the project around and improving 
it. Not with features, (Speech-Dispatcher is already cool as it is) but that 
bugfixes and updates of that type can still be maintained for those who 
still wish to use it.
Now, regarding Speakup itself,
I believe Hardware speech is going to be a thing of the passed; especially 
with computers becoming USB-connection based, and having nno serial ports. 
My new Gateway desktop is a perfect example. Also, most Linux LiveCD's 
refuse to use anything but a speakup hardware module, and therefore I wonder 
if softsynth should be really the approach here? I have to SSH most Linux 
installations from a working software-enabled Speakup machine here on my 
network anyways.
So there is still a use for old technology, however
I wonder if Speakup could be patched to work with USB/firewire/newer 
synthesizers, and rewrite it's interface so that it uses drivers like 
softsynth?
BTW Kirk, where is the documentation for softsynth itself and how that 
works? It is not well documented, and I have been wanting to play with 
writing my own drivers, and do not have a clear API for Speakup/Sftsyn.
Regards, --Keith
Skype: skypedude1234 


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup



nlaazkvG t
Li