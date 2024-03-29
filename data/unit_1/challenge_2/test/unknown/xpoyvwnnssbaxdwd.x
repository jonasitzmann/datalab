From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jun  3 10:28:49 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53ESmhB016427
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 10:28:48 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 0F8E92E30C; Sun,  3 Jun 2007 14:28:20 +0000 (UTC)
Old-Return-Path: <aj@azure.humbug.org.au>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,LDOSUBSCRIBER autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from azure.erisian.com.au (azure.humbug.org.au [66.179.181.62])
	by murphy.debian.org (Postfix) with ESMTP id A08362E447;
	Sun,  3 Jun 2007 14:28:11 +0000 (UTC)
Received: from mail by azure.erisian.com.au with local-bsmtp (Exim 4.63 #1 (Debian))
	id 1Hur4G-0005Nm-8g; Mon, 04 Jun 2007 00:28:28 +1000
Received: from aj by calamine.erisian.com.au with local (Exim 4.63 #1 (Debian))
	id 1HupbS-00066H-Oo; Sun, 03 Jun 2007 22:54:38 +1000
Date: Sun, 3 Jun 2007 22:54:38 +1000
From: Anthony Towns <aj@azure.humbug.org.au>
To: debian-legal@lists.debian.org, debian-devel@lists.debian.org
Subject: Re: discussion with the FSF: GPLv3, GFDL, Nexenta
Message-ID: <20070603125438.GA23416@azure.humbug.org.au>
Mail-Followup-To: debian-legal@lists.debian.org,
	debian-devel@lists.debian.org
References: <20070522113023.GE22548@zoy.org> <20070524175436.GF30294@archimedes.ucr.edu> <20070603102514.GC5222@grep.be> <20070603115140.GC3000@borges.dodds.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline
In-Reply-To: <20070603115140.GC3000@borges.dodds.net>
Organisation: Lacking
X-PGP: http://azure.humbug.org.au/~aj/aj_key.asc
X-No-CC: Don't Cc me to mailing list posts unless you really have to
Mail-Copies-To: nobody
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <-IIJlB.A.RGD.DAtYGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36551
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sun,  3 Jun 2007 14:28:20 +0000 (UTC)


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jun 03, 2007 at 04:51:40AM -0700, Steve Langasek wrote:
> On Sun, Jun 03, 2007 at 12:25:14PM +0200, Wouter Verhelst wrote:
> > Additionally, personally I don't think it's unreasonable for people to
> > say "if you use my software in a way that I didn't want you to, I'll sue
> > you in a court that works by a set of rules that I'm actually
> > comfortable with". You know, it makes fighting those who do not follow
> > your license the way you intended them to quite a bit easier.
> That's a strawman.  The objection raised to choice-of-venue clauses is not
> what they specify to happen when the licensee has *infringed* the license,
> it's what they specify to happen when the licensee *hasn't* infringed the
> license but the copyright holder files a lawsuit against them anyway out of
> malice.

I don't think that's meaningful; if I sue you in a court in Australia
for not complying with debootstrap's license, and they find that you've
infringed the license, it doesn't really matter if I'm doing that out
of maliciousness or a genuine. And as far as the actual effects go,
I'm not sure you're going to be any better off without that clause in
your license: if you set foot in Australia, with an Australian judgement
against you, there's a good chance of it being enforced; and if you don't,
there seems to be a practical possibility of your extradition anyway,
based on [0].

Simon Phipps' argument, presented at debconf last year, is (aiui) that
the clause only comes into play when both parties are organisations
that cross multiple jurisdictions anyway -- in which case they're both
presumed to have a presence in the given jurisdiction anyway, and could
reasonably be expected to be following its rules, afaics.

[0] http://www.theage.com.au/articles/2007/05/06/1178390140855.html

Cheers,
aj


--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----

iD8DBQFGYroOOxe8dCpOPqoRAsqFAJ9D5wd5MnLUOTSYNuzxVQwvwz585ACfa7rS
729V4V8ZJznB0TcVfaL0WCA=
=9o62
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

   

lrqwf0f=ta