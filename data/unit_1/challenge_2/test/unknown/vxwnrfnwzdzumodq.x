From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 21:19:47 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l631JlL9021800
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 21:19:47 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 1FAEF163863
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 01:19:43 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id AAF7C162AC2;
	Tue,  3 Jul 2007 01:18:44 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 28CFB2F1FD;
	Mon,  2 Jul 2007 20:18:44 -0500 (CDT)
Message-ID: <4689A3F3.8020609@samba.org>
Date: Mon, 02 Jul 2007 20:18:43 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Jeremy Allison <jra@samba.org>
References: <11833179421029-git-send-email-jerry@samba.org>
	<20070703003348.GG21342@samba1>
In-Reply-To: <20070703003348.GG21342@samba1>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: gd@samba.org, idra@samba.org, samba-technical@samba.org
Subject: Re: [PATCH] Updated: Implement simple means of supporting
 pam_winbind UPN logins
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
> On Sun, Jul 01, 2007 at 02:25:42PM -0500, jerry@samba.org wrote:
>> Here's an updated version of the patch that corrects a few typos and 
>> minor bugs (e.g. incorrect check of return from strchr(name, '@')).
>>
>> PS: Work is in my 3.0/uplogon branch at git://git.samba.org/jerry/samba-3-0
> 
> Did you get enough consensus on this ? Looks like a good 
> feature for 3.0.26 :-).

Not yet.  Waiting on Guenther's review.  We've both had
competing implementation for this feature.  I'd like ot hear
what he has to say since he was kind enough to do the same
for me.




cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGiaPzIR7qMdg1EfYRArfyAKDLyvKaWud9vvIHfl+rMoJu2NVMxgCg8i76
A5yaJX5rWLaAEP2us2dgvvM=
=ms/f
-----END PGP SIGNATURE-----

            

hm1a2