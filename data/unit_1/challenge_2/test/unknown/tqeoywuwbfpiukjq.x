From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun 24 09:07:45 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5OD7iL9012735
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 24 Jun 2007 09:07:44 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 570BD162C34
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 24 Jun 2007 13:07:41 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=3.8 tests=AWL,BAYES_00,
	DATE_IN_PAST_12_24,FORGED_RCVD_HELO,RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,
	SPF_NEUTRAL,UPPERCASE_25_50 autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 913B8162AD0;
	Sun, 24 Jun 2007 13:07:14 +0000 (GMT)
Received: from [127.0.0.1] (drizzt.plainjoe.org [192.168.1.84])
	by mail.plainjoe.org (Postfix) with ESMTP id 3C4192F02C;
	Sun, 24 Jun 2007 08:07:14 -0500 (CDT)
Message-ID: <467D9379.9030000@samba.org>
Date: Sat, 23 Jun 2007 16:41:13 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Jeremy Allison <jra@samba.org>
References: <467BE8BD.2000704@infotec.com>
	<467BEE9C.10200@samba.org>	<467C5D3D.8030903@infotec.com>
	<467C652E.9050409@infotec.com>	<467C6786.4090401@infotec.com>
	<20070623005748.GG11851@samba1>
In-Reply-To: <20070623005748.GG11851@samba1>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Kurt Pfeifle <kurt.pfeifle@infotec.com>, Guenther Deschner <gd@samba.org>,
   samba-technical@lists.samba.org
Subject: Re: [SOLVED!] Joining AD domain fails: "Failed to
 set	servicePrincipalNames. [...] Type or value exists"
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

Jeremy Allison wrote:

> Hmmmm. Could we have detected that before hand and reported the
> error ?

Yes.  I'll fix it next week and add support for alternate
netbios names.





-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGfZN5IR7qMdg1EfYRAv2wAJ9yIiDsQ7cJYywyWRs/ZrHMq2XyAQCgk/Ev
PvBYMN4abj97UEaR15a/vAw=
=rMTl
-----END PGP SIGNATURE-----

           

o)e/