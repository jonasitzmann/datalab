From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 18:49:31 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62MnVL9019987
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 18:49:31 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id BD87F16388F
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  2 Jul 2007 22:49:27 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 8532E162ADF;
	Mon,  2 Jul 2007 22:48:53 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id E8ACD2F1FD;
	Mon,  2 Jul 2007 17:48:52 -0500 (CDT)
Message-ID: <468980D4.5010600@samba.org>
Date: Mon, 02 Jul 2007 17:48:52 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: James Peach <jpeach@samba.org>
References: <20070618105242.GA18651@patate.is-a-geek.org>	<04652DEF-11A0-4587-8324-6179ACDBBDD0@samba.org>
	<46896375.3030402@samba.org> <468967C2.6090504@samba.org>
	<8306DD5F-7B16-4DBE-B08C-2E514E5B73B2@samba.org>
In-Reply-To: <8306DD5F-7B16-4DBE-B08C-2E514E5B73B2@samba.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@lists.samba.org, Julien Cristau <jcristau@debian.org>
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

James Peach wrote:

> I just realized why this won't work.  On some platforms
> the @SONAMEFLAG@ just becomes '#' and comments out the remainder
> of the line.
> 
>> What platforms does this happen on? SHLD_MODULE uses 
>> exactly the same trick and appears to work OK in the
>> build farm.

I've seen it pop up before and it is confusing in how
it break.  Unresolved symbols.  I cannot remember the
details right now.  AIX maybe when build pam_winbind.





cheers, jerry
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGiYDUIR7qMdg1EfYRAmQsAKCrgZyWCzVzYLgGzr938laMZClbngCfVIG3
n4rx1sRDOQMv/KBAdsBVemo=
=IHwz
-----END PGP SIGNATURE-----

                   

 -g awtnr06 