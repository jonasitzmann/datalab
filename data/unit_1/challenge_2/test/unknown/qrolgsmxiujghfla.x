From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 09:28:21 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QDSJL9011287
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 09:28:19 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 53D0516381A
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 13:28:16 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 18B30162BE2;
	Tue, 26 Jun 2007 13:27:55 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id C288D2F20E;
	Tue, 26 Jun 2007 08:27:54 -0500 (CDT)
Message-ID: <4681145A.9090409@samba.org>
Date: Tue, 26 Jun 2007 08:27:54 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: aland@ox.org
References: <467EF15A.4080701@samba.org>	<1182729701.2895.8.camel@localhost.localdomain>	<467FCAE7.3050306@samba.org>	<1182780800.2895.22.camel@localhost.localdomain>	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
	<467FDB15.5060903@ox.org> <467FE2A8.70602@samba.org>
	<4680E017.1020307@ox.org>
In-Reply-To: <4680E017.1020307@ox.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: simo <idra@samba.org>, samba-technical@samba.org
Subject: Re: Short HOWTO on using git for Samba development
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

Alan DeKok wrote:
> Gerald (Jerry) Carter wrote:
>> I assume that mercurial has something similar but a
>> quick search doesn't turn anything up.  Have you got
>> any pointers for me?
> 
>   There's a tutorial:
> 
> http://www.selenic.com/mercurial/wiki/index.cgi/SubversionToMercurialSync

yeah.  This is the same thing as the script I wrote for bzr:
  http://people.samba.org/bzr/jerry/slag/scripts/bzr-svnmirror

>   For migration, there's Tailor:
> 
> http://wiki.darcs.net/index.html/Tailor
> 
> Which looks like it can handle conversions between all 
> version control systems.

I've seen but it not tried it yet.  Any comments on how well
it works?





cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGgRRaIR7qMdg1EfYRAivZAKCyB0CYe6GZTOYqVOE+nt1a7+ECUgCg5mh6
1iECgAN1Rfie8vP0tcw0swk=
=RWHt
-----END PGP SIGNATURE-----

              

 eDo5 5