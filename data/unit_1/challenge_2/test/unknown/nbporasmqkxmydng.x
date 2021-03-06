From bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jun 17 03:16:22 2007
Return-Path: <bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5H7GLL9023724
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 03:16:21 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 802B42E69E; Sun, 17 Jun 2007 07:15:51 +0000 (UTC)
Old-Return-Path: <elendil@planet.nl>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=4.0 tests=AWL,BAYES_00,
	DNS_FROM_RFC_ABUSE,DNS_FROM_RFC_WHOIS,FORGED_RCVD_HELO autolearn=no 
	version=3.1.4
X-Original-To: debian-desktop@lists.debian.org
Received: from cmburns.debconf.org (cmburns.debconf.org [80.68.86.241])
	by murphy.debian.org (Postfix) with ESMTP id 4149B2DFF9;
	Sun, 17 Jun 2007 07:15:46 +0000 (UTC)
Received: from homer.dc7.debconf.org (unknown [129.215.255.137])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client CN "homer.dc7.debconf.org", Issuer "Certificate Authority - Email" (verified OK))
	by cmburns.debconf.org (Postfix) with ESMTP id CCEA81C805F;
	Sun, 17 Jun 2007 07:16:10 +0000 (UTC)
Received: from [10.8.249.243] (helo=wired-249-243.internal.dc7.debconf.org ident=fjp)
	by homer.dc7.debconf.org with esmtpsa (TLS-1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.63)
	(envelope-from <elendil@planet.nl>)
	id 1HzozZ-0004i4-Uz; Sun, 17 Jun 2007 08:16:09 +0100
From: Frans Pop <elendil@planet.nl>
To: debian-boot@lists.debian.org
Subject: Re: A common Debian style for Debian Installer and the desktop
Date: Sun, 17 Jun 2007 09:15:42 +0200
User-Agent: KMail/1.9.5
Cc: debian-desktop@lists.debian.org
References: <200706122349.20602.elendil@planet.nl> <7a2ce3870706131225l475ddd8dje923a35ca16bf34a@mail.gmail.com>
In-Reply-To: <7a2ce3870706131225l475ddd8dje923a35ca16bf34a@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart1381956.PuQ4qyKUvi";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <200706170916.10551.elendil@planet.nl>
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <yoSDo.A.1IB.n-NdGB@murphy>
Resent-From: debian-desktop@lists.debian.org
X-Mailing-List: <debian-desktop@lists.debian.org> archive/latest/1759
X-Loop: debian-desktop@lists.debian.org
List-Id: <debian-desktop.lists.debian.org>
List-Post: <mailto:debian-desktop@lists.debian.org>
List-Help: <mailto:debian-desktop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-desktop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-desktop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-desktop-request@lists.debian.org
Resent-Date: Sun, 17 Jun 2007 07:15:51 +0000 (UTC)

--nextPart1381956.PuQ4qyKUvi
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Wednesday 13 June 2007 21:25, Andr=E9 Luiz Rodrigues Ferreira wrote:
> Can we prepare an other GTK theme, using other gtk2 engine?

In theory, yes. But there are technical issues that need to be considered.=
=20
=46or example, we partly ended up with the Clearlooks engine because it=20
solved a bug with some display issues we were having.

Also, switching to a different engine means that we need to change the=20
existing udeb or create a new one, so it is not trivial. Testing with a=20
different engine should be possible without creating a udeb for it=20
though.

Size, dependencies and memory usage of the engine are important too.

So any switch to a different engine will definitely need to be discussed=20
with and approved by the D-I team.

Cheers,
=46JP

--nextPart1381956.PuQ4qyKUvi
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQBGdN+6gm/Kwh6ICoQRAsAXAKCWHNu6nBSRj8+5ofMRjq7Hl6SYfQCeP8p9
PzGXoDSoLNxzOtC2FJrmxMM=
=j1wB
-----END PGP SIGNATURE-----

--nextPart1381956.PuQ4qyKUvi--


-- 
To UNSUBSCRIBE, email to debian-desktop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

                  

3B9"m& ">oOo iF