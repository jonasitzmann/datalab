From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 25 23:15:24 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5Q3FML9004939
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 23:15:22 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A3A4816388E
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 03:15:19 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 14C19162AD9;
	Tue, 26 Jun 2007 03:14:26 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 359762F030;
	Mon, 25 Jun 2007 22:14:22 -0500 (CDT)
Message-ID: <4680848D.3050606@samba.org>
Date: Mon, 25 Jun 2007 22:14:21 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: samba-technical@samba.org
References: <467EF15A.4080701@samba.org>	<1182729701.2895.8.camel@localhost.localdomain>	<467FCAE7.3050306@samba.org>	<1182780800.2895.22.camel@localhost.localdomain>	<467FD38A.6020802@samba.org>	<1182782825.2895.28.camel@localhost.localdomain>	<467FDB15.5060903@ox.org>
	<467FE2A8.70602@samba.org>	<20070625201245.GA17946@rhonwyn.vernstok.nl>
	<468032B6.6010404@samba.org>
In-Reply-To: <468032B6.6010404@samba.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Jelmer Vernooij <jelmer@samba.org>, simo <idra@samba.org>
Subject: Re: Comparision of Git & Bzr [was Re: Short HOWTO on using git for
 Samba development]
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

In answer to my own questions....

Gerald (Jerry) Carter wrote:

> Questions about bzr are
>
> * Will svn2bzr.py actually work on the Samba sv repo now ?
> * What would the resulting size be?

svn2bzr.py has gone missing from so I cannot make any
more progress on this one.  I remember some discussion
on the bzr ml so I'll try to fig it up from there.

> * What is the status of bzr repositories and cheap branching?

After reading http://bazaar-vcs.org/SharedRepositoryTutorial,
it appears that bzr repositories are designed as a space saver
when branches share portions of revision history.  But you still
have to checkout each branch at a time unlike git-clone
which pulls all branches (or at least their history) at one time.

The bzrtools "switch" command allows to swap between lightweight
checkouts (think a cvs or svn checkout) created by 'bzr branch'
But this is basically a shortcut for 'cd new_branch && bzr update"
the way I understand it.  No real new functionality.






cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGgISNIR7qMdg1EfYRAikRAJ9dnLQ/OwsVv0vb+H3cQmRm0ypkPgCfaSo3
sOW949mUwa9alhKYrW0aAKw=
=9huP
-----END PGP SIGNATURE-----

      

-Yu9.1AtDa TtT