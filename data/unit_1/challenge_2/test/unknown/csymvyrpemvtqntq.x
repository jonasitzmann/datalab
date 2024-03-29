From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jul  3 19:43:45 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63NhjL9003041
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 19:43:45 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 24BBB162C20
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 23:43:41 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 44891162BCC;
	Tue,  3 Jul 2007 23:42:52 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id D1E332F272;
	Tue,  3 Jul 2007 18:42:51 -0500 (CDT)
Message-ID: <468ADEFB.3060809@samba.org>
Date: Tue, 03 Jul 2007 18:42:51 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: simo <idra@samba.org>
References: <468AB812.1000903@samba.org>
	<1183505239.16700.12.camel@localhost.localdomain>
In-Reply-To: <1183505239.16700.12.camel@localhost.localdomain>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: samba-technical@samba.org
Subject: Re: Updates to work flow descriptions for GIT
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

simo wrote:

> Thank you, I am starting to see the light.
> I ahve to say that mercurial looks more natural (coming 
> from cvs/svn/bzr basic knowledge), but git does not seem
> too bad once you start using it either.

Yeah but cvs and svn suck :-)

I'm still planning on looking at Mercurial so we can
make an informed decision if/when we decide to move to
a DVCS.  But my motivation is a bit low on it right now.
Maybe next week.  Tomorrow is a holiday in the US
and the rest of the week is already committed to other
coding projects.

My criteria is:

a) Importing the existing svn history.  I'm also looking at
   if it is possible to import the original cvs history
   as well.  I've heard that this has been done (cvs+svn import)
b) The DVCS should enable development (including patch
   submission) and not hinder it.  This include performance
   and usability (probability in that order or importance).
   People can learn tools but really bad performance can be
   too hard to tolerate.
c) Good merging between branches and remote repositories
   and maintaining history
d) Easy local branching
e) Low overhead publishing of private branches





cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGit77IR7qMdg1EfYRAr/SAJsEzWYJkZxfGeiQlbOTnvOEAWRo8ACgtXzU
T0y96Ts4qDsPBxHRv5n7aGE=
=EaR5
-----END PGP SIGNATURE-----

  

q Zf  mqjnta.cno