From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jul  1 16:40:51 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61KeoL9005084
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 16:40:50 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 65F73163889
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  1 Jul 2007 20:40:46 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 79BA8162B72;
	Sun,  1 Jul 2007 20:40:08 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1I56DH-0005iI-Lb; Sun, 01 Jul 2007 22:40:07 +0200
Received: by intern.SerNet.DE
	id 1I56DH-0004UM-EI; Sun, 01 Jul 2007 22:40:07 +0200
Received: by intern.SerNet.DE
	id 1I56DH-0004UI-08; Sun, 01 Jul 2007 22:40:07 +0200
Date: Sun, 1 Jul 2007 22:39:01 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: jerry@samba.org
References: <11833179421029-git-send-email-jerry@samba.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
In-Reply-To: <11833179421029-git-send-email-jerry@samba.org>
User-Agent: Mutt/1.5.13 (2006-08-11)
Message-Id: <E1I56DH-0004UM-EI@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@samba.org
Subject: Re: [PATCH] Updated: Implement simple means of supporting
	pam_winbind UPN logins
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


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jul 01, 2007 at 02:25:42PM -0500, jerry@samba.org wrote:

> PS: Work is in my 3.0/uplogon branch at git://git.samba.org/jerry/samba-3-0

Hmmmm. How do I get an account there?

I've got smbd under 50k bss from 70k where it is now, using
talloc_tos() quite a bit. Looking at the rest I think I
could get it down to maybe 35k. I think most of them are not
really controversial, I've put them in a local git repo
first because I want some ack on the whole talloc_stack idea
overall.

Volker

--qDbXVdCdHGoSgWSk
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGiBDlpZr5CauZH5wRAi2zAKCEfV8VlUzmoEXbsxjSVSOewCU9HQCeIHGJ
eDyt1+DbKaHxl9uLpu8WSho=
=b14j
-----END PGP SIGNATURE-----

--qDbXVdCdHGoSgWSk--

          

dSGsEc6+nihpw