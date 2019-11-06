From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 25 18:09:11 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PM99L9002173
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 18:09:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id F3CA516385E
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 22:09:06 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 74957162ABE;
	Mon, 25 Jun 2007 22:08:39 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 09BE22F030;
	Mon, 25 Jun 2007 17:08:38 -0500 (CDT)
Message-ID: <46803CE6.8010807@samba.org>
Date: Mon, 25 Jun 2007 17:08:38 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Volker.Lendecke@SerNet.DE
References: <20070625144059.E8F1F162AC1@lists.samba.org>
	<E1I2q9s-0000Fr-PH@intern.SerNet.DE> <467FE0CE.1090609@samba.org>
	<E1I2qil-0008RK-6i@intern.SerNet.DE>
	<1182786615.2895.31.camel@localhost.localdomain>
	<467FE6FA.60905@samba.org> <E1I2rG5-0006rf-Kh@intern.SerNet.DE>
In-Reply-To: <E1I2rG5-0006rf-Kh@intern.SerNet.DE>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: samba-technical@lists.samba.org
Subject: Re: svn commit: samba r23597 - in	branches/SAMBA_3_0/source/script:
 .
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

Volker Lendecke wrote:

> Is there a technical way to limit only new code to 80
> columns?

We could add a pre-commit hook to svn.  Or just have
the build farm run the 80 column test and consider any
infractions a build failure :-)

> My main reason for the 80 colums is not that I can not
> afford a large screen, it is that it makes it hard to write
> deeply nested control structures. More than 2 levels at most
> is confusing 99% of the time. There definitely are necessary
> exceptions (I'm deep in open_file_ntcreate() again), but
> these should be avoid even at very high cost.

Yup.  +1.  It's not a screen size thing as much as it is a
visual indications that things are going wrong if you
are too many levels deep.



cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGgDzmIR7qMdg1EfYRAquTAKDoxL1GSAJ9pTu2mDgSPjJjx6XI1QCggKF/
WreF2xWNblYUI1qZVjMFvtE=
=4MIy
-----END PGP SIGNATURE-----

              

lu
:k:e
P"d4pwfi