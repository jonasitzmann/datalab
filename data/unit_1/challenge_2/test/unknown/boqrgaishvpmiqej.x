From speakup-bounces@braille.uwo.ca  Tue Jun  5 19:06:10 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55N68hB014816
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 19:06:08 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hvi63-0005VM-00; Tue, 05 Jun 2007 19:05:51 -0400
Received: from iona.labri.fr ([147.210.8.143])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hvi60-0005Uz-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 19:05:48 -0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by iona.labri.fr (Postfix) with ESMTP id 99BE790084
	for <speakup@braille.uwo.ca>; Wed,  6 Jun 2007 01:04:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at labri.fr
Received: from iona.labri.fr ([127.0.0.1])
	by localhost (iona.labri.fr [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id oNR4jEcp7VNR for <speakup@braille.uwo.ca>;
	Wed,  6 Jun 2007 01:04:43 +0200 (CEST)
Received: from implementation.famille.thibault.fr (unknown [210.72.28.251])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by iona.labri.fr (Postfix) with ESMTP id 8816890080
	for <speakup@braille.uwo.ca>; Wed,  6 Jun 2007 01:04:43 +0200 (CEST)
Received: from samy by implementation.famille.thibault.fr with local (Exim
	4.63) (envelope-from <samuel.thibault@labri.fr>) id 1Hvi5P-0000v3-7j
	for speakup@braille.uwo.ca; Wed, 06 Jun 2007 01:05:11 +0200
Date: Wed, 6 Jun 2007 07:05:11 +0800
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Debian Alsa
Message-ID: <20070605230511.GB3356@implementation>
References: <BAY141-DAV15A5EA5B9D3FA4E27F24D68F200@phx.gbl>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BAY141-DAV15A5EA5B9D3FA4E27F24D68F200@phx.gbl>
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l55N68hB014816

Hi,

Zachary Kline, le Tue 05 Jun 2007 14:30:07 -0700, a �crit :
>     For some reason, when I've booted, I've noticed that /dev/mixer, among other things, isn't being created.  I would think that Udev could do that?  Not to mention /dev/dsp and all...
>     Is there something fairly simple I'm missing?

Alsa doesn't provide these :) You should rather have a look at
/dev/snd/, it's all there.

Samuel

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

               

Yrt
eU.y0E h