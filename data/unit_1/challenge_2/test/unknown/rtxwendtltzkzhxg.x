From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  1 08:36:27 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51CaRhB009746
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 1 Jun 2007 08:36:27 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C3C9E163983
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  1 Jun 2007 12:36:21 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id F351A162BD9;
	Fri,  1 Jun 2007 12:35:32 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1Hu6Ls-0008CK-Hh; Fri, 01 Jun 2007 14:35:32 +0200
Received: by intern.SerNet.DE
	id 1Hu6Ls-0007n8-9D; Fri, 01 Jun 2007 14:35:32 +0200
Received: by intern.SerNet.DE
	id 1Hu6Li-0007kR-16; Fri, 01 Jun 2007 14:35:32 +0200
Received: from vlendec by delphin.sernet.de with local (Exim 4.51)
	id 1Hu6On-0001Iy-8R; Fri, 01 Jun 2007 14:38:33 +0200
Date: Fri, 1 Jun 2007 14:38:33 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: tridge@samba.org
References: <465F3E56.8080906@samba.org> <18015.22364.393981.954859@samba.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="s9fJI615cBHmzTOP"
Content-Disposition: inline
In-Reply-To: <18015.22364.393981.954859@samba.org>
User-Agent: Mutt/1.5.9i
Message-Id: <E1Hu6Ls-0007n8-9D@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>, samba-technical@samba.org
Subject: Re: Cutoff for major changes to 3.0.26 is scheduled for Monday,
	June 4
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Volker.Lendecke@SerNet.DE
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


--s9fJI615cBHmzTOP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 01, 2007 at 09:16:44AM +1000, tridge@samba.org wrote:
> I have two small sets of patches to go in. One is the tiny patch to
> enable disabling of ADS. The other is a patch to re-enable ldb for

I'll take that one.

I have the code connecting to ctdb still in my queue. No
major ones for the normal non-clustered code paths, the code
base is now in a state where that can be plugged in quite
cleanly. This is very close, but Linuxtag is more busy for
me than expected.

Volker

--s9fJI615cBHmzTOP
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.2 (GNU/Linux)

iD8DBQFGYBNIpZr5CauZH5wRAv37AKDYGEEAud7XyGTbztKUi6SuYa4WIgCfQlFS
M1Bu8FLcn6s0qlFDQNgGQBI=
=M4BC
-----END PGP SIGNATURE-----

--s9fJI615cBHmzTOP--

 

OVs�t