From speakup-bounces@braille.uwo.ca  Fri Jun  8 04:23:31 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l588NUhB012895
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 04:23:30 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HwZkh-0007mR-00; Fri, 08 Jun 2007 04:23:23 -0400
Received: from 158-84-244-84.strcechy.adsl-llu.static.bluetone.cz
	([84.244.84.158] helo=brailcom.org)
	by speech.braille.uwo.ca with smtp (Exim 3.36 #1 (Debian))
	id 1HwZke-0007mI-00
	for <speakup@braille.uwo.ca>; Fri, 08 Jun 2007 04:23:21 -0400
Received: (qmail 14159 invoked by uid 1001); 8 Jun 2007 10:23:18 +0200
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: editing speech.conf
From: Jan Buchal <buchal@brailcom.org>
Date: Fri, 08 Jun 2007 10:19:44 +0200
In-Reply-To: <4668F393.5060707@brailcom.org> (Tomas Cerha's message of "Fri\,
	08 Jun 2007 08\:13\:39 +0200")
Message-ID: <86bqfq97tr.fsf@homer.brailcom.xx>
References: <2b2234330706071158u38924b1bi4e03cbbb24db40ad@mail.gmail.com>
	<4668F393.5060707@brailcom.org>
Lines: 25
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

>>>>> "TC" == Tomas Cerha <cerha@brailcom.org> writes:

    TC> Hi Michael, you definitely need to run the editor as root to get
    TC> read/write access to the file. I'm not sure, but you may need to
    TC> specify an absolute path with sudo. Instead of using sudo,
    TC> however, it is often more convenient to switch the current user
    TC> using the su command or loging in as root on another console.
Hi,

maybe the other possibility is include speechd-up.conf with full path
from your home directory where you can have rights for editing.

The line in speechd.conf can seems so for example:

Include "/home/buchal/sdclients/speechd-up.conf"

Best


-- 

Jan Buchal
Tel: (00420) 24 24 86 008
Mob: (00420) 608023021


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

  

ltnf2BdcU8tkK=m