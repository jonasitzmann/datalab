From speakup-bounces@braille.uwo.ca  Tue Jun  5 19:53:53 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55NrqhB015217
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 19:53:52 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HviqP-00074o-00; Tue, 05 Jun 2007 19:53:45 -0400
Received: from iona.labri.fr ([147.210.8.143])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HviqP-00074P-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 19:53:45 -0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by iona.labri.fr (Postfix) with ESMTP id 4334290084
	for <speakup@braille.uwo.ca>; Wed,  6 Jun 2007 01:52:42 +0200 (CEST)
X-Virus-Scanned: amavisd-new at labri.fr
Received: from iona.labri.fr ([127.0.0.1])
	by localhost (iona.labri.fr [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 2xBUcrr0-PiJ for <speakup@braille.uwo.ca>;
	Wed,  6 Jun 2007 01:52:40 +0200 (CEST)
Received: from implementation.famille.thibault.fr (unknown [210.72.28.251])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by iona.labri.fr (Postfix) with ESMTP id 495C990081
	for <speakup@braille.uwo.ca>; Wed,  6 Jun 2007 01:52:40 +0200 (CEST)
Received: from samy by implementation.famille.thibault.fr with local (Exim
	4.63) (envelope-from <samuel.thibault@labri.fr>) id 1Hvipn-0001OK-Ml
	for speakup@braille.uwo.ca; Wed, 06 Jun 2007 01:53:07 +0200
Date: Wed, 6 Jun 2007 07:53:07 +0800
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Debian Alsa
Message-ID: <20070605235307.GB5289@implementation>
References: <BAY141-DAV15A5EA5B9D3FA4E27F24D68F200@phx.gbl>
	<Pine.LNX.4.64.0706051837150.17059@dell.bellsouth.net>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.0706051837150.17059@dell.bellsouth.net>
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l55NrqhB015217

Adam Myrow, le Tue 05 Jun 2007 18:45:43 -0500, a �crit :
> On Tue, 5 Jun 2007, Zachary Kline wrote:
> 
> >    Is there something fairly simple I'm missing?
> 
> Probably.  Are you loading snd_pcm_oss, snd_mixer_oss, and possibly 
> snd_seq_oss?  I can't believe that Debian doesn't load Alsa modules 
> automatically!

These are only compatibility layers that really shouldn't be needed
nowadays...

Samuel

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                

 apg/D