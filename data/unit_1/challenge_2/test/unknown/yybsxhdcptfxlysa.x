From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 20 22:46:15 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L2kFL9017731
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 22:46:15 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id F214D16383F
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 02:46:12 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from localhost.localdomain (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 3698C162AF4;
	Thu, 21 Jun 2007 02:45:26 +0000 (GMT)
From: Andrew Bartlett <abartlet@samba.org>
To: Huang Xiong <huangxiong@uit.com.cn>
In-Reply-To: <200706211023.10169.huangxiong@uit.com.cn>
References: <200706211023.10169.huangxiong@uit.com.cn>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="=-sQEvDtEmzuLjT0bfFIHc"
Date: Thu, 21 Jun 2007 12:45:25 +1000
Message-Id: <1182393925.2972.18.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.6.3 (2.6.3-2.fc5) 
Cc: samba-technical@lists.samba.org
Subject: Re: Network issue in RHCS/GFS environment
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


--=-sQEvDtEmzuLjT0bfFIHc
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu, 2007-06-21 at 10:23 +0800, Huang Xiong wrote:
> Hello folks,
>=20
> This thread is long, please pay more patients for your kindly reading.
>=20
> 1. Set up Storage-Cluster.

> 2.Create lv and mount

> 3. Configure the samba on node1 and node2, export /share as SMB share=20
> named "stress".

Are you using the new samba-ctdb?  If not, then you can expect pain - it
is just not supported to have a live samba exporting the same directory
via two cluster nodes, unless you run the new code.   See
ctdb.samba.org.

Andrew Bartlett

--=20
Andrew Bartlett                                http://samba.org/~abartlet/
Authentication Developer, Samba Team           http://samba.org
Samba Developer, Red Hat Inc.                  http://redhat.com

--=-sQEvDtEmzuLjT0bfFIHc
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQBGeeZFz4A8Wyi0NrsRAtovAJ9jCpXItNYSgUA+ZIexYqEpE7p0DgCffJbC
xVivmJ8t8MZUNcRS8czjeJI=
=ErnQ
-----END PGP SIGNATURE-----

--=-sQEvDtEmzuLjT0bfFIHc--

      

budoaclrEyn
 P