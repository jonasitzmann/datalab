From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun  7 09:37:51 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57DbohB002756
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 09:37:50 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 6DBFC16388E
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  7 Jun 2007 13:37:44 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_BLARS_RBL,RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL,
	UPPERCASE_25_50 autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 04B6B162C26;
	Thu,  7 Jun 2007 13:35:28 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 874252F1FD;
	Thu,  7 Jun 2007 08:35:27 -0500 (CDT)
Message-ID: <466809A2.9040301@samba.org>
Date: Thu, 07 Jun 2007 08:35:30 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Bjoern Jacke <bjoern@j3e.de>
References: <E1HwGLs-0002Wf-P5@intern.SerNet.DE>	<559A7BEA-9DC1-4F0B-B4DD-FFD2E06E0159@mls.ee>	<E1HwHe1-0007jR-9X@intern.SerNet.DE>
	<466806F6.9090009@samba.org>
In-Reply-To: <466806F6.9090009@samba.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@lists.samba.org
Subject: Re: autogen.sh fix for non-GNU systems
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Gerald (Jerry) Carter wrote:

> OK.  That's enough to convince me.  it's a 
> safe patch regardless.

Patch applied to SAMBA_3_0 and SAMBA_3_0_26.




jerry
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGaAmiIR7qMdg1EfYRAhxmAJ0ewefNDsb5fcVIJa4xD/OoqUkMFQCeO9Ao
dbi2NZCyg1OhmpLpJLkgFJQ=
=eKB3
-----END PGP SIGNATURE-----

                

<z/A6>UwtBt 