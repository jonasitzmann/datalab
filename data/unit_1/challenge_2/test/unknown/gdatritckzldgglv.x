From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jul  3 16:01:07 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63K17L9000732
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 16:01:07 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 087A316382E
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 20:01:03 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 3C412162AC0;
	Tue,  3 Jul 2007 20:00:17 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id A62492F272;
	Tue,  3 Jul 2007 15:00:16 -0500 (CDT)
Message-ID: <468AAAD0.5010002@samba.org>
Date: Tue, 03 Jul 2007 15:00:16 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Julien Cristau <jcristau@debian.org>
References: <20070618105242.GA18651@patate.is-a-geek.org>
In-Reply-To: <20070618105242.GA18651@patate.is-a-geek.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: samba-technical@lists.samba.org
Subject: Re: [patch] hide libsmbclient's private symbols
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

Julien Cristau wrote:
> Hi,
> 
> the following patch (against samba 3.0.25a) makes the build system use a
> version script if it detects a recent enough gnu ld.  This makes
> libsmbclient export about 50 symbols instead of about 4000, which
> reduces the risk of symbols clashes due to private symbols which aren't
> part of the API and have no business being exported.  The detection is
> probably not optimal, but I think it's safe (support for version scripts
> seems to have been added in 2002, before gnu ld 2.12).  Feedback
> welcome.

Merged the agreed upon version of patch to SAMBA_3_0 and SAMBA_3_0_26.





jerry
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGiqrQIR7qMdg1EfYRAmuGAKDOvpt4cAPCTBD4ossQkNMhWa7hNACg4iqn
GvagID7XwWkoxT9K3oUulpI=
=3Vng
-----END PGP SIGNATURE-----



MX /,i
aet a