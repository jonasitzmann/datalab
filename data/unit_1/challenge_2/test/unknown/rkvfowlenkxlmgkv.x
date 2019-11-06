From speakup-bounces@braille.uwo.ca  Wed Jun 20 06:00:30 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KA0TL9008542
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 06:00:29 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0wzB-00062a-00; Wed, 20 Jun 2007 06:00:25 -0400
Received: from iona.labri.fr ([147.210.8.143])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0wz9-00061z-00
	for <speakup@braille.uwo.ca>; Wed, 20 Jun 2007 06:00:24 -0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by iona.labri.fr (Postfix) with ESMTP id 618819006A
	for <speakup@braille.uwo.ca>; Wed, 20 Jun 2007 11:59:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at labri.fr
Received: from iona.labri.fr ([127.0.0.1])
	by localhost (iona.labri.fr [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 6tVcnGYnsMjQ for <speakup@braille.uwo.ca>;
	Wed, 20 Jun 2007 11:59:23 +0200 (CEST)
Received: from implementation.famille.thibault.fr
	(laptop-147-210-128-192.labri.fr [147.210.128.192])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by iona.labri.fr (Postfix) with ESMTP id 4E4469005E
	for <speakup@braille.uwo.ca>; Wed, 20 Jun 2007 11:59:23 +0200 (CEST)
Received: from samy by implementation.famille.thibault.fr with local (Exim
	4.67) (envelope-from <samuel.thibault@labri.fr>) id 1I0wye-0002Mr-Ls
	for speakup@braille.uwo.ca; Wed, 20 Jun 2007 11:59:52 +0200
Date: Wed, 20 Jun 2007 11:59:52 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Speakup in userspace
Message-ID: <20070620095952.GF4837@implementation.labri.fr>
References: <20070620083354.GA4139@fajrero> <20070620095622.GA5790@themuso.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20070620095622.GA5790@themuso.com>
User-Agent: Mutt/1.5.11
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: speakup-bounces@braille.uwo.ca
Errors-To: speakup-bounces@braille.uwo.ca
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5KA0TL9008542

Luke Yelavich, le Wed 20 Jun 2007 19:56:22 +1000, a �crit :
> -----BEGIN PGP SIGNED MESSAGE-----
> On Wed, Jun 20, 2007 at 06:33:54PM EST, Tyler Spivey wrote:
> > 1. How can a userspace program get extended key sequences such as caps
> > lock+i? Under Linux, I don't think that an API exists for this.
> 
> THis is possible, using the uinput module from the kernel.

And it is tedious: you have to grab the keyboard, and re-simulate
keypresses you don't interpret.

> > 2. What about console output? There is /dev/vcs[a]x, but polling that
> > a few times a second would be inefficient if the system was under load.
> 
> BrlTTY uses this,

For simulating keypresses, yes, but not for stealing key combinations.

Samuel

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                   

I0Lcrr8hfr