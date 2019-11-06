From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 18:43:06 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62Mh6L9019923
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 18:43:06 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 61DE416384B
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  2 Jul 2007 22:43:02 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [127.0.0.1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 1EF03162AD6;
	Mon,  2 Jul 2007 22:42:40 +0000 (GMT)
From: Andrew Bartlett <abartlet@samba.org>
To: Todd Stecher <todd.stecher@isilon.com>
In-Reply-To: <932A69D3-74F5-4E59-9DDA-978B3B2C61BD@isilon.com>
References: <932A69D3-74F5-4E59-9DDA-978B3B2C61BD@isilon.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="=-bLWbKHbnGUzFMJdL+bs7"
Date: Tue, 03 Jul 2007 08:42:39 +1000
Message-Id: <1183416159.3665.1.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 (2.10.2-2.fc7) 
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>,
   "'Jeremy Allison'" <jra@samba.org>,
   samba-technical <samba-technical@samba.org>
Subject: Re: High load server getting NTLM messages mixed?
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
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


--=-bLWbKHbnGUzFMJdL+bs7
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue, 2007-06-26 at 16:53 -0700, Todd Stecher wrote:
> A client with extremely high load on their Samba server is =20
> intermittently hitting this code in smbd/sesssetup.c:
>=20
> if (!global_ntlmssp_state) {
> 		/* auth before negotiatiate? */
> 		return ERROR_NT(NT_STATUS_INVALID_PARAMETER);
> 	}
>=20
>=20
> This is 3.0.11 - apparently he tried this on a later version with =20
> minimal problems (unfortunately, we have not as yet released a =20
> "newer" version of Samba on our product :( ) - does anyone know if =20
> this was an issue that was specifically fixed?  I didn't see anything =20
> obvious in bugzilla.samba.org.
>=20
> There is a literal ton of NTLMSSP traffic against this server, and in =20
> many cases different auth contexts are interleaved in the wire - it =20
> seems that the errors I'm seeing in the sniff occur when these =20
> messages get intertwined.
>=20
> Given that, and the presence of a "global" static struct =20
> auth_ntlmssp_state *global_ntlmssp_state, I suspect this was fixed by =20
> revision 8472 2 years ago (dang - we are dangerously out of date here).
>=20
> http://viewcvs.samba.org/cgi-bin/viewcvs.cgi?rev=3D8472&view=3Drev
>=20
>=20
> Andrew / Jerry - Can you confirm?  I could not find anything related =20
> to parallel NTLM processing in bugzilla...

That is certainly the initial work I did on the problem.  However, there
may have been fixes (memory leaks in particular) after that, so don't
assume all is perfect if you just take that patch.=20

Andrew Bartlett

--=20
Andrew Bartlett                                http://samba.org/~abartlet/
Authentication Developer, Samba Team           http://samba.org
Samba Developer, Red Hat Inc.                  http://redhat.com


--=-bLWbKHbnGUzFMJdL+bs7
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQBGiX9Tz4A8Wyi0NrsRAoGEAJ9VX/82oN2GFbXJ2dwoIeic570BdACcCuix
XumV3ekynTOicewG0O+quGo=
=PaBq
-----END PGP SIGNATURE-----

--=-bLWbKHbnGUzFMJdL+bs7--

   

Ds RA3X e.e