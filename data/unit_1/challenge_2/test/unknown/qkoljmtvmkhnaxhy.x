From speakup-bounces@braille.uwo.ca  Wed Jun 20 06:18:02 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KAI2L9008712
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 06:18:02 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0xGB-0006Pz-00; Wed, 20 Jun 2007 06:17:59 -0400
Received: from iona.labri.fr ([147.210.8.143])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0xG8-0006Pg-00
	for <speakup@braille.uwo.ca>; Wed, 20 Jun 2007 06:17:56 -0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by iona.labri.fr (Postfix) with ESMTP id 96A2790079
	for <speakup@braille.uwo.ca>; Wed, 20 Jun 2007 12:16:56 +0200 (CEST)
X-Virus-Scanned: amavisd-new at labri.fr
Received: from iona.labri.fr ([127.0.0.1])
	by localhost (iona.labri.fr [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id bvy9mj13B3wV for <speakup@braille.uwo.ca>;
	Wed, 20 Jun 2007 12:16:56 +0200 (CEST)
Received: from implementation.famille.thibault.fr
	(laptop-147-210-128-192.labri.fr [147.210.128.192])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by iona.labri.fr (Postfix) with ESMTP id 83C7090078
	for <speakup@braille.uwo.ca>; Wed, 20 Jun 2007 12:16:56 +0200 (CEST)
Received: from samy by implementation.famille.thibault.fr with local (Exim
	4.67) (envelope-from <samuel.thibault@labri.fr>) id 1I0xFd-0002X3-OC
	for speakup@braille.uwo.ca; Wed, 20 Jun 2007 12:17:25 +0200
Date: Wed, 20 Jun 2007 12:17:25 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Speakup in userspace
Message-ID: <20070620101725.GH4837@implementation.labri.fr>
References: <20070620083354.GA4139@fajrero> <20070620095622.GA5790@themuso.com>
	<20070620095952.GF4837@implementation.labri.fr>
	<20070620101114.GA6050@themuso.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20070620101114.GA6050@themuso.com>
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5KAI2L9008712

Luke Yelavich, le Wed 20 Jun 2007 20:11:14 +1000, a �crit :
> > > > 2. What about console output? There is /dev/vcs[a]x, but polling that
> > > > a few times a second would be inefficient if the system was under load.
> > > 
> > > BrlTTY uses this,
> > 
> > For simulating keypresses, yes, but not for stealing key combinations.
> 
> I was referring to reading the console, which is what I think Tyler was 
> referring to.

Ooops, sorry, yes. brltty polls every 40ms, and it seems to be fine.
That said, I have in my todo-list a request for i-notification that
would make this fare more efficient.

Samuel

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

      

+s:Eoea90l