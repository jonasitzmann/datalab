From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun  8 14:50:57 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58IovhB018783
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 14:50:57 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 23C302E6F8; Fri,  8 Jun 2007 18:50:20 +0000 (UTC)
Old-Return-Path: <christian.pinedo.zamalloa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,LDOSUBSCRIBER,SPF_NEUTRAL autolearn=no version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from bipt106.bi.ehu.es (bipt106.bi.ehu.es [158.227.67.106])
	by murphy.debian.org (Postfix) with ESMTP id 896F52DEBA
	for <debian-legal@lists.debian.org>; Fri,  8 Jun 2007 18:50:14 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by bipt106.bi.ehu.es (Postfix) with ESMTP id 860B497224
	for <debian-legal@lists.debian.org>; Fri,  8 Jun 2007 20:50:40 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bipt106.bi.ehu.es
Received: from bipt106.bi.ehu.es ([127.0.0.1])
	by localhost (localhost.localdomain [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gX2DP66R28mx for <debian-legal@lists.debian.org>;
	Fri,  8 Jun 2007 20:50:39 +0200 (CEST)
Received: from tartalo.rebelbase.dyndns.org (eu100-136-4.clientes.euskaltel.es [82.130.136.4])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by bipt106.bi.ehu.es (Postfix) with ESMTP id 42DE19721D
	for <debian-legal@lists.debian.org>; Fri,  8 Jun 2007 20:50:38 +0200 (CEST)
Received: by tartalo.rebelbase.dyndns.org (sSMTP sendmail emulation); Fri, 08 Jun 2007 20:50:37 +0200
Date: Fri, 8 Jun 2007 20:50:37 +0200
From: Christian Pinedo Zamalloa <christian.pinedo.zamalloa@gmail.com>
To: debian-legal@lists.debian.org
Subject: legal question to a new package
Message-ID: <20070608185037.GC5389@tartalo.rebelbase.dydns.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LyciRD1jyfeSSjG0"
Content-Disposition: inline
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <dIgkp.A.RT.sTaaGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36671
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Fri,  8 Jun 2007 18:50:20 +0000 (UTC)


--LyciRD1jyfeSSjG0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

hello all,

I'm trying to package my first package for debian and I'm having several
doubts about legal issues. I'm trying to package chessdb a fork of scid
chess database. The questions are the next:

1. Should I include *all* the authors listed in copyrights statements of
all files of chessdb in debian/copyright? The main contributor are Shane
(scid) and Krikby (chessdb) but other minor contributors are listed
through all the source files of the program. The upstreamer's copyright
file only lists Shane and Krikby and says that are other contributors
and to kown them we should see the source files.

2. The chessdb includes a original file from scid (ratings.ssp) that has
the following copyright:
# This file is ONLY for use in the Scid chess database program.
# For any other use, please contact the author first for permission.
# Updates and improvements are welcome, please send them to the author.
Could I include this file in the package chessdb-data that belongs to
main section? Is this free software? Is it legal that chessdb includes
it?

3. There is another file named init.tcl with the following copyright:
# Copyright (c) 1991-1993 The Regents of the University of California.
# Copyright (c) 1994-1996 Sun Microsystems, Inc.
# Copyright (c) 1998-1999 Scriptics Corporation.
#
# See the file "license.terms" for information on usage and
# redistribution
# of this file, and for a DISCLAIMER OF ALL WARRANTIES.
But there is now license.terms file.

I would be pleased if you provide some feedback to address my doubts.
Thanks,

--=20
Christian Pinedo Zamalloa (zako)
PGP key at: http://pgp.mit.edu:11371/pks/lookup?op=3Dget&search=3D0x828D0C80
Fingerprint: 7BFF 4105 F46B 7977 BD96  348C 1007 4FF8 828D 0C80

--LyciRD1jyfeSSjG0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGaaT9EAdP+IKNDIARAoLVAJsHb3w5h+U0mCjUQhjhYs/GJxQO9ACfT812
iOHvJJgBUSi4oo0rQjY510Q=
=GRYe
-----END PGP SIGNATURE-----

--LyciRD1jyfeSSjG0--


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

 

s�lcv1fhZ3