From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  2 10:43:02 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52Eh1hB024527
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 2 Jun 2007 10:43:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 149DC162C3F
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  2 Jun 2007 14:42:56 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from merlin.terpstra-world.org
	(adsl-71-155-173-57.dsl.austtx.sbcglobal.net [71.155.173.57])
	by lists.samba.org (Postfix) with ESMTP id 56AE8162AFE
	for <samba-technical@lists.samba.org>;
	Sat,  2 Jun 2007 14:42:10 +0000 (GMT)
Received: by merlin.terpstra-world.org (Postfix, from userid 1000)
	id E626F2798B3; Sat,  2 Jun 2007 09:42:09 -0500 (CDT)
From: John H Terpstra <jht@samba.org>
To: samba-technical@lists.samba.org
Date: Sat, 2 Jun 2007 09:41:59 -0500
User-Agent: KMail/1.9.5
References: <200706021611.32918.kai@samba.org>
In-Reply-To: <200706021611.32918.kai@samba.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3198184.iAbKBVQ5MN";
	protocol="application/pgp-signature"; micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <200706020942.09281.jht@samba.org>
Subject: Re: Make test failure on merlin and xen2-netbsd-samba
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: jht@samba.org
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

--nextPart3198184.iAbKBVQ5MN
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Saturday 02 June 2007 09:11, Kai Blin wrote:
> Hi metze,
>
> looks like I broke make test on merlin [1] and xen2-netbsd-samba [2].
>
> I don't understand how my changes affect the wins replication test at all,
> though.
>
> Looking through the wins sources, nothing there seems to use winbind. I'm
> kind of stumped there. Any ideas?
>
> Cheers,
> Kai

Kai,

Merlin is running OpenSUSE 10.2 x86_64 - fully up to date. If you want an=20
account on Merlin please send me your ssh public key.

=2D John T.

--nextPart3198184.iAbKBVQ5MN
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQBGYYHBXFvDWsy4K1MRAko3AJ4u4AirpiAkljV4f8FQ1SvtGOldMQCfZV5C
ogcqb4qAfI+qT3UjSjkTpPQ=
=AuCS
-----END PGP SIGNATURE-----

--nextPart3198184.iAbKBVQ5MN--

   

eE o_