From speakup-bounces@braille.uwo.ca  Sat Jun  9 08:33:36 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59CXaL9009566
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 9 Jun 2007 08:33:36 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hx08I-0006Uf-00; Sat, 09 Jun 2007 08:33:30 -0400
Received: from ipmail02.adl2.internode.on.net ([203.16.214.141])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hx08G-0006UV-00
	for <speakup@braille.uwo.ca>; Sat, 09 Jun 2007 08:33:28 -0400
X-IronPort-AV: E=Sophos;i="4.16,402,1175437800"; d="scan'208";a="136327939"
Received: from ppp31-87.lns1.syd6.internode.on.net (HELO themuso.com)
	([59.167.31.87])
	by ipmail02.adl2.internode.on.net with SMTP; 09 Jun 2007 22:03:25 +0930
Received: (nullmailer pid 7549 invoked by uid 1000);
	Sat, 09 Jun 2007 12:33:25 -0000
Date: Sat, 9 Jun 2007 22:33:25 +1000
From: Luke Yelavich <themuso@themuso.com>
To: "Speakup is a screen review system for Linux\." <speakup@braille.uwo.ca>
Subject: ttsynth and speakup connector.
Message-ID: <20070609123325.GA7523@themuso.com>
MIME-Version: 1.0
Content-Disposition: inline
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hey folks.
I am currently using ttsynth with the speakup connector utility, and so 
far, I am quite impressed. The synth is incredibly responsive, even on a 
dual celeron 466Mhz box. One thing I have noticed however, is that 
speech does not shut up very quickly when one presses a key, or the 
control key. Speech also overlaps when quickly skimming over text, 
either by line, word, or character. I'd say this has something to do 
with ALSA being used, but is probably not too hard to work around in the 
code. The utility also randomly crashes sometimes, and I hope to see if 
I can debug that.

Janina, what is the speakup connector source code license?

I can make Ubuntu/Debian packages if people are interested.
- -- 
Luke Yelavich
GPG key: 0xD06320CE 
	 (http://www.themuso.com/themuso-gpg-key.txt)
Email & MSN: themuso@themuso.com
Jabber: themuso@jabber.org.au
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGap4VjVefwtBjIM4RAnYWAKDFNu5knHIh2SCqLaUAccdhrox6hQCg57Se
ttRBKDXvpRwEo634yojd32Q=
=HlC9
-----END PGP SIGNATURE-----

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

      

yY""