From speakup-bounces@braille.uwo.ca  Tue Jun  5 00:26:00 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l554Q0hB003826
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 00:26:00 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvQcC-0002r4-00; Tue, 05 Jun 2007 00:25:52 -0400
Received: from vms040pub.verizon.net ([206.46.252.40])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvQcA-0002qj-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 00:25:50 -0400
Received: from dalek ([71.116.57.12])
	by vms040.mailsrvcs.net (Sun Java System Messaging Server 6.2-6.01
	(built Apr
	3 2006)) with ESMTPA id <0JJ500FGUAYHL445@vms040.mailsrvcs.net> for
	speakup@braille.uwo.ca; Mon, 04 Jun 2007 23:25:30 -0500 (CDT)
Received: from davros by dalek with local (Exim 3.36 #1 (Debian))
	id 1HvQdN-0000Do-00	for <speakup@braille.uwo.ca>; Tue,
	05 Jun 2007 00:27:05 -0400
Date: Tue, 05 Jun 2007 00:27:04 -0400
From: Buddy Brannan <buddy@brannan.name>
Subject: Re: emu10k1 compilation problms.
In-reply-to: <000c01c7a728$ed521b20$6401a8c0@GRANDMA>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Message-id: <20070605042704.GA842@ourhouse.brannan.name>
MIME-version: 1.0
Content-disposition: inline
References: <000a01c7a726$a5a46a00$6401a8c0@GRANDMA>
	<BAY141-DAV1ADDF4A9D21DD9888F9558F200@phx.gbl>
	<000c01c7a728$ed521b20$6401a8c0@GRANDMA>
User-Agent: Mutt/1.5.13 (2006-08-11)
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

That's 'cause you should be modprobe'ing
snd_emu10k1
instead. 

Since kernel 2.6.X, ALSA is the default set of sound modules and they're all named in similar fashion. 

Really, you shouldn't try to create extra work for yourself :)
-- 
Buddy Brannan, KB5ELV
Email: buddy@brannan.name or phone 888-75-BUDDY
Get a free online mall and earn on 1000 stores:
http://www.powermall.us
>From Kitchen Disaster to Culinary Master, make meals and baking 
easier and faster: http://www.tastyshop.net


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

  

pwd 