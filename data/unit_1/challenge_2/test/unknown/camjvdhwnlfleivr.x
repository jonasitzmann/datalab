From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 22:52:58 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l632qwL9022580
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 22:52:58 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 5A6A916384E
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 02:52:54 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [127.0.0.1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 2B59B162AD0;
	Tue,  3 Jul 2007 02:52:21 +0000 (GMT)
From: Andrew Bartlett <abartlet@samba.org>
To: tridge@samba.org
In-Reply-To: <18057.45742.634311.748903@samba.org>
References: <46882785.3060308@verizon.net>
	<1183425429.3665.14.camel@localhost.localdomain>
	<18057.45742.634311.748903@samba.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="=-QLvlyoHENsWt5KMsLywA"
Date: Tue, 03 Jul 2007 12:52:20 +1000
Message-Id: <1183431140.3665.20.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 (2.10.2-2.fc7) 
Cc: samba-technical@lists.samba.org, Matt Schwartz <mes5048@verizon.net>
Subject: Re: Samba4 MMC Write Support
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


--=-QLvlyoHENsWt5KMsLywA
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue, 2007-07-03 at 12:21 +1000, tridge@samba.org wrote:
> Andrew,
>=20
>  > [SYSVOL] shouldn't be our private dir, but say /usr/local/samba/sysvol=
.=20
>=20
> actually, I wonder if we shouldn't make [sysvol] point by default into
> one of the standard directories (like where we place our long term tdb
> databases). It should remain fairly small, and is really config
> information, not user data.

We shouldn't expose our tdbs that way, but I think the default provision
should include both shares, with the setup you describe below already
done.=20

>  > Perhaps just check the silly things - do the directories exist, and do
>  > you have access?
>=20
> Here is a (very brief) howto:
>=20
> 1) you need to create the right directories. Run this command:
>=20
>      ldbsearch -H $PREFIX/private/sam.ldb objectClass=3DgroupPolicyContai=
ner gPCFileSysPath
>=20
>   That will point you at a UNC path with a GUID in it. You can edit
>   that path using ldbedit, or create a share to match that path.=20
>=20
>   Within that path you need to create subdirectories called Machine
>   and User.=20
>=20
> 2) use gpmc.msc and edit your policies, connected as administrator
>=20
> 3) use chmod -R to make the files and directories in that share
>    accessible for read by everyone. This shouldn't be necessary, and I
>    have a pending patch to fix this, but for now you'll need to do it
>    by hand.
>=20
> 4) login from a client, and see that the policies are obeyed. I
>    sometimes find it takes 2 logins before they apply on a client. I
>    don't know why yet.
>=20
> Cheers, Tridge
>=20
--=20
Andrew Bartlett                                http://samba.org/~abartlet/
Authentication Developer, Samba Team           http://samba.org
Samba Developer, Red Hat Inc.                  http://redhat.com


--=-QLvlyoHENsWt5KMsLywA
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQBGibnkz4A8Wyi0NrsRAkb1AKCSovU0wsG18JjXuHe4s04SgP5aFgCgnaJp
qmH/AmTZHhGznKdlm/l/XWQ=
=k1Lq
-----END PGP SIGNATURE-----

--=-QLvlyoHENsWt5KMsLywA--

        

j4-OIrfa