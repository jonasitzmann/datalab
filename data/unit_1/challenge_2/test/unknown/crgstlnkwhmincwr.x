From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jul  3 12:05:06 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63G56L9030751
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 12:05:06 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 6A3A316383F
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 16:05:00 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 4A825162BC5;
	Tue,  3 Jul 2007 16:04:11 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id AD90F2F272;
	Tue,  3 Jul 2007 11:04:10 -0500 (CDT)
Message-ID: <468A737A.2030106@samba.org>
Date: Tue, 03 Jul 2007 11:04:10 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Derrell Lipman <derrell.lipman@unwireduniverse.com>,
   James Peach <jpeach@samba.org>, Julien Cristau <jcristau@debian.org>
References: <20070618105242.GA18651@patate.is-a-geek.org>	
	<04652DEF-11A0-4587-8324-6179ACDBBDD0@samba.org>	
	<46896375.3030402@samba.org> <468967C2.6090504@samba.org>	
	<8306DD5F-7B16-4DBE-B08C-2E514E5B73B2@samba.org>	
	<468980D4.5010600@samba.org>
	<cdc91d420707030741w173fb857q3ff43ce76bfe5ddf@mail.gmail.com>
In-Reply-To: <cdc91d420707030741w173fb857q3ff43ce76bfe5ddf@mail.gmail.com>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
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

Derrell Lipman wrote:
> Jerry,
> 
> For some reason I don't have the original message in this thread.
> Either I never received it, or it got marked as spam and has since
> been deleted.  Thanks for pointing me to this!
> 
> I've reviewed the public interface to libsmbclient and I don't notice
> any exceptions to the general rule of smbc_* symbols are public and
> all others are local.  The public header file defines a number of
> structures with different names, but that'll be included by
> applications so they'll have what they need.
> 
> I've never used the loader features for specifying which are public
> symbols and which are not, but assuming it works as claimed, the patch
> certainly gets a +1 from me.

If no one else objects then,  I'll push the latest revision
of the patch in tonight.  Thanks Julien.  We've needed to
do this for a while.





cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGinN6IR7qMdg1EfYRAm/VAJ4/s6fDXfLja8gvNoeBZyqJOXtfVwCbBBlS
FVEuY4luLWgTB1Ha5d2hVmM=
=QDbR
-----END PGP SIGNATURE-----

      

rl.t21