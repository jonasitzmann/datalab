From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 27 15:18:12 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RJICL9031187
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 27 Jun 2007 15:18:12 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D3FC6163922
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 27 Jun 2007 19:18:08 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 396B0162BE3;
	Wed, 27 Jun 2007 19:17:29 +0000 (GMT)
Received: from [127.0.0.1] (drizzt.plainjoe.org [192.168.1.84])
	by mail.plainjoe.org (Postfix) with ESMTP id F21722F1AE;
	Wed, 27 Jun 2007 14:17:28 -0500 (CDT)
Message-ID: <4682B7C8.3000604@samba.org>
Date: Wed, 27 Jun 2007 14:17:28 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Jim McDonough <jmcd@samba.org>
References: <517eb05c0706220715n5c32f802g31e0b381371fe721@mail.gmail.com>
In-Reply-To: <517eb05c0706220715n5c32f802g31e0b381371fe721@mail.gmail.com>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@samba.org
Subject: Re: winbindd 32/64 offset issues
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

Jim McDonough wrote:
> Jerry,
> Despite your comments about testing with 32bit libs on 64bit platforms
> in the winbindd_request struct in winbindd_nss.h, it seems we're out of
> sync, and the following comment may be part of the issue:
> 
> nsswitch/winbindd_nss.h:40
> -------
> /* Have to deal with time_t being 4 or 8 bytes due to structure alignment.
>    On a 64bit Linux box, we have to support a constant structure size
>    between /lib/libnss_winbind.so.2 and /li64/libnss_winbind.so.2.
>    The easiest way to do this is to always use 8byte values for time_t. */
> ------
> 
> I can say that I've recently found this to not be true.  
...
> The only solution I found was the old method that hasn't been updated in
> the code in a while...the padding member of the huge data union needs to
> be set to that 8-byte boundary, ...

> Or we could just start up that marshalling discussion again :-)

We have to do the marshalling to maintain this long term.

> In any case, before I check anything in, can someone run 
> any quick tests of your various binaries on 64-bit platforms
> using 32-bit winbind libs?

The test is simple.  Do one build normally and then build wbinfo
from a second tree using -m32 and all the various calls from
the 32bit client should work against the 64bit winbindd.





jerry
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGgrfIIR7qMdg1EfYRAv5xAKCB0AQK3jABPgXlgyzgH/aB5DAtQQCfbZhp
9Cgta3N7sp0GXC0sGiS1wb4=
=z70u
-----END PGP SIGNATURE-----

                 

s-kv/=Uj