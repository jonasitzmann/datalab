From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 00:57:57 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5Q4vvL9005867
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 00:57:57 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 4923716381E
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 04:57:54 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no 
	version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id C45E3162AD6;
	Tue, 26 Jun 2007 04:57:24 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 684F22F030;
	Mon, 25 Jun 2007 23:57:24 -0500 (CDT)
Message-ID: <46809CB4.4050607@samba.org>
Date: Mon, 25 Jun 2007 23:57:24 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Kai Blin <kai@samba.org>
References: <200706260004.03003.kai@samba.org>
In-Reply-To: <200706260004.03003.kai@samba.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Samba technical mailing list <samba-technical@samba.org>
Subject: Re: [Patch]Handle git/git-svn checkouts in mkversion.sh
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

Kai,

> Hi folks,
> 
> Now that Jerry set up a git repository, I've fixed mkversion.sh 
> to give a  useful revision number. As the full sha-1 committish is
> a bit long, I've  settled for the first eight hex numbers of
> the committish.
> 
> Comments?

+1 from me.    I show the following revision in my local branch

  Samba("3.0.27pre1-GIT-0bd4d99e-[SVN-SAMBA_3_0@23601]")

I have noticed that mkversion.sh is newer in SAMBA_4_0 so
I'll merge it across nice you check this in.





cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGgJy0IR7qMdg1EfYRAiZTAJoDdzVF8e+XZSpV9FzMh+4bLrKzqQCgxFRY
0zmloBDsCjNHwPE7/fJEsrg=
=Y93u
-----END PGP SIGNATURE-----

      

>tyem23sd5ct5nG