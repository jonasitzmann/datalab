From speakup-bounces@braille.uwo.ca  Sun Jun 17 00:45:50 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5H4jnL9022735
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 00:45:49 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hzme3-0000PV-00; Sun, 17 Jun 2007 00:45:47 -0400
Received: from linserver.romuald.net.eu.org ([63.228.150.209])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hzme1-0000Oz-00
	for <speakup@braille.uwo.ca>; Sun, 17 Jun 2007 00:45:45 -0400
Received: (qmail 29148 invoked by uid 1000); 16 Jun 2007 21:45:14 -0700
Date: Sat, 16 Jun 2007 21:45:14 -0700
From: Gregory Nowak <greg@romuald.net.eu.org>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: moving from amd to p3?
Message-ID: <20070617044514.GA29071@localhost.localdomain>
References: <20070617034325.GA27838@localhost.localdomain>
	<00b901c7b09f$01b66dd0$ab00a8c0@tenstac>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00b901c7b09f$01b66dd0$ab00a8c0@tenstac>
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

On Sun, Jun 17, 2007 at 12:18:57AM -0500, Spie Sutherland wrote:
> I didn't know that make oldconfig would recognize new
> options and prompt you for them. I guess that's because
> I don't usually use oldconfig. Since having the right config
> is the most important part of the kernel build, I always do
> it from scratch, with only the new source tree and nothing
> old in there.

Oh boy. If I did that instead of being able to use oldconfig, I'd be
upgrading to my own kernel build every 3 years or so. When I want to
upgrade to a newer version, I take the .config from my existing
version, slap it into the new source tree, do make oldconfig, compile,
reboot, and bingo. The only scenario where this doesn't fully work is
when going from 2.2 to 2.4, and from 2.4 to 2.6. When I did that, I
still used oldconfig to take care of anything obvious (options marked
as new), but I did go through both times, and verified the whole
config carefully before compiling.

Greg


- -- 
web site: http://www.romuald.net.eu.org
gpg public key: http://www.romuald.net.eu.org/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)

- --
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGdLxa7s9z/XlyUyARAjLHAJ9l4gi7n7g24zWen78w5dutUdA7HQCfXP5c
2rFFUIuM8nleMsBJ76U4Xsk=
=Kqd2
-----END PGP SIGNATURE-----

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup



:f@Fla.a
ovs0Qr/