From speakup-bounces@braille.uwo.ca  Wed Jun  6 14:48:27 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56ImQhB025071
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 14:48:26 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hw0YJ-0007ZG-00; Wed, 06 Jun 2007 14:48:15 -0400
Received: from linserver.romuald.net.eu.org ([63.228.150.209])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hw0YG-0007Yn-00
	for <speakup@braille.uwo.ca>; Wed, 06 Jun 2007 14:48:13 -0400
Received: (qmail 497 invoked by uid 1000); 6 Jun 2007 11:47:40 -0700
Date: Wed, 6 Jun 2007 11:47:40 -0700
From: Gregory Nowak <greg@romuald.net.eu.org>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Upgrading Debian to Testing with speakup
Message-ID: <20070606184739.GA407@localhost.localdomain>
References: <BAY141-DAV35DF1AC4D786EA12DF47A8F270@phx.gbl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BAY141-DAV35DF1AC4D786EA12DF47A8F270@phx.gbl>
X-PGP-Key: http://www.romuald.net.eu.org/pubkey.asc
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

To upgrade to testing, all you really need to do is to replace the
stable word on every line of your /etc/apt/sources.list with the word
testing. Then, just do apt-get update, and apt-get dist-upgrade.

I can't really answer your kernel question, since I role my own.

Greg


On Wed, Jun 06, 2007 at 11:35:51AM -0700, Zachary Kline wrote:
> Hiya,
>     I was wondering how to upgrade Debian Etch 4.0R0 to Testing with Speakup?  I've got the NetInst stuff from people.debian.org/~shane, but don't know if kernel 2.6.18 is the latest version in Testing.  I'm not sure if I want to run a mixed distribution: is this common with Debian?  
>     I know that none of the official Deb kernels contain Speakup.  Would I need to roll my own if I wanted to upgrade to Testing?
> Thanks,
> Zack.
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup

- -- 
web site: http://www.romuald.net.eu.org
gpg public key: http://www.romuald.net.eu.org/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)

- --
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGZwFL7s9z/XlyUyARAuL5AJ9LXovQzNVz/VclfOnwShOM7YFTyACeKmgR
2ftuxa/FtZSuuAJpEsUAS2Y=
=tjuq
-----END PGP SIGNATURE-----

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

          

BDTf